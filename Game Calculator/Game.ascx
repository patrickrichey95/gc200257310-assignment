<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Game.ascx.cs" Inherits="Game_Calculator.Game" %>

<div>
    <div>
        <asp:Label ID="lblResult" runat="server">Result: </asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="rblResult" 
            runat="server" ErrorMessage="Required" Display="Dynamic"></asp:RequiredFieldValidator>
        <asp:RadioButtonList ID="rblResult" runat="server">
            <asp:ListItem Value="1" Text="Win"></asp:ListItem>
            <asp:ListItem Value="2" Text="Lose"></asp:ListItem>
        </asp:RadioButtonList>
    </div>
    <div>
        <asp:Label ID="lblScored" runat="server">Points Scored: </asp:Label>
        <asp:TextBox ID="txtScored" runat="server"></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator2" ControlToValidate="txtScored" ValueToCompare="-1" 
            Type="Integer" Operator="GreaterThan" runat="server" ErrorMessage="Score cannot be negative" Display="Dynamic"></asp:CompareValidator>
        <asp:CompareValidator ID="CompareValidator4" ControlToValidate="txtScored"
            Type="Integer" Operator="DataTypeCheck" runat="server" ErrorMessage="Must be numeric value" Display="Dynamic"></asp:CompareValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtScored" 
            runat="server" ErrorMessage="Required" Display="Dynamic"></asp:RequiredFieldValidator>
    </div>
    <div>
        <asp:Label ID="lblAllowed" runat="server">Points Allowed: </asp:Label>
        <asp:TextBox ID="txtAllowed" runat="server"></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator3" ControlToValidate="txtAllowed" ValueToCompare="-1" 
            Type="Integer" Operator="GreaterThan" runat="server" ErrorMessage="Score cannot be negative" Display="Dynamic"></asp:CompareValidator>
        <asp:CompareValidator ID="CompareValidator5" runat="server" ErrorMessage="Must be numeric value" Type="Integer"
            ControlToValidate="txtAllowed" Operator="DataTypeCheck" Display="Dynamic"></asp:CompareValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Game cannot end in a tie" Type="Integer"
            ControlToValidate="txtScored" Operator="NotEqual" ControlToCompare="txtAllowed" Display="Dynamic"></asp:CompareValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txtAllowed" runat="server" ErrorMessage="Required" Display="Dynamic"></asp:RequiredFieldValidator>
    </div>
    <div>
        <asp:Label ID="lblSpectators" runat="server">Spectators (#): </asp:Label>
        <asp:TextBox ID="txtSpectators" runat="server"></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator6" ControlToValidate="txtSpectators" ValueToCompare="-1" 
            Type="Integer" Operator="GreaterThan" runat="server" ErrorMessage="Score cannot be negative" Display="Dynamic"></asp:CompareValidator>
        <asp:CompareValidator ID="CompareValidator7" runat="server" ErrorMessage="Must be numeric value" Type="Integer"
            ControlToValidate="txtSpectators" Operator="DataTypeCheck" Display="Dynamic"></asp:CompareValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="txtSpectators" runat="server" ErrorMessage="Required" Display="Dynamic"></asp:RequiredFieldValidator>
    </div>
</div>
