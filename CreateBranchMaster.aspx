<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateBranchMaster.aspx.cs" Inherits="SchoolManagement.Web.CreateBranchMaster" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width: 100%;">
                <tr>
                    <td>Branch Name</td>
                    <td>Active</td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="txtBranchName" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:DropDownList ID="ddlBranchActive" runat="server">
                            <asp:ListItem Selected="True" Value ="Active"  >Active</asp:ListItem>
                            <asp:ListItem  Value = "Deactive" >Deactive</asp:ListItem>
                        </asp:DropDownList>
                </tr>

                <tr>
    <td>Debit Account</td>
    <td>Credit Account</td>
</tr>
<tr>
    <td>
        <asp:TextBox ID="txtDebitAccount" runat="server"></asp:TextBox></td>
    <td>
        <asp:TextBox ID="txtCreditAccount" runat="server"></asp:TextBox>

    </td>
</tr>
              
                <tr>
                    <td>
                        <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAddBranch_Click" />

                    </td>
                    <td>
                        <asp:Button ID="btnCancel" runat="server" Text="Cancel" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
