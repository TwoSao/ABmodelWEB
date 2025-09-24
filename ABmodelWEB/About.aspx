<%@ Page Title="Kooli rühm" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="ABmodelWEB.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title">Kooli<%: Title %> õpilased andmebaasi rühmad</h2>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." ForeColor="Black" GridLines="Horizontal">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" />
            <asp:BoundField DataField="ryhmNimi" HeaderText="ryhmNimi" SortExpression="ryhmNimi" />
            <asp:BoundField DataField="osakondNimi" HeaderText="osakondNimi" SortExpression="osakondNimi" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#242121" />
    </asp:GridView>
<h1 id="aspnetTitle" style="box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.2; font-size: calc(1.375rem + 1.5vw); flex-shrink: 0; width: 744px; max-width: 100%; padding-right: 12px; padding-left: 12px; color: rgb(33, 37, 41); font-family: system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, &quot;Noto Sans&quot;, &quot;Liberation Sans&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:opilaneMudelConnectionString3 %>" DeleteCommand="DELETE FROM [ryhmSet] WHERE [ryhmID] = @ryhmID" InsertCommand="INSERT INTO [ryhmSet] ([ryhmNimi], [osakondID]) VALUES (@ryhmNimi, @osakondID)" SelectCommand="SELECT ryhmSet.ryhmNimi, osakond.osakondNimi FROM ryhmSet INNER JOIN osakond ON ryhmSet.osakondID = osakond.osakondID" UpdateCommand="UPDATE [ryhmSet] SET [ryhmNimi] = @ryhmNimi, [osakondID] = @osakondID WHERE [ryhmID] = @ryhmID">
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
</h1>
    </main>
</asp:Content>
