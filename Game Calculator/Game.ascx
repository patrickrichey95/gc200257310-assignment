<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Game.ascx.cs" Inherits="Game_Calculator.Game" %>

<div class="form-group">
    <asp:Label ID="lblResult" runat="server" class="col-sm-4 control-label">Result: </asp:Label>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="rblResult"
        runat="server" ErrorMessage="Required" Display="Dynamic"></asp:RequiredFieldValidator>
    <div class="col-sm-8">
        <asp:RadioButtonList ID="rblResult" runat="server" class="radio-inline">
            <asp:ListItem Value="1" Text="Win"></asp:ListItem>
            <asp:ListItem Value="2" Text="Lose"></asp:ListItem>
        </asp:RadioButtonList>
    </div>
</div>
<div class="form-group">
    <asp:Label ID="lblScored" runat="server" class="col-sm-4 control-label">Scored: </asp:Label>
    <div class="col-sm-8">
        <asp:TextBox ID="txtScored" runat="server" class="form-control" type="number"></asp:TextBox>
    </div>
    <asp:CompareValidator ID="CompareValidator2" ControlToValidate="txtScored" ValueToCompare="-1"
        Type="Integer" Operator="GreaterThan" runat="server" ErrorMessage="Score cannot be negative" Display="Dynamic"></asp:CompareValidator>
    <asp:CompareValidator ID="CompareValidator4" ControlToValidate="txtScored"
        Type="Integer" Operator="DataTypeCheck" runat="server" ErrorMessage="Must be numeric value" Display="Dynamic"></asp:CompareValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtScored"
        runat="server" ErrorMessage="Required" Display="Dynamic"></asp:RequiredFieldValidator>
</div>
<div class="form-group">
    <asp:Label ID="lblAllowed" runat="server" class="col-sm-4 control-label">Allowed: </asp:Label>
    <div class="col-sm-8">
        <asp:TextBox ID="txtAllowed" runat="server" class="form-control" type="number"></asp:TextBox>
    </div>
    <asp:CompareValidator ID="CompareValidator3" ControlToValidate="txtAllowed" ValueToCompare="-1"
        Type="Integer" Operator="GreaterThan" runat="server" ErrorMessage="Score cannot be negative" Display="Dynamic"></asp:CompareValidator>
    <asp:CompareValidator ID="CompareValidator5" runat="server" ErrorMessage="Must be numeric value" Type="Integer"
        ControlToValidate="txtAllowed" Operator="DataTypeCheck" Display="Dynamic"></asp:CompareValidator>
    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Game cannot end in a tie" Type="Integer"
        ControlToValidate="txtScored" Operator="NotEqual" ControlToCompare="txtAllowed" Display="Dynamic"></asp:CompareValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txtAllowed" runat="server" ErrorMessage="Required" Display="Dynamic"></asp:RequiredFieldValidator>
</div>
<div class="form-group">
    <asp:Label ID="lblSpectators" runat="server" class="col-sm-4 control-label">Spectators: </asp:Label>
    <div class="col-sm-8">
        <asp:TextBox ID="txtSpectators" runat="server" class="form-control" type="number"></asp:TextBox>
    </div>
    <asp:CompareValidator ID="CompareValidator6" ControlToValidate="txtSpectators" ValueToCompare="-1"
        Type="Integer" Operator="GreaterThan" runat="server" ErrorMessage="Score cannot be negative" Display="Dynamic"></asp:CompareValidator>
    <asp:CompareValidator ID="CompareValidator7" runat="server" ErrorMessage="Must be numeric value" Type="Integer"
        ControlToValidate="txtSpectators" Operator="DataTypeCheck" Display="Dynamic"></asp:CompareValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="txtSpectators" runat="server" ErrorMessage="Required" Display="Dynamic"></asp:RequiredFieldValidator>
</div>
