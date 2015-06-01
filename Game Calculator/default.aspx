<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Game_Calculator._default" %>

<%@ Register Src="~/Game.ascx" TagPrefix="uc1" TagName="game" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Game Tracker</h1>
    <!-- Game 1 Tracker Start -->
    <h3>Game 1</h3>
    <uc1:game ID="game1" runat="server" />

    <!-- Game 2 Tracker Start -->
    <h3>Game 2</h3>
    <uc1:game ID="game2" runat="server" />

    <!-- Game 3 Tracker Start -->
    <h3>Game 3</h3>
    <uc1:game ID="game3" runat="server" />

    <!-- Game 4 Tracker Start -->
    <h3>Game 4</h3>
    <uc1:game ID="game4" runat="server" />

    <asp:Button ID="btnSummary" Text="Summary" runat="server" OnClick="btnSummary_Click" />

    <!-- Summary -->
    <div>
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
</asp:Content>
