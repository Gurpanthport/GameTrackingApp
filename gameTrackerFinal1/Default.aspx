<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="gameTrackerFinal1.Default" %>


<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-md-offset-2 col-md-8">
                 <asp:GridView runat="server" CssClass="grid table" ID="GamesGridView" AutoGenerateColumns="false" BackColor="#0066ff">
        <Columns>

            <asp:BoundField DataField="teamA" HeaderText="Team A" Visible="true" /> 
            <asp:BoundField DataField="teamB" HeaderText="Team B" Visible="true" /> 
            <asp:BoundField DataField="teamAScore" HeaderText="Team A Score" Visible="true" /> 
            <asp:BoundField DataField="teamBScore" HeaderText="Team A Score" Visible="true" /> 

        </Columns>
                </asp:GridView>
            </div>
        </div>
    
</div>
</asp:Content>
