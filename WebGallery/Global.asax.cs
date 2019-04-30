using System;
using System.Globalization;
using System.Net;
using System.Threading;
using System.Web;
using System.Web.UI;

namespace WebGallery
{
    public class Global : HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {
            ServicePointManager.ServerCertificateValidationCallback = delegate { return true; };
            ServicePointManager.UseNagleAlgorithm = true;
            ServicePointManager.Expect100Continue = true;
            ServicePointManager.CheckCertificateRevocationList = true;
            ServicePointManager.MaxServicePointIdleTime = 360000;
            ServicePointManager.DefaultConnectionLimit = 360000;
			System.Web.Optimization.BundleTable.EnableOptimizations = true;

            //CDN
            ScriptManager.ScriptResourceMapping.AddDefinition("jQuery", new ScriptResourceDefinition
            {
                Path = "~/scripts/jquery-3.3.1.min.js",
                DebugPath = "~/scripts/jquery-3.3.1.js",
                CdnPath = "https://code.jquery.com/jquery-3.3.1.min.js",
                CdnDebugPath = "https://code.jquery.com/jquery-3.3.1.js",
                CdnSupportsSecureConnection = true,
                LoadSuccessExpression = "window.jQuery"
            });

            ScriptManager.ScriptResourceMapping.AddDefinition("bootstrap", new ScriptResourceDefinition
            {
                Path = "~/Scripts/bootstrap.min.js",
                DebugPath = "~/Scripts/bootstrap.js",
                CdnPath = "https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js",
                CdnDebugPath = "https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js",
                CdnSupportsSecureConnection = true,
                LoadSuccessExpression = "jQuery.fn.modal"
            });

            ScriptManager.ScriptResourceMapping.AddDefinition("jQuery.ui.combined", new ScriptResourceDefinition
            {
                Path = "~/scripts/jquery-ui-1.12.1.min.js",
                DebugPath = "~/scripts/jquery-ui-1.12.1.js",
                CdnPath = "https://code.jquery.com/ui/1.12.1/jquery-ui.min.js",
                CdnDebugPath = "https://code.jquery.com/ui/1.12.1/jquery-ui.js",
                CdnSupportsSecureConnection = true,
                LoadSuccessExpression = "window.jQuery.ui"
            });
        }

        protected void Application_AcquireRequestState(object sender, EventArgs e)
        {
            CultureInfo culture = new CultureInfo("pt");
            try
            {
                string langName = Request.QueryString["Lang"];
                HttpCookie cookie = Request.Cookies["CultureInfo"];

                if (cookie?.Value != null && (string.IsNullOrEmpty(langName) || langName == cookie.Value))
                {
                    try { culture = new CultureInfo(cookie.Value); }
                    catch { culture = new CultureInfo("pt"); }

                    Thread.CurrentThread.CurrentUICulture = culture;
                    Thread.CurrentThread.CurrentCulture = CultureInfo.CreateSpecificCulture(culture.Name);
                }
                else
                {
                    if (string.IsNullOrEmpty(langName))
                    {
                        langName = "pt-BR";
                        if (HttpContext.Current.Request.UserLanguages != null &&
                            HttpContext.Current.Request.UserLanguages.Length != 0 &&
                            HttpContext.Current.Request.UserLanguages[0].Length > 2)
                        {
                            langName = HttpContext.Current.Request.UserLanguages[0].Substring(0, 2);
                        }
                    }

                    if (langName == "us") langName = "en"; //us igual a En
                    if (langName == "br") langName = "pt"; //br igual a pt

                    //Se nao exsite a traducao, deixar em pt
                    try { culture = new CultureInfo(langName); }
                    catch { culture = new CultureInfo("pt"); }

                    cookie = new HttpCookie("CultureInfo", langName) {Expires = DateTime.Now.AddYears(1)};
                    Response.SetCookie(cookie);

                }
            }
            catch (Exception ex)
            {
                //Ignore o erro e deixar o PT-BR como default
                Afonsoft.Logger.Error(ex);
            }

            Thread.CurrentThread.CurrentUICulture = culture;
            Thread.CurrentThread.CurrentCulture = CultureInfo.CreateSpecificCulture(culture.Name);
        }

        protected void Application_Error(object sender, EventArgs e)
        {
            try
            {
                try
                {
                    // Remove any special filtering especially GZip filtering
                    if (HttpContext.Current != null)
                    {
                        if (HttpContext.Current.Response.Filter.GetType() == typeof(System.IO.Compression.GZipStream))
                            HttpContext.Current.Response.Filter = null; //Clean GZip Encode Page
                    }
                }
                catch
                {
                    // ignored
                }

                Exception ex = Server.GetLastError();

                if (ex != null)
                {
                    if (ex is ThreadAbortException)
                        return;

                    if (ex is HttpUnhandledException)
                        return;

                    if (ex is HttpException)
                        if (ex.Message.Contains("NoCatch") || ex.Message.Contains("maxUrlLength"))
                            return;

                    string strBody = ex.Message + Environment.NewLine;

                    if (HttpContext.Current != null)
                    {
                        if (HttpContext.Current.Session != null && HttpContext.Current.Session["idUsuario"] != null)
                        {
                            strBody += "idUsuario : " + Convert.ToInt32(HttpContext.Current.Session["idUsuario"]) + Environment.NewLine;
                        }

                        strBody = "URL: " + HttpContext.Current.Request.Url + Environment.NewLine;
                        strBody += "RawUrl: " + HttpContext.Current.Request.RawUrl + Environment.NewLine;
                        strBody += "QueryString: " + HttpContext.Current.Request.QueryString + Environment.NewLine;
                        strBody += "User IP: " + HttpContext.Current.Request.ServerVariables["REMOTE_ADDR"] + Environment.NewLine;
                        strBody += "Date/Time: " + DateTime.Now.ToLongDateString() + " " + DateTime.Now.ToShortTimeString() + Environment.NewLine;
                        strBody += "User Agent: " + HttpContext.Current.Request.UserAgent + Environment.NewLine;
                        if (HttpContext.Current.Request.UrlReferrer != null)
                            strBody += "Referrer: " + HttpContext.Current.Request.UrlReferrer + Environment.NewLine;

                        strBody += ":: AllKeys :: " + Environment.NewLine;
                        foreach (string key in HttpContext.Current.Request.Form.AllKeys)
                        {
                            if (key != "__VIEWSTATE")
                                strBody += key + ":" + Request.Form[key] + Environment.NewLine;
                        }

                        strBody += ":: ServerVariables ::" + Environment.NewLine;
                        foreach (string thing in HttpContext.Current.Request.ServerVariables)
                        {
                            if (!string.IsNullOrEmpty(HttpContext.Current.Request.ServerVariables[thing]))
                            {
                                strBody += thing + ": " + HttpContext.Current.Request.ServerVariables[thing] + Environment.NewLine;
                            }
                        }
                    }
                    try
                    {
                        Afonsoft.Logger.Info(strBody);
                        Afonsoft.Logger.Error(ex);
                    }
                    catch (Exception)
                    {
                        // ignored
                    }
                }
            }
            catch (Exception)
            {
                // ignored
            }
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {
        }

        protected void Session_Start(object sender, EventArgs e)
        {
        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {
        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}
