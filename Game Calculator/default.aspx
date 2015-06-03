<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Game_Calculator._default" %>
<%@ Register Src="~/Game.ascx" TagPrefix="uc1" TagName="game" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Game tracker form -->
    <h1>Game Tracker</h1>
    <p class="text-warning">All fields are required.  No ties or draws are allowed.</p>
    <div class="row">
        <div class="col-sm-3 col-md-3">
            <!-- Game 1 Tracker Start -->
            <div class="well">
                <h3>Game 1</h3>
                <uc1:game ID="game1" runat="server" />
            </div>
        </div>
        <div class="col-sm-3 col-md-3">
            <!-- Game 2 Tracker Start -->
            <div class="well">
                <h3>Game 2</h3>
                <uc1:game ID="game2" runat="server" />
            </div>
        </div>
        <div class="col-sm-3 col-md-3">
            <!-- Game 3 Tracker Start -->
            <div class="well">
                <h3>Game 3</h3>
                <uc1:game ID="game3" runat="server" />
            </div>
        </div>
        <div class="col-sm-3 col-md-3">
            <!-- Game 4 Tracker Start -->
            <div class="well">
                <h3>Game 4</h3>
                <uc1:game ID="game4" runat="server" />
            </div>
        </div>
    </div>

    <div id="summary" class="text-center">
        <asp:Button ID="btnSummary" Text="Calculate Results" runat="server" CssClass="btn btn-primary" OnClick="btnSummary_Click" />
    </div>

    <asp:Panel ID="pnlSummary" runat="server" Visible="false">
        <!-- Summary -->
        <div class="row">
            <div class="col-sm-12 col-md-12">
                <!-- Game 1 Tracker Start -->
                <div class="well">
                    <h2>Summary</h2>
                    <div>
                        <asp:Label ID="lblNumWon" runat="server">Games Won: </asp:Label>
                        <asp:Label ID="lblGamesWon" runat="server"></asp:Label>
                    </div>
                    <div>
                        <asp:Label ID="lblNumLoss" runat="server">Games Lost: </asp:Label>
                        <asp:Label ID="lblGamesLost" runat="server"></asp:Label>
                    </div>
                    <div>
                        <asp:Label ID="lblPerWin" runat="server">Winning %: </asp:Label>
                        <asp:Label ID="lblWinPercent" runat="server"></asp:Label>
                    </div>
                    <div>
                        <asp:Label ID="lblTtlScore" runat="server">Total Points Scored: </asp:Label>
                        <asp:Label ID="lblTotalScored" runat="server"></asp:Label>
                    </div>
                    <div>
                        <asp:Label ID="lblTtlAllow" runat="server">Total Points Allowed: </asp:Label>
                        <asp:Label ID="lblTotalAllowed" runat="server"></asp:Label>
                    </div>
                    <div>
                        <asp:Label ID="lblPtDiff" runat="server">Point Differential: </asp:Label>
                        <asp:Label ID="lblPointRatio" runat="server"></asp:Label>
                    </div>
                    <div>
                        <asp:Label ID="lblTtlSpec" runat="server">Total Spectators: </asp:Label>
                        <asp:Label ID="lblTotalSpectators" runat="server"></asp:Label>
                    </div>
                    <div>
                        <asp:Label ID="lblAvgSpec" runat="server">Average Spectators: </asp:Label>
                        <asp:Label ID="lblAvgSpectators" runat="server"></asp:Label>
                    </div>
                </div>
            </div>
        </div>
    </asp:Panel>
</asp:Content>
