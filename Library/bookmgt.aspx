<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="bookmgt.aspx.cs" Inherits="Library.bookmgt" %>
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
                                    <h4>Book Management</h4>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="75px" src="images/books.png" />
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
                                <asp:FileUpload CssClass="form-control" ID="FileUpload1" runat="server" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-3">
                                <label>Book ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="ID"></asp:TextBox>
                                        <asp:Button Class="btn btn-primary" ID="Button2" runat="server" Text="Go" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-9">
                                <label>Book Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Book Name"> </asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <label>Language</label>
                                <div class="form-group">
                                    <asp:DropDownList CssClass="form-control" ID="DropDownList1" runat="server">
                                        <asp:ListItem Text="English" Value="English" />
                                        <asp:ListItem Text="Telugu" Value="Telugu" />
                                        <asp:ListItem Text="Hindi" Value="Hindi" />
                                        <asp:ListItem Text="German" Value="German" />
                                    </asp:DropDownList>
                                </div>

                                <label>Publisher</label>
                                <div class="form-group">
                                    <asp:DropDownList CssClass="form-control" ID="DropDownList2" runat="server">
                                        <asp:ListItem Text="Publisher 1" Value="Publisher 1" />
                                        <asp:ListItem Text="Publisher 2" Value="Publisher 2" />
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Autor Name</label>
                                <div class="form-group">
                                    <asp:DropDownList CssClass="form-control" ID="DropDownList3" runat="server">
                                        <asp:ListItem Text="Author 1" Value="Author 1" />
                                        <asp:ListItem Text="Author 2" Value="Author 2" />
                                    </asp:DropDownList>
                                </div>
                                <label>Publish Date</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Date" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Genre</label>
                                <div class="form-group">
                                    <asp:ListBox CssClass="form-control" ID="ListBox1" runat="server" SelectionMode="Multiple">
                                        <asp:ListItem Text="Motivation" Value="Motivation"/>
                                        <asp:ListItem Text="Self-Help" Value="Self-Help"/>
                                        <asp:ListItem Text="Cooking" Value="Cooking"/>
                                        <asp:ListItem Text="Wellness" Value="Wellness"/>
                                        <asp:ListItem Text="Crime" Value="Crime"/>
                                        <asp:ListItem Text="Art" Value="Art"/>
                                    </asp:ListBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <label>Edition</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="Edition" ReadOnly="False"></asp:TextBox>
                                </div>
                                <label>Actual Stock</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="10" ReadOnly="False" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Book Cost(per Unit)</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="Book Cost" ReadOnly="False" TextMode="Number"></asp:TextBox>
                                </div>
                                <label>Available Stock</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="1" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Pages</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="Pages" TextMode="Number"></asp:TextBox>
                                </div>
                                <label>Issued Books</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="9" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-12">
                                <label>Book Description</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server" placeholder="Book Description" ReadOnly="True" TextMode="MultiLine" Rows="2"></asp:TextBox>
                                </div>
                            </div>
                        </div><br />
                        <div class="row">
                            <div class="col-4">
                                <div class="form-group">
                                    <center>
                                        <asp:Button Class="btn btn-success" Width="100%" ID="Button4" runat="server" Text="Add" />
                                    </center>
                                </div>
                            </div>
                            <div class="col-4">
                                <div class="form-group">
                                    <center>
                                        <asp:Button Class="btn btn-warning" Width="100%" ID="Button1" runat="server" Text="Update" />
                                    </center>
                                </div>
                            </div>
                            <div class="col-4">
                                <div class="form-group">
                                    <center>
                                        <asp:Button Class="btn btn-danger" Width="100%" ID="Button3" runat="server" Text="Delete" />
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
                                    <h4>Book Inventory Management</h4>
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
