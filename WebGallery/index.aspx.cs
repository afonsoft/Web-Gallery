﻿using System;
using System.Web.UI;
using Afonsoft.Web.Library;
using WebGallery.Controller;

namespace WebGallery
{
    public partial class index : PageBase
    {

        /* ################## Utilização do Resources (Idioma) App_GlobalResources ##################
         * 
         * Basta colocar na url o parametro &Lang= (pt|es|en) para mudar o idioma (App_GlobalResources)
         * 
         * ## .ASPX
         *  <asp:Literal ID="Literal_Sign_in" runat="server" Text="<%$ Resources:Resource, Literal_Sign_in %>"></asp:Literal>
         *  <asp:Button ID="Button_login_submit" runat="server" Text="<%$ Resources:Resource, Button_login_submit %>" CssClass="btn btn-lg btn-primary btn-block btn-danger" OnClick="Button_login_submit_Click" />
         * 
         * ## .CS
         *  Alert(Resources.Resource.invalid_user_or_passord);
         */

        /* ################## Estrutura do projeto ##################
         * -> Content - Pasta dos CSS
         * -> Scripts - Pasta dos JavaScript
         * -> Model - Pasta para colocar os Model do projeto os transfer object
         * -> Controller - Pasta colocar os controller, os bussines do projeto
         * -> Pages - Pasta para colocar as paginas WebForms do projeto
         * -> images - Pasta para colocar as imagens utilizadas no projeto
         * -> DataBase - Pasta com os Model do EntityFramework
         * -> Content\Site.css - Arquivo para personalização do CSS 
         * -> Scripts\Site.js - Arquivo para personalização do JS
         */

        /* ################## MasterPage ##################
         * -> MasterJS.Master = Master somente com as referencias do JS e CSS para usar em Ajax Model, popup, intranet e iframe
         * -> MasterMenuWithMasterJS.master - Master Page com o menu do portal de processo. (Ele cotem a MasterJS.Master como master)
         */


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CarreegarGallery();
            }
        }

        private void CarreegarGallery()
        {
            RepeaterGallery.DataSource = new GalleryController().GetGalleries();
            RepeaterGallery.DataBind();
        }
    }
}