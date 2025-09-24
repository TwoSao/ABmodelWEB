<%@ Page Title="Uus rühm" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ryhm.aspx.cs" Inherits="ABmodelWEB.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        Lisa rühm</p>
    <p>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="ryhmID" DataSourceID="SqlDataSource1ryhm" DefaultMode="Insert" Height="50px" Width="125px">
            <Fields>
                <asp:BoundField DataField="ryhmID" HeaderText="ryhmID" InsertVisible="False" ReadOnly="True" SortExpression="ryhmID" />
                <asp:BoundField DataField="ryhmNimi" HeaderText="ryhmNimi" SortExpression="ryhmNimi" />
                <asp:TemplateField HeaderText="osakondID" SortExpression="osakondID">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("osakondID") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1osakond" DataTextField="osakondNimi" DataValueField="osakondID" SelectedValue='<%# Bind("osakondID") %>'>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1osakond" runat="server" ConnectionString="<%$ ConnectionStrings:opilaneMudelConnectionString3 %>" DeleteCommand="DELETE FROM [osakond] WHERE [osakondID] = @osakondID" InsertCommand="INSERT INTO [osakond] ([osakondNimi]) VALUES (@osakondNimi)" SelectCommand="SELECT [osakondID], [osakondNimi] FROM [osakond]" UpdateCommand="UPDATE [osakond] SET [osakondNimi] = @osakondNimi WHERE [osakondID] = @osakondID">
                            <DeleteParameters>
                                <asp:Parameter Name="osakondID" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="osakondNimi" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="osakondNimi" Type="String" />
                                <asp:Parameter Name="osakondID" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("osakondID") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1ryhm" runat="server" ConnectionString="<%$ ConnectionStrings:opilaneMudelConnectionString3 %>" DeleteCommand="DELETE FROM [ryhmSet] WHERE [ryhmID] = @ryhmID" InsertCommand="INSERT INTO [ryhmSet] ([ryhmNimi], [osakondID]) VALUES (@ryhmNimi, @osakondID)" SelectCommand="SELECT * FROM [ryhmSet]" UpdateCommand="UPDATE [ryhmSet] SET [ryhmNimi] = @ryhmNimi, [osakondID] = @osakondID WHERE [ryhmID] = @ryhmID">
            <DeleteParameters>
                <asp:Parameter Name="ryhmID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ryhmNimi" Type="String" />
                <asp:Parameter Name="osakondID" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ryhmNimi" Type="String" />
                <asp:Parameter Name="osakondID" Type="Int32" />
                <asp:Parameter Name="ryhmID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>
