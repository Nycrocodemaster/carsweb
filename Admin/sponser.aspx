<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="sponser.aspx.cs" Inherits="Admin_sponser" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="container"  style="padding-top:70px;">
            <div class="form-horizontal">
              
                <h align="center"><b> Enter Sponsors Details</b></h>
                <br>
                <br>
                <div class="form-group">
                  <asp:Label ID="Label7" runat="server" Text="Enter Description" CssClass="col-md-2 control-label"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

                        </div>
                    </div>

                <div class="form-group">
                  <asp:Label ID="Label1" runat="server" Text="Upload Image1" CssClass="col-md-2 control-label"></asp:Label>
                    <div class="col-md-3">
                        <asp:FileUpload ID="img01" runat="server" CssClass="form" />
                        </div>
                    </div>
             
                <div class="form-group">
                  <asp:Label ID="Label2" runat="server" Text="Upload Image2" CssClass="col-md-2 control-label"></asp:Label>
                    <div class="col-md-3">
                        <asp:FileUpload ID="img02" runat="server" CssClass="form" />
 
                        </div>
                    </div>

                <div class="form-group">
                  <asp:Label ID="Label3" runat="server" Text="Upload Image3" CssClass="col-md-2 control-label"></asp:Label>
                    <div class="col-md-3">
                        <asp:FileUpload ID="img03" runat="server" CssClass="form" />
                        
                        </div>
                    </div>

                <div class="form-group">
                  <asp:Label ID="Label4" runat="server" Text="Upload Image4" CssClass="col-md-2 control-label"></asp:Label>
                    <div class="col-md-3">
                        <asp:FileUpload ID="img04" runat="server" CssClass="form" />
                       
                        </div>
                    </div>

                <div class="form-group">
                  <asp:Label ID="Label5" runat="server" Text="Upload Image5" CssClass="col-md-2 control-label"></asp:Label>
                    <div class="col-md-3">
                        <asp:FileUpload ID="img05" runat="server" CssClass="form" />
                                                </div>
                    </div>
                <div class="form-group">
                  <asp:Label ID="Label6" runat="server" Text="Upload Image6" CssClass="col-md-2 control-label"></asp:Label>
                    <div class="col-md-3">
                        <asp:FileUpload ID="img06" runat="server" CssClass="form" />
                        
                          </div>
                    </div>

                <div class="form-group">
                    <div class="col-md-3 col-md-offset-2">
                    <asp:Button ID="Button1" runat="server" Text="Upload" CssClass="btn btn-primary btn-group-lg" />
                    <asp:Label ID="lblmessage" runat="server" CssClass="text-success"></asp:Label>
                    </div>
                    </div>
                </div>


            </div>

</asp:Content>

