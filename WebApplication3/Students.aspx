<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Students.aspx.cs" Inherits="WebApplication3.Students" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>

<form id="form1" runat="server">
    <div>

        <asp:LinkButton ID="lblListStudents" runat="server" OnClick="lblListStudent_Click">Lista studentów</asp:LinkButton>
        <asp:LinkButton ID="lblSingleStudent" runat="server" OnClick="lblSingleStudent_Click">Pojedynczy student</asp:LinkButton>

        <asp:Button ID="btnTest" runat="server" Text="Button" OnClick="btnTest_Click"/>

        <asp:Panel ID="panelStudent" Visible="false" runat="server">
            <div style="margin: 0 auto; width: 90%">
                <asp:GridView Width="100%" ID="gvStudent" runat="server" AutoGenerateColumns="false">
                    <Columns>
<%--                        <asp:BoundField DataField="Active" HeaderText="Aktywny"></asp:BoundField>--%>
                        <asp:TemplateField HeaderText="Aktywny">
                            <ItemTemplate>
                                <asp:CheckBox ID="CheckBox2" Checked='<%# Eval("Active") %>' Enabled="False" runat="server" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Name" HeaderText="Imie"></asp:BoundField>
                        <asp:BoundField DataField="Surname" HeaderText="Nazwisko"></asp:BoundField>
                        <asp:BoundField DataField="Age" HeaderText="Wiek"></asp:BoundField>
                    </Columns>
                </asp:GridView>
            </div>
        </asp:Panel>
        
<%--        <asp:Panel ID="panelStud" Visible="false" runat="server">--%>
<%--            <div style="margin: 0 auto; width: 90%">--%>
<%--                <asp:DetailsView ID="dvStudent" AutoGenerateRows="false" AllowPaging="true" runat="server" Height="251px" Width="320px" OnPageIndexChanging="dvStudent_PageIndexChanging">--%>
<%--                    <PagerSettings Mode="Numeric"></PagerSettings>--%>
<%--                    <HeaderStyle BorderStyle="Ridge"></HeaderStyle>--%>
<%--                    <Fields>--%>
<%--$1$                        <asp:BoundField DataField="Active" HeaderText="Aktywny"></asp:BoundField>#1#--%>
<%--                        <asp:TemplateField HeaderText="Aktywny">--%>
<%--                            <ItemTemplate>--%>
<%--                                <asp:CheckBox ID="CheckBox1" Checked='<%#Eval("Active") %>' runat="server" />--%>
<%--                            </ItemTemplate>--%>
<%--                        </asp:TemplateField>--%>
<%--                        <asp:BoundField DataField="Name" HeaderText="Imie"></asp:BoundField>--%>
<%--                        <asp:BoundField DataField="Surname" HeaderText="Nazwisko"></asp:BoundField>--%>
<%--                        <asp:BoundField DataField="Age" HeaderText="Wiek"></asp:BoundField>--%>
<%--                    </Fields>--%>
<%--                </asp:DetailsView>--%>
<%--            </div>--%>
<%--        </asp:Panel>--%>

    </div>
</form>

</body>
</html>