<%@ Page Title="" Language="C#" MasterPageFile="~/MasterMenuWithMasterJS.master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebGallery.Pages.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderHeadMain" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderBodyMain" runat="server">
    <h2>
        <asp:Literal runat="server" Text="<%$ Resources:Resource, PageTitle%>" /></h2>
    <input id="Hidden1" type="hidden" />

    <h5>Thema: <a href="http://thevectorlab.net/flatlab/">http://thevectorlab.net/flatlab/</a> </h5>
    <!-- theme: http://thevectorlab.net/flatlab/ -->
    <!--main content start-->

    <section id="main-content">
        <section class="wrapper">
            <!--state overview start-->
            <div class="row state-overview">
                <div class="col-lg-3 col-sm-6">
                    <section class="panel">
                        <div class="symbol terques">
                            <i class="fa fa-user"></i>
                        </div>
                        <div class="value">
                            <h1 class="count">0
                            </h1>
                            <p>New Users</p>
                        </div>
                    </section>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <section class="panel">
                        <div class="symbol red">
                            <i class="fa fa-tags"></i>
                        </div>
                        <div class="value">
                            <h1 class=" count2">0
                            </h1>
                            <p>Sales</p>
                        </div>
                    </section>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <section class="panel">
                        <div class="symbol yellow">
                            <i class="fa fa-shopping-cart"></i>
                        </div>
                        <div class="value">
                            <h1 class=" count3">0
                            </h1>
                            <p>New Order</p>
                        </div>
                    </section>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <section class="panel">
                        <div class="symbol blue">
                            <i class="fa fa-bar-chart-o"></i>
                        </div>
                        <div class="value">
                            <h1 class=" count4">0
                            </h1>
                            <p>Total Profit</p>
                        </div>
                    </section>
                </div>
            </div>
            <!--state overview end-->

            <div class="row">
                <div class="col-lg-8">
                    <!--custom chart start-->
                    <div class="border-head">
                        <h3>Earning Graph</h3>
                    </div>
                    <div class="custom-bar-chart">
                        <ul class="y-axis">
                            <li><span>100</span></li>
                            <li><span>80</span></li>
                            <li><span>60</span></li>
                            <li><span>40</span></li>
                            <li><span>20</span></li>
                            <li><span>0</span></li>
                        </ul>
                        <div class="bar">
                            <div class="title">JAN</div>
                            <div class="value tooltips" data-original-title="80%" data-toggle="tooltip" data-placement="top">80%</div>
                        </div>
                        <div class="bar ">
                            <div class="title">FEB</div>
                            <div class="value tooltips" data-original-title="50%" data-toggle="tooltip" data-placement="top">50%</div>
                        </div>
                        <div class="bar ">
                            <div class="title">MAR</div>
                            <div class="value tooltips" data-original-title="40%" data-toggle="tooltip" data-placement="top">40%</div>
                        </div>
                        <div class="bar ">
                            <div class="title">APR</div>
                            <div class="value tooltips" data-original-title="55%" data-toggle="tooltip" data-placement="top">55%</div>
                        </div>
                        <div class="bar">
                            <div class="title">MAY</div>
                            <div class="value tooltips" data-original-title="20%" data-toggle="tooltip" data-placement="top">20%</div>
                        </div>
                        <div class="bar ">
                            <div class="title">JUN</div>
                            <div class="value tooltips" data-original-title="39%" data-toggle="tooltip" data-placement="top">39%</div>
                        </div>
                        <div class="bar">
                            <div class="title">JUL</div>
                            <div class="value tooltips" data-original-title="75%" data-toggle="tooltip" data-placement="top">75%</div>
                        </div>
                        <div class="bar ">
                            <div class="title">AUG</div>
                            <div class="value tooltips" data-original-title="45%" data-toggle="tooltip" data-placement="top">45%</div>
                        </div>
                        <div class="bar ">
                            <div class="title">SEP</div>
                            <div class="value tooltips" data-original-title="50%" data-toggle="tooltip" data-placement="top">50%</div>
                        </div>
                        <div class="bar ">
                            <div class="title">OCT</div>
                            <div class="value tooltips" data-original-title="42%" data-toggle="tooltip" data-placement="top">42%</div>
                        </div>
                        <div class="bar ">
                            <div class="title">NOV</div>
                            <div class="value tooltips" data-original-title="60%" data-toggle="tooltip" data-placement="top">60%</div>
                        </div>
                        <div class="bar ">
                            <div class="title">DEC</div>
                            <div class="value tooltips" data-original-title="90%" data-toggle="tooltip" data-placement="top">90%</div>
                        </div>
                    </div>
                    <!--custom chart end-->
                </div>
                <div class="col-lg-4">
                    <!--new earning start-->
                    <div class="panel terques-chart">
                        <div class="panel-body chart-texture">
                            <div class="chart">
                                <div class="heading">
                                    <span>Friday</span>
                                    <strong>$ 57,00 | 15%</strong>
                                </div>
                                <div class="sparkline" data-type="line" data-resize="true" data-height="75" data-width="90%" data-line-width="1" data-line-color="#fff" data-spot-color="#fff" data-fill-color="" data-highlight-line-color="#fff" data-spot-radius="4" data-data="[200,135,667,333,526,996,564,123,890,564,455]"></div>
                            </div>
                        </div>
                        <div class="chart-tittle">
                            <span class="title">New Earning</span>
                            <span class="value">
                                <a href="#" class="active">Market</a>
                                |
                                  <a href="#">Referal</a>
                                |
                                  <a href="#">Online</a>
                            </span>
                        </div>
                    </div>
                    <!--new earning end-->

                    <!--total earning start-->
                    <div class="panel green-chart">
                        <div class="panel-body">
                            <div class="chart">
                                <div class="heading">
                                    <span>June</span>
                                    <strong>23 Days | 65%</strong>
                                </div>
                                <div id="barchart"></div>
                            </div>
                        </div>
                        <div class="chart-tittle">
                            <span class="title">Total Earning</span>
                            <span class="value">$, 76,54,678</span>
                        </div>
                    </div>
                    <!--total earning end-->
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4">
                    <!--user info table start-->
                    <section class="panel">
                        <div class="panel-body">
                            <a href="#" class="task-thumb"></a>
                            <div class="task-thumb-details">
                                <h1><a href="#">Anjelina Joli</a></h1>
                                <p>Senior Architect</p>
                            </div>
                        </div>
                        <table class="table table-hover personal-task">
                            <tbody>
                                <tr>
                                    <td>
                                        <i class=" fa fa-tasks"></i>
                                    </td>
                                    <td>New Task Issued</td>
                                    <td>02</td>
                                </tr>
                                <tr>
                                    <td>
                                        <i class="fa fa-exclamation-triangle"></i>
                                    </td>
                                    <td>Task Pending</td>
                                    <td>14</td>
                                </tr>
                                <tr>
                                    <td>
                                        <i class="fa fa-envelope"></i>
                                    </td>
                                    <td>Inbox</td>
                                    <td>45</td>
                                </tr>
                                <tr>
                                    <td>
                                        <i class=" fa fa-bell-o"></i>
                                    </td>
                                    <td>New Notification</td>
                                    <td>09</td>
                                </tr>
                            </tbody>
                        </table>
                    </section>
                    <!--user info table end-->
                </div>
                <div class="col-lg-8">
                    <!--work progress start-->
                    <section class="panel">
                        <div class="panel-body progress-panel">
                            <div class="task-progress">
                                <h1>Work Progress</h1>
                                <p>Anjelina Joli</p>
                            </div>
                            <div class="task-option">
                                <select class="styled">
                                    <option>Anjelina Joli</option>
                                    <option>Tom Crouse</option>
                                    <option>Jhon Due</option>
                                </select>
                            </div>
                        </div>
                        <table class="table table-hover personal-task">
                            <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>Target Sell
                                    </td>
                                    <td>
                                        <span class="badge bg-important">75%</span>
                                    </td>
                                    <td>
                                        <div id="work-progress1"></div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>Product Delivery
                                    </td>
                                    <td>
                                        <span class="badge bg-success">43%</span>
                                    </td>
                                    <td>
                                        <div id="work-progress2"></div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>Payment Collection
                                    </td>
                                    <td>
                                        <span class="badge bg-info">67%</span>
                                    </td>
                                    <td>
                                        <div id="work-progress3"></div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>4</td>
                                    <td>Work Progress
                                    </td>
                                    <td>
                                        <span class="badge bg-warning">30%</span>
                                    </td>
                                    <td>
                                        <div id="work-progress4"></div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>5</td>
                                    <td>Delivery Pending
                                    </td>
                                    <td>
                                        <span class="badge bg-primary">15%</span>
                                    </td>
                                    <td>
                                        <div id="work-progress5"></div>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </section>
                    <!--work progress end-->
                </div>
            </div>
            <div class="row">
                <!--work GRIDVIEW start-->
                <div class="col-lg-12">
                    <div class="template">
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                <asp:GridView ID="GridView1" DataKeyNames="Values" UseAccessibleHeader="true" AutoGenerateColumns="true" AllowPaging="false"  CssClass="gridview" PagerStyle-CssClass="gridview_pager" runat="server" >
                                </asp:GridView>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>
                </div>
                <!--work GRIDVIEW end-->
            </div>
            <div class="row">
                <div class="col-lg-8">
                    <!--timeline start-->
                    <section class="panel">
                        <div class="panel-body">
                            <div class="text-center mbot30">
                                <h3 class="timeline-title">Timeline</h3>
                                <p class="t-info">This is a project timeline</p>
                            </div>

                            <div class="timeline">
                                <article class="timeline-item">
                                    <div class="timeline-desk">
                                        <div class="panel">
                                            <div class="panel-body">
                                                <span class="arrow"></span>
                                                <span class="timeline-icon red"></span>
                                                <span class="timeline-date">08:25 am</span>
                                                <h1 class="red">12 July | Sunday</h1>
                                                <p>Lorem ipsum dolor sit amet consiquest dio</p>
                                            </div>
                                        </div>
                                    </div>
                                </article>
                                <article class="timeline-item alt">
                                    <div class="timeline-desk">
                                        <div class="panel">
                                            <div class="panel-body">
                                                <span class="arrow-alt"></span>
                                                <span class="timeline-icon green"></span>
                                                <span class="timeline-date">10:00 am</span>
                                                <h1 class="green">10 July | Wednesday</h1>
                                                <p><a href="#">Jonathan Smith</a> added new milestone <span><a href="#" class="green">ERP</a></span></p>
                                            </div>
                                        </div>
                                    </div>
                                </article>
                                <article class="timeline-item">
                                    <div class="timeline-desk">
                                        <div class="panel">
                                            <div class="panel-body">
                                                <span class="arrow"></span>
                                                <span class="timeline-icon blue"></span>
                                                <span class="timeline-date">11:35 am</span>
                                                <h1 class="blue">05 July | Monday</h1>
                                                <p><a href="#">Anjelina Joli</a> added new album <span><a href="#" class="blue">PARTY TIME</a></span></p>
                                                <div class="album">
                                                    <a href="#"></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </article>
                                <article class="timeline-item alt">
                                    <div class="timeline-desk">
                                        <div class="panel">
                                            <div class="panel-body">
                                                <span class="arrow-alt"></span>
                                                <span class="timeline-icon purple"></span>
                                                <span class="timeline-date">3:20 pm</span>
                                                <h1 class="purple">29 June | Saturday</h1>
                                                <p>Lorem ipsum dolor sit amet consiquest dio</p>
                                                <div class="notification">
                                                    <i class=" fa fa-exclamation-sign"></i>New task added for <a href="#">Denial Collins</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </article>
                                <article class="timeline-item">
                                    <div class="timeline-desk">
                                        <div class="panel">
                                            <div class="panel-body">
                                                <span class="arrow"></span>
                                                <span class="timeline-icon light-green"></span>
                                                <span class="timeline-date">07:49 pm</span>
                                                <h1 class="light-green">10 June | Friday</h1>
                                                <p><a href="#">Jonatha Smith</a> added new milestone <span><a href="#" class="light-green">prank</a></span> Lorem ipsum dolor sit amet consiquest dio</p>
                                            </div>
                                        </div>
                                    </div>
                                </article>
                            </div>

                            <div class="clearfix">&nbsp;</div>
                        </div>
                    </section>
                    <!--timeline end-->
                </div>
                <div class="col-lg-4">
                    <!--revenue start-->
                    <section class="panel">
                        <div class="revenue-head">
                            <span>
                                <i class="fa fa-bar-chart-o"></i>
                            </span>
                            <h3>Revenue</h3>
                            <span class="rev-combo pull-right">June 2013
                            </span>
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-6 col-sm-6 text-center">
                                    <div class="easy-pie-chart">
                                        <div class="percentage" data-percent="35"><span>35</span>%</div>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-sm-6">
                                    <div class="chart-info chart-position">
                                        <span class="increase"></span>
                                        <span>Revenue Increase</span>
                                    </div>
                                    <div class="chart-info">
                                        <span class="decrease"></span>
                                        <span>Revenue Decrease</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="panel-footer revenue-foot">
                            <ul>
                                <li class="first active">
                                    <a href="javascript:;">
                                        <i class="fa fa-bullseye"></i>
                                        Graphical
                                    </a>
                                </li>
                                <li>
                                    <a href="javascript:;">
                                        <i class=" fa fa-th-large"></i>
                                        Tabular
                                    </a>
                                </li>
                                <li class="last">
                                    <a href="javascript:;">
                                        <i class=" fa fa-align-justify"></i>
                                        Listing
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </section>
                    <!--revenue end-->
                    <!--features carousel start-->
                    <section class="panel">
                        <div class="flat-carousal">
                            <div id="owl-demo" class="owl-carousel owl-theme">
                                <div class="item">
                                    <h1>Flatlab is new model of admin dashboard for happy use</h1>
                                    <div class="text-center">
                                        <a href="javascript:;" class="view-all">View All</a>
                                    </div>
                                </div>
                                <div class="item">
                                    <h1>Fully responsive and build with Bootstrap 3.0</h1>
                                    <div class="text-center">
                                        <a href="javascript:;" class="view-all">View All</a>
                                    </div>
                                </div>
                                <div class="item">
                                    <h1>Responsive Frontend is free if you get this.</h1>
                                    <div class="text-center">
                                        <a href="javascript:;" class="view-all">View All</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="panel-body">
                            <ul class="ft-link">
                                <li class="active">
                                    <a href="javascript:;">
                                        <i class="fa fa-bars"></i>
                                        Sales
                                    </a>
                                </li>
                                <li>
                                    <a href="javascript:;">
                                        <i class=" fa fa-calendar-o"></i>
                                        promo
                                    </a>
                                </li>
                                <li>
                                    <a href="javascript:;">
                                        <i class=" fa fa-camera"></i>
                                        photo
                                    </a>
                                </li>
                                <li>
                                    <a href="javascript:;">
                                        <i class=" fa fa-circle"></i>
                                        other
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </section>
                    <!--features carousel end-->
                </div>
            </div>
            <div class="row">
                <div class="col-lg-8">
                    <!--latest product info start-->
                    <section class="panel post-wrap pro-box">
                        <aside>
                            <div class="post-info">
                                <span class="arrow-pro right"></span>
                                <div class="panel-body">
                                    <h1><strong>popular</strong>
                                        <br>
                                        Brand of this week</h1>
                                    <div class="desk yellow">
                                        <h3>Dimond Ring</h3>
                                        <p>Lorem ipsum dolor set amet lorem ipsum dolor set amet ipsum dolor set amet</p>
                                    </div>
                                    <div class="post-btn">
                                        <a href="javascript:;">
                                            <i class="fa fa-chevron-circle-left"></i>
                                        </a>
                                        <a href="javascript:;">
                                            <i class="fa fa-chevron-circle-right"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </aside>
                        <aside class="post-highlight yellow v-align">
                            <div class="panel-body text-center">
                                <div class="pro-thumb">
                                </div>
                            </div>
                        </aside>
                    </section>
                    <!--latest product info end-->
                    <!--twitter feedback start-->
                    <section class="panel post-wrap pro-box">
                        <aside class="post-highlight terques v-align">
                            <div class="panel-body">
                                <h2>Flatlab is new model of admin dashboard <a href="javascript:;">http://demo.com/</a> 4 days ago  by jonathan smith</h2>
                            </div>
                        </aside>
                        <aside>
                            <div class="post-info">
                                <span class="arrow-pro left"></span>
                                <div class="panel-body">
                                    <div class="text-center twite">
                                        <h1>Twitter Feed</h1>
                                    </div>

                                    <footer class="social-footer">
                                        <ul>
                                            <li>
                                                <a href="#">
                                                    <i class="fa fa-facebook"></i>
                                                </a>
                                            </li>
                                            <li class="active">
                                                <a href="#">
                                                    <i class="fa fa-twitter"></i>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <i class="fa fa-google-plus"></i>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <i class="fa fa-pinterest"></i>
                                                </a>
                                            </li>
                                        </ul>
                                    </footer>
                                </div>
                            </div>
                        </aside>
                    </section>
                    <!--twitter feedback end-->
                </div>
                <div class="col-lg-4">
                    <div class="row">
                        <div class="col-xs-6">
                            <!--pie chart start-->
                            <section class="panel">
                                <div class="panel-body">
                                    <div class="chart">
                                        <div id="pie-chart"></div>
                                    </div>
                                </div>
                                <footer class="pie-foot">
                                    Free: 260GB
                                </footer>
                            </section>
                            <!--pie chart start-->
                        </div>
                        <div class="col-xs-6">
                            <!--follower start-->
                            <section class="panel">
                                <div class="follower">
                                    <div class="panel-body">
                                        <h4>Jonathan Smith</h4>
                                        <div class="follow-ava">
                                        </div>
                                    </div>
                                </div>

                                <footer class="follower-foot">
                                    <ul>
                                        <li>
                                            <h5>2789</h5>
                                            <p>Follower</p>
                                        </li>
                                        <li>
                                            <h5>270</h5>
                                            <p>Following</p>
                                        </li>
                                    </ul>
                                </footer>
                            </section>
                            <!--follower end-->
                        </div>
                    </div>
                    <!--weather statement start-->
                    <section class="panel">
                        <div class="weather-bg">
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-xs-6">
                                        <i class="fa fa-cloud"></i>
                                        California
                                    </div>
                                    <div class="col-xs-6">
                                        <div class="degree">
                                            24°
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <footer class="weather-category">
                            <ul>
                                <li class="active">
                                    <h5>humidity</h5>
                                    56%
                                </li>
                                <li>
                                    <h5>precip</h5>
                                    1.50 in
                                </li>
                                <li>
                                    <h5>winds</h5>
                                    10 mph
                                </li>
                            </ul>
                        </footer>

                    </section>
                    <!--weather statement end-->
                </div>
            </div>
            <div class="row">
                <div class="col-lg-8">
                    <button class="btn btn-danger btn-sm">TESTE BUTTON 1</button><br />
                    <input type="button" class="btn" value="TESTE BUTTON 2" onclick="dialog();" /><br />
                </div>
                <div class="col-lg-4">
                    <input type="submit" class="btn btn-danger" value="TESTE BUTTON 3" /><br />
                </div>
            </div>
        </section>
    </section>
    <!--main content end-->
    <script>
        function dialog() {
            bootbox.alert({
                title: "Alert",
                message: "Your message here…"
            });
            return false;
        }


        if (typeof (Sys) !== 'undefined') {
            var prm = Sys.WebForms.PageRequestManager.getInstance();
            if (prm !== null) {
                prm.add_endRequest(Request);
            }
        }
        jQuery(document).ready(function () {
            Request(this, null);
        });

        function Request(sender, args) {

            jQuery('.percentage').easyPieChart({
                animate: 1000,
                size: 135,
                barColor: '#ff6c60'
            });

            jQuery('.percentage-light').easyPieChart({
                barColor: function (percent) {
                    percent /= 100;
                    return "rgb(" + Math.round(255 * (1 - percent)) + ", " + Math.round(255 * percent) + ", 0)";
                },
                trackColor: '#666',
                scaleColor: false,
                lineCap: 'butt',
                lineWidth: 15,
                animate: 1000
            });

            //sparkline chart
            jQuery("#barchart").sparkline([5, 3, 6, 7, 5, 6, 4, 2, 3, 4, 6, 8, 9, 10, 8, 6, 5, 7, 6, 5, 4, 7, 4], {
                type: 'bar',
                height: '65',
                barWidth: 8,
                barSpacing: 5,
                barColor: '#fff'
                //        tooltipFormat: '<span style="display:block; padding:0px 10px 12px 0px;">' +
                //            '<span style="color: {{color}}">&#9679;</span> {{offset:names}} ({{percent.1}}%)</span>'

            });

            jQuery("#linechart").sparkline([1, 5, 3, 7, 9, 3, 6, 4, 7, 9, 7, 6, 2], {
                type: 'line',
                width: '300',
                height: '75',
                fillColor: '',
                lineColor: '#fff',
                lineWidth: 2,
                spotColor: '#fff',
                minSpotColor: '#fff',
                maxSpotColor: '#fff',
                highlightSpotColor: '#fff',
                highlightLineColor: '#ffffff',
                spotRadius: 4,
                highlightLineColor: '#ffffff'
                //        tooltipFormat: '<span style="display:block; padding:0px 10px 12px 0px;">' +
                //            '<span style="color: {{color}}">&#9679;</span> {{offset:names}} ({{percent.1}}%)</span>'



            });

            jQuery("#pie-chart").sparkline([2, 1, 1, 1], {
                type: 'pie',
                width: '100',
                height: '100',
                borderColor: '#00bf00',
                sliceColors: ['#41CAC0', '#A8D76F', '#F8D347', '#EF6F66']
                //        tooltipFormat: '<span style="display:block; padding:0px 10px 12px 0px;">' +
                //            '<span style="color: {{color}}">&#9679;</span> {{offset:names}} ({{percent.1}}%)</span>'
            });

            //work progress bar
            jQuery("#work-progress1").sparkline([5, 6, 7, 5, 9, 6, 4], {
                type: 'bar',
                height: '20',
                barWidth: 5,
                barSpacing: 2,
                barColor: '#5fbf00'
                //        tooltipFormat: '<span style="display:block; padding:0px 10px 12px 0px;">' +
                //            '<span style="color: {{color}}">&#9679;</span> {{offset:names}} ({{percent.1}}%)</span>'
            });

            jQuery("#work-progress2").sparkline([3, 2, 5, 8, 4, 7, 5], {
                type: 'bar',
                height: '22',
                barWidth: 5,
                barSpacing: 2,
                barColor: '#58c9f1'
                //        tooltipFormat: '<span style="display:block; padding:0px 10px 12px 0px;">' +
                //            '<span style="color: {{color}}">&#9679;</span> {{offset:names}} ({{percent.1}}%)</span>'
            });

            jQuery("#work-progress3").sparkline([1, 6, 9, 3, 4, 8, 5], {
                type: 'bar',
                height: '22',
                barWidth: 5,
                barSpacing: 2,
                barColor: '#8075c4'
                //        tooltipFormat: '<span style="display:block; padding:0px 10px 12px 0px;">' +
                //            '<span style="color: {{color}}">&#9679;</span> {{offset:names}} ({{percent.1}}%)</span>'
            });

            jQuery("#work-progress4").sparkline([9, 4, 9, 6, 7, 4, 3], {
                type: 'bar',
                height: '22',
                barWidth: 5,
                barSpacing: 2,
                barColor: '#ff6c60'
                //        tooltipFormat: '<span style="display:block; padding:0px 10px 12px 0px;">' +
                //            '<span style="color: {{color}}">&#9679;</span> {{offset:names}} ({{percent.1}}%)</span>'
            });

            jQuery("#work-progress5").sparkline([6, 8, 5, 7, 6, 8, 3], {
                type: 'bar',
                height: '22',
                barWidth: 5,
                barSpacing: 2,
                barColor: '#41cac0'
                //        tooltipFormat: '<span style="display:block; padding:0px 10px 12px 0px;">' +
                //            '<span style="color: {{color}}">&#9679;</span> {{offset:names}} ({{percent.1}}%)</span>'
            });

            jQuery("#pie-chart2").sparkline([2, 1, 1, 1], {
                type: 'pie',
                width: '250',
                height: '125',
                sliceColors: ['#41CAC0', '#A8D76F', '#F8D347', '#EF6F66']
                //        tooltipFormat: '<span style="display:block; padding:0px 10px 12px 0px;">' +
                //    '<span style="color: {{color}}">&#9679;</span> {{offset:names}} ({{percent.1}}%)</span>'});

            });

            //owl carousel
            jQuery("#owl-demo").owlCarousel({
                navigation: true,
                slideSpeed: 300,
                paginationSpeed: 400,
                singleItem: true,
                autoPlay: true

            });

            //custom select box
            jQuery('select.styled').customSelect();

            jQuery('#<%=GridView1.ClientID %>').dataTable(
                {
                    "bFilter": false,
                    "bSort": true,
                    "bStateSave": false,
                    "bPaginate": false,
                    "bInfo": false,
                    "scrollY": "600px",
                    "scrollX": true,
                    "scrollCollapse": true,
                    "autoWidth": true,
                    "language": {
                        "search": "Pesquisar ",
                        "emptyTable": "Nenhum registro encontrado.",
                        "zeroRecords": "Nenhum registro encontrado."
                    },
                    "order": [[1, "asc"]],
                    "columnDefs": [{
                        "targets": [0, 1],
                        "orderable": false,
                    }]
                }
            );
        }

        jQuery('.update-easy-pie-chart').click(function () {
            jQuery('.easy-pie-chart .percentage').each(function () {
                var newValue = Math.floor(100 * Math.random());
                jQuery(this).data('easyPieChart').update(newValue);
                jQuery('span', this).text(newValue);
            });
        });

        jQuery('.updateEasyPieChart').on('click', function (e) {
            e.preventDefault();
            jQuery('.percentage, .percentage-light').each(function () {
                var newValue = Math.round(100 * Math.random());
                jQuery(this).data('easyPieChart').update(newValue);
                jQuery('span', this).text(newValue);
            });
        });

        jQuery(".sparkline").each(function () {
            var $data = jQuery(this).data();
            $data.valueSpots = { '0:': $data.spotColor };
            jQuery(this).sparkline($data.data || "html", $data,
                {
                    tooltipFormat: '<span style="display:block; padding:0px 10px 12px 0px;">' +
                        '<span style="color: {{color}}">&#9679;</span> {{offset:names}} ({{percent.1}}%)</span>'
                });
        });


        jQuery(window).on("resize", function () {
            var owl = jQuery("#owl-demo").data("owlCarousel");
            owl.reinit();
        });

        // custom bar chart
        if (jQuery(".custom-bar-chart")) {
            jQuery(".bar").each(function () {
                var i = jQuery(this).find(".value").html();
                jQuery(this).find(".value").html("");
                jQuery(this).find(".value").animate({ height: i }, 2000)
            })
        }

        countUp(495, '.count');
        countUp(947, '.count2');
        countUp(328, '.count3');
        countUp(10328, '.count4');

    </script>

</asp:Content>
