using System;
using System.Web.UI;

namespace WebGallery
{
    public partial class MasterMenuWithMasterJS : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Enviar o usuário logado se necessário
            ScriptManager.RegisterStartupScript(this, this.GetType(), "USER_ID", "gtag('set', { 'user_id': 'anonymous' });", true);
        }
    }
}