<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Ministries.aspx.cs" Inherits="upc_website.Ministries" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
         
    <div>
        <span class="glyphicons glyphicons-temple-christianity-church mypage-glythicons"></span>
    </div>
    <div class="mypage-header text-center">
        <h4><b>Ministries / Groups</b></h4>
    </div>

    <div class="jumbotron text-left">

        <p>
            <button type="button" style="text-align:left;" class="btn btn-link"data-toggle="collapse" data-target="#Min1">Lively, Spirit-led worship on Sundays and Wednesdays</button>
            <div id="Min1" class="collapse">
                <p><a href="services.aspx">Service Times</a></p>
            </div>
        </p>
        <p>
            <button type="button" style="text-align:left;" class="btn btn-link"data-toggle="collapse" data-target="#Min2">Prayer meetings</button>
            <div id="Min2" class="collapse">
                Prayer Meetings (Tuesday mornings at 10:00am & Sunday evenings at 5:30)
            </div>
        </p>
        <p>
            <button type="button" style="text-align:left;" class="btn btn-link"data-toggle="collapse" data-target="#Min3">Sunday school for all</button>
            <div id="Min3" class="collapse">
                Sunday School classes (Classes for all ages; 10:00-10:45a)
            </div>
        </p>
        <p>
            <button type="button" style="text-align:left;" class="btn btn-link"data-toggle="collapse" data-target="#Min4">Wednesday Kid’s classes</button>
            <div id="Min4" class="collapse">
                Wednesday Kids Classes (Ages 4-11; 7:30-8:30p)
            </div>
        </p>
        <p>
            <button type="button" style="text-align:left;" class="btn btn-link"data-toggle="collapse" data-target="#Min5">Music; Adult, Youth & Junior choirs</button>
            <div id="Min5" class="collapse">
                • Kids Choir sings once a month during Sunday Morning Service<br />
                • Youth Choir sings during each Wednesday Service<br />
                • Adult Choir sings during each of the Sunday services
            </div>
        </p>
        <p>
            <button type="button" style="text-align:left;" class="btn btn-link"data-toggle="collapse" data-target="#Min6">Nursing home ministry</button>
            <div id="Min6" class="collapse">
                Nursing Home Ministry (A youth group service on the first Tuesday of each month for residents)
            </div>
        </p>
        <p>
            <button type="button" style="text-align:left;" class="btn btn-link"data-toggle="collapse" data-target="#Min7">Outreach ministry</button>
            <div id="Min7" class="collapse">
                Outreach Ministry (Saturday’s at Noon)
            </div>
        </p>
        <p>
            <button type="button" style="text-align:left;" class="btn btn-link"data-toggle="collapse" data-target="#Min8">Bus ministry</button>
            <div id="Min8" class="collapse">
                Bus Ministry (Provides transportation for Individuals to attend Church; children must be potty trained to attend without an adult)
            </div>
        </p>
        <p>
            <button type="button" style="text-align:left;" class="btn btn-link"data-toggle="collapse" data-target="#Min9">Shut-in ministry</button>
            <div id="Min9" class="collapse">
                Shut-in Ministry (Ministers to individuals who are not able to attend the local church.)
            </div>
        </p>
        <p>
            <button type="button" style="text-align:left;" class="btn btn-link"data-toggle="collapse" data-target="#Min10">Junior Fridays</button>
            <div id="Min10" class="collapse">
                Min10
            </div>
        </p>
        <p>
            <button type="button" style="text-align:left;" class="btn btn-link"data-toggle="collapse" data-target="#Min11">Youth Nights</button>
            <div id="Min11" class="collapse">
                Min11
            </div>
        </p>
        <p>
            <button type="button" style="text-align:left;" class="btn btn-link"data-toggle="collapse" data-target="#Min12">Couple Fellowships</button>
            <div id="Min12" class="collapse">
                Couples Fellowship (Monthly get-togethers for couples. If you like board games, volleyball, or just enjoying great conversations, you will love couples night!)
            </div>
        </p>
        <p>
            <button type="button" style="text-align:left;" class="btn btn-link"data-toggle="collapse" data-target="#Min13">Senior Saints breakfasts</button>
            <div id="Min13" class="collapse">
                Senior Saints Breakfast (Breakfast and fellowship held on the first Saturday of the month at 9:00am. Ages 60+)
            </div>
        </p>
        <p>
            <button type="button" style="text-align:left;" class="btn btn-link"data-toggle="collapse" data-target="#Min14">Women’s fellowship</button>
            <div id="Min14" class="collapse">
                Women’s Night (A monthly meeting for women ages 18+. A great time of laughter, shared experiences, and doing life together!)
            </div>
        </p>
        <p>
            <button type="button" style="text-align:left;" class="btn btn-link"data-toggle="collapse" data-target="#Min15">Men’s ministry</button>
            <div id="Min15" class="collapse">
                Men’s Ministry (A monthly meeting for Men of all ages. A great time of sharing stories, eating, and helping others. Held on the third Saturday of the month.)
            </div>
        </p>
    </div>
</asp:Content>
