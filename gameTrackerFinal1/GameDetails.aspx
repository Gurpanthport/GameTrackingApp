<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GameDetails.aspx.cs" Inherits="gameTrackerFinal1.GameDetails" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
 <div class="container">
        <div class="row">
            <div class="col-md-offset-1 col-md-5">
                <h5>Add the Game Scores</h5>
                <br />
                <div class="form-group">
                    <label class="control-label" for="teamA">Team A</label>
                    <asp:TextBox runat="server" CssClass="form-control" ID="teamA" placeholder="TeamA" required="true"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label class="control-label" for="teamB">Team B</label>
                    <asp:TextBox runat="server" CssClass="form-control" ID="teamB" placeholder="TeamB" required="true"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label class="control-label" for="teamAScore">TeamA Score</label>
                    <asp:TextBox runat="server" CssClass="form-control" ID="teamAScore" placeholder="TeamAScore" required="true" ></asp:TextBox>
                </div>
                <div class="form-group">
                    <label class="control-label" for="teamBScore">TeamB Score</label>
                    <asp:TextBox runat="server" CssClass="form-control" ID="teamBScore" placeholder="TeamBScore" required="true" ></asp:TextBox>
</div>
                    
                
                    
                    <asp:Button Text="Cancel" ID="CancelButton" CssClass="btn btn-warning btn-lg" runat="server" 
                        UseSubmitBehavior="false" CausesValidation="false" OnClick="CancelButton_Click" />
                  <asp:Button Text="Save" ID="SaveButton" CssClass="btn btn-primary btn-lg" runat="server" OnClick="SaveButton_Click" />
                 
                
               </div>
                </div>
                
</div>
</asp:Content>
