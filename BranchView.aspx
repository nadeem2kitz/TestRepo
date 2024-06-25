<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BranchView.aspx.cs" Inherits="SchoolManagement.Web.BranchView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="grdBranch" runat="server" AutoGenerateColumns="False"
                BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px"
                CellPadding="4" DataKeyNames="branch_id" OnRowDeleting="DeleteBranch" OnRowEditing="EditBranch" OnRowCancelingEdit="CancelBranchEdit" OnRowUpdating="UpdateBranch">
                <Columns>
                    <asp:TemplateField HeaderText="Branch Name">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtBranchName" runat="server" Text='<%# Bind("branch_name") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblBranchName" runat="server" Text='<%# Eval("branch_name") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Active">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtActive" runat="server" Text='<%# Bind("status") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblActive" runat="server" Text='<%# Eval("status") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="CreditAccount">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtCreditAccount" runat="server" Text='<%# Bind("credit_amount") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblCreditAccount" runat="server" Text='<%# Eval("credit_amount") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="DebitAccount">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtDebitAccount" runat="server" Text='<%# Bind("debit_amount") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lbltxtDebitAccount" runat="server" Text='<%# Eval("debit_amount") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Actions">
                        <EditItemTemplate>
                            <asp:Button ID="btnUpdate" CommandName="Update" runat="server" Text="Update"></asp:Button>
                            <asp:Button ID="btnCancel" CommandName="Cancel" runat="server" Text="Cancel"></asp:Button>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Button ID="btnEdit" CommandName="Edit" runat="server" Text="Edit"></asp:Button>
                            <asp:Button ID="btnDelete" CommandName="Delete" runat="server" Text="Delete"></asp:Button>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <%--<asp:CommandField ShowDeleteButton="true" HeaderText ="Delete" />
                    <asp:CommandField ShowEditButton="true" HeaderText ="Edit" />--%>
                </Columns>
                <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                <RowStyle BackColor="White" ForeColor="#003399" />
                <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                <SortedAscendingCellStyle BackColor="#EDF6F6" />
                <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                <SortedDescendingCellStyle BackColor="#D6DFDF" />
                <SortedDescendingHeaderStyle BackColor="#002876" />
            </asp:GridView>
        </div>
    </form>
</body>
</html>
