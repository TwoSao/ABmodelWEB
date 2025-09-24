<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ABmodelWEB._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <section class="row" aria-labelledby="aspnetTitle">
            <h1 id="aspnetTitle">Kooli õpilased andmebaasi tebelist</h1>
            <p>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="opilaneID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." AllowSorting="True" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
                    <Columns>
                        <asp:BoundField DataField="eesnimi" HeaderText="eesnimi" SortExpression="eesnimi" />
                        <asp:BoundField DataField="perenimi" HeaderText="perenimi" SortExpression="perenimi" />
                        <asp:BoundField DataField="synniaeg" HeaderText="synniaeg" SortExpression="synniaeg" DataFormatString="{0:d}" />
                        <asp:BoundField DataField="ryhmNimi" HeaderText="ryhmNimi" SortExpression="ryhmNimi" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:opilaneMudelConnectionString3 %>" DeleteCommand="DELETE FROM [opilaneSet] WHERE [opilaneID] = @opilaneID" InsertCommand="INSERT INTO [opilaneSet] ([eesnimi], [perenimi], [synniaeg], [ryhm_ryhmID]) VALUES (@eesnimi, @perenimi, @synniaeg, @ryhm_ryhmID)" SelectCommand="SELECT opilaneSet.opilaneID, opilaneSet.eesnimi, opilaneSet.perenimi, opilaneSet.synniaeg, ryhmSet.ryhmNimi FROM opilaneSet INNER JOIN ryhmSet ON opilaneSet.ryhm_ryhmID = ryhmSet.ryhmID" UpdateCommand="UPDATE [opilaneSet] SET [eesnimi] = @eesnimi, [perenimi] = @perenimi, [synniaeg] = @synniaeg, [ryhm_ryhmID] = @ryhm_ryhmID WHERE [opilaneID] = @opilaneID">
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
        </section>
    </main>

</asp:Content>
