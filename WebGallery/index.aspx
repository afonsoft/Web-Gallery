<%@ Page Title="" Language="C#" MasterPageFile="~/MasterJS.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="WebGallery.index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderHead" runat="server">
    <link href="Content/magnific-popup.css" rel="stylesheet" />
    <style>
        body {
            background-image: url('images/BANNER.jpg');
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-position: center;
            background-size: cover;
            -ms-background-size: cover;
            -o-background-size: cover;
            -moz-background-size: cover;
            -webkit-background-size: cover;
            width: 100%;
            height: 100%;
            position: fixed;
            left: 0px;
            top: 0px;
            z-index: -1;
        }

        .gallery {
            margin: 5px;
            padding: 5px;
        }

            .gallery a img {
                opacity: 0.6;
                filter: alpha(opacity=60); /* For IE8 and earlier */
            }

                .gallery a img:hover {
                    opacity: 0.9;
                    filter: alpha(opacity=90); /* For IE8 and earlier */
                }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderBody" runat="server">
    <script src="Scripts/jquery.magnific-popup.min.js"></script>

    <div class="container-fluid">
        <div class="row">
            <div class="col">
                <h2>Galeria de fotos</h2>
            </div>
        </div>

        <asp:Repeater ID="RepeaterGallery" runat="server">
            <HeaderTemplate>
                <div class="row">
                    <div class="gallery">
            </HeaderTemplate>
            <ItemTemplate>
                <asp:Repeater ID="RepeaterPicture" runat="server" DataSource='<%# Eval("Images") %>'>
                    <ItemTemplate>
                        <a href='<%# Eval("Image") %>' title='<%# Eval("Name") %>'>
                            <img src='<%# Eval("Image") %>' width="200px" height="200px" class="rounded img-thumbnail" alt='<%# Eval("Name") %>'>
                        </a>
                    </ItemTemplate>
                </asp:Repeater>
            </ItemTemplate>
            <FooterTemplate>
                    </div>
                </div>
            </FooterTemplate>
        </asp:Repeater>

    </div>


    <!-- Optional JavaScript -->
    <script>
        jQuery(document).ready(function () {
            jQuery('.gallery').each(function () { // the containers for all your galleries
                jQuery(this).magnificPopup({
                    delegate: 'a', // the selector for gallery item
                    type: 'image',
                    removalDelay: 300,
                    mainClass: 'mfp-fade',
                    gallery: {
                        enabled: true,
                        navigateByImgClick: true
                    }
                });
            });
        });
    </script>
</asp:Content>
