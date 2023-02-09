<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="bookissue.aspx.cs" Inherits="Library.bookissue" %>
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
                                    <h4>Book Issuing</h4>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100px" src="images/books.png" />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label>Member ID</label>
                                <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Member ID"></asp:TextBox>  
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Book ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Book ID" > </asp:TextBox>
                                        <asp:Button Class="btn btn-primary" ID="Button2" runat="server" Text="Go" />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-md-6">
                                <label>Member Name</label>
                                <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Member Name" ReadOnly="True"></asp:TextBox>  
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Book Name</label>
                                <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Book Name" ReadOnly="True"> </asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <br />

                        <div class="row">
                            <div class="col-md-6">
                                <label>Start Date</label>
                                <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Member Name" ReadOnly="False" TextMode="Date"></asp:TextBox>  
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>End Date</label>
                                <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Book Name" ReadOnly="False" TextMode="Date"> </asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <br />

                        <div class="row">
                            <div class="col-6">
                                <div class="form-group">
                                    <center>
                                        <asp:Button Class="btn btn-primary" Width="100%" ID="Button3" runat="server" Text="Issue" />
                                    </center>
                                </div>
                            </div>
                            <div class="col-6">
                                <div class="form-group">
                                    <center>
                                        <asp:Button Class="btn btn-success" Width="100%" ID="Button4" runat="server" Text="Return" />
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
                                    <h4>Issued Books' List</h4>
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
