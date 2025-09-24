<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="ABmodelWEB.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        Lisa õpilane</p>
    <p>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="opilaneID" DataSourceID="SqlDataSource1opilane" DefaultMode="Insert" Height="50px" Width="125px">
            <Fields>
                <asp:BoundField DataField="opilaneID" HeaderText="opilaneID" InsertVisible="False" ReadOnly="True" SortExpression="opilaneID" />
                <asp:BoundField DataField="eesnimi" HeaderText="eesnimi" SortExpression="eesnimi" />
                <asp:BoundField DataField="perenimi" HeaderText="perenimi" SortExpression="perenimi" />
                <asp:BoundField DataField="synniaeg" HeaderText="synniaeg" SortExpression="synniaeg" />
                <asp:TemplateField HeaderText="ryhm_ryhmID" SortExpression="ryhm_ryhmID">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("ryhm_ryhmID") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1ryhm" DataTextField="ryhmNimi" DataValueField="ryhmID" SelectedValue='<%# Bind("ryhm_ryhmID") %>'>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1ryhm" runat="server" ConnectionString="<%$ ConnectionStrings:opilaneMudelConnectionString3 %>" DeleteCommand="DELETE FROM [ryhmSet] WHERE [ryhmID] = @ryhmID" InsertCommand="INSERT INTO [ryhmSet] ([ryhmNimi]) VALUES (@ryhmNimi)" SelectCommand="SELECT [ryhmID], [ryhmNimi] FROM [ryhmSet]" UpdateCommand="UPDATE [ryhmSet] SET [ryhmNimi] = @ryhmNimi WHERE [ryhmID] = @ryhmID">
                            <DeleteParameters>
                                <asp:Parameter Name="ryhmID" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="ryhmNimi" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="ryhmNimi" Type="String" />
                                <asp:Parameter Name="ryhmID" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("ryhm_ryhmID") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1opilane" runat="server" ConnectionString="<%$ ConnectionStrings:opilaneMudelConnectionString3 %>" DeleteCommand="DELETE FROM [opilaneSet] WHERE [opilaneID] = @opilaneID" InsertCommand="INSERT INTO [opilaneSet] ([eesnimi], [perenimi], [synniaeg], [ryhm_ryhmID]) VALUES (@eesnimi, @perenimi, @synniaeg, @ryhm_ryhmID)" SelectCommand="SELECT * FROM [opilaneSet]" UpdateCommand="UPDATE [opilaneSet] SET [eesnimi] = @eesnimi, [perenimi] = @perenimi, [synniaeg] = @synniaeg, [ryhm_ryhmID] = @ryhm_ryhmID WHERE [opilaneID] = @opilaneID">
            <DeleteParameters>
                <asp:Parameter Name="opilaneID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="eesnimi" Type="String" />
                <asp:Parameter Name="perenimi" Type="String" />
                <asp:Parameter DbType="Date" Name="synniaeg" />
                <asp:Parameter Name="ryhm_ryhmID" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="eesnimi" Type="String" />
                <asp:Parameter Name="perenimi" Type="String" />
                <asp:Parameter DbType="Date" Name="synniaeg" />
                <asp:Parameter Name="ryhm_ryhmID" Type="Int32" />
                <asp:Parameter Name="opilaneID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>
