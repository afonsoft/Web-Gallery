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
            left: 0;
            top: 0;
            z-index: -1;
        }

        .gallery {
            margin: 12px;
            padding: 12px;
        }

            .gallery a img {
                opacity: 0.7;
                filter: alpha(opacity=70); /* For IE8 and earlier */
            }

                .gallery a img:hover {
                    opacity: 1;
                    filter: alpha(opacity=100); /* For IE8 and earlier */
                }
        .thumbnail > img {
            width: 200px;
            height: 200px; /* force image's height */

            /* force image fit inside it's "box" */
            -webkit-object-fit: cover;
            -moz-object-fit: cover;
            -ms-object-fit: cover;
            -o-object-fit: cover;
            object-fit: cover;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderBody" runat="server">
    <script src="Scripts/jquery.magnific-popup.min.js"></script>

    <div class="container-fluid">
        <div class="row">
            <div class="col" style="color: red;">
                <h1>Galeria de fotos</h1>
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
                            <a href='<%# Eval("Image") %>' title='<%# Eval("Name") %>' class = "thumbnail">
                                <img src='<%# Eval("Image") %>' width="200" height="200" class="rounded img-thumbnail" alt='<%# Eval("Name") %>'>
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
