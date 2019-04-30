using WebGallery.Model;
using System;
using System.Collections.Generic;
using System.Web.UI;
using Afonsoft.Web.Library;

namespace WebGallery.Pages
{
    public partial class WebForm1 : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
            if (!IsPostBack)
            {
                //GridView1.DataSource = GetDataSouce();
                //GridView1.DataBind();
                
                
            }
        }

        //private List<DefaultModel> GetDataSouce()
        //{
        //    List<DefaultModel> listDefault = new List<DefaultModel>();
        //    for (int i = 1; i <= 200; i++)
        //        listDefault.Add(new DefaultModel() { Text = "Usuário " + i, Values = i.ToString() });
        //    return listDefault;
        //}

        //protected void GridView1_PageIndexChanging(object sender, System.Web.UI.WebControls.GridViewPageEventArgs e)
        //{
        //    GridView1.DataSource = GetDataSouce();
        //    GridView1.PageIndex = e.NewPageIndex;
        //    GridView1.DataBind();
        //}
    }

    
}