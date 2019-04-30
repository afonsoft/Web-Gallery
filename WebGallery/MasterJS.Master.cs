using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebGallery
{
    public partial class MasterJS : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "USER_LAT", "gtag('set', { 'Latitude': '" + Latitude.Value + "' });", true);
            ScriptManager.RegisterStartupScript(this, this.GetType(), "USER_LONG", "gtag('set', { 'Longitude': '" + Longitude.Value + "' });", true);
        }

        protected void ScriptManagerMain_AsyncPostBackError(object sender, AsyncPostBackErrorEventArgs e)
        {
            ScriptManagerMain.AsyncPostBackErrorMessage = e.Exception.Message;
        }
    }
}