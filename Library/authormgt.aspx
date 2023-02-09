<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="authormgt.aspx.cs" Inherits="Library.authormgt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-5">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Author Details</h4>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100px" src="images/writer.png" />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <label>Author ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="ID"></asp:TextBox>
                                        <asp:Button Class="btn btn-primary" ID="Button2" runat="server" Text="Go" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-8">
                                <label>Author Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Author Name" > </asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-4">
                                <div class="form-group">
                                    <center>
                                        <asp:Button Class="btn btn-success" Width="100%" ID="Button1" runat="server" Text="Add" />
                                    </center>
                                </div>
                            </div>
                            <div class="col-4">
                                <div class="form-group">
                                    <center>
                                        <asp:Button Class="btn btn-primary" Width="100%" ID="Button3" runat="server" Text="Update" />
                                    </center>
                                </div>
                            </div>
                            <div class="col-4">
                                <div class="form-group">
                                    <center>
                                        <asp:Button Class="btn btn-danger" Width="100%" ID="Button4" runat="server" Text="Delete" />
                                    </center>
                                </div>
                            </div>
                        </div>
                    </div>
                </div><br />
            </div>
            
            <div class="col-md-7">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Authors' List</h4>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <asp:GridView Class="table table-stripped table-bordered" ID="GridView1" runat="server"></asp:GridView>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
