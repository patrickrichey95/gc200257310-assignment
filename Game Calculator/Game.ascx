<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Game.ascx.cs" Inherits="Game_Calculator.Game" %>

<div>
    <div>
        <asp:Label ID="lblResult1" runat="server">Result:</asp:Label>
        <asp:RadioButtonList ID="rblResult1" runat="server" Required="true">
            <asp:ListItem Value="1" Text="Win"></asp:ListItem>
            <asp:ListItem Value="2" Text="Lose"></asp:ListItem>
        </asp:RadioButtonList>
    </div>
    <div>
        <asp:Label ID="lblScored1" runat="server">Points Scored: </asp:Label>
        <asp:TextBox ID="txtScored1" runat="server" Required="true"></asp:TextBox>
        <asp:RangeValidator ID="RangeValidator1" ControlToValidate="txtScored1" runat="server" ErrorMessage="Cannot be Negative"></asp:RangeValidator>
    </div>
    <div>
        <asp:Label ID="lblAllowed1" runat="server">Points Allowed: </asp:Label>
        <asp:TextBox ID="txtAllowed1" runat="server" Required="true"></asp:TextBox>
        <asp:RangeValidator ID="RangeValidator2" ControlToValidate="txtAllowed1" runat="server" ErrorMessage="Cannot be Negative"></asp:RangeValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Game cannot end in Tie"
            ControlToValidate="txtScored1" ValueToCompare="value" ControlToCompare="txtAllowed1"></asp:CompareValidator>
    </div>
    <div>
        <asp:Label ID="lblSpectators1" runat="server">Spectators (#): </asp:Label>
        <asp:TextBox ID="txtSpectators1" runat="server" Required="true"></asp:TextBox>
        <asp:RangeValidator ID="RangeValidator3" ControlToValidate="txtSpectators1" runat="server" ErrorMessage="Cannot be Negative"></asp:RangeValidator>
    </div>
</div>
