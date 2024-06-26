﻿<%@ Page Title="" Language="C#" MasterPageFile="~/School.Master" AutoEventWireup="true" CodeBehind="Award.aspx.cs" Inherits="school.Award" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="styles/styles.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .container {
            width: 1000px;
            height: 550px;
            margin-top: 70px;
            border: solid 1px;
            border-color: lightgrey;
            margin-left: 10px;
            box-shadow: 0px 0px 1px 0px rgba(0, 0, 0, 0.5);
            font-size: 10px;
           background-color:white;
        }

        h5 {
             font-size:large;
                       color:white;
                       padding-left:5px;
        }
            
        }
        /*.auto-style1 {
            display: block;
            padding: 6px 12px;
            font-size: 14px;
            line-height: 1.42857143;
            color: #555;
            background-color: #fff;
            background-image: none;
            border: 1px solid #ccc;
            border-radius: 4px;
            -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            -webkit-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
            -o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
            -webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
            transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
            transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
            tra*/nsition: border-color ease-in-out .15s,box-shadow ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
        }
    </style>
    <main style="margin-top: 65px">
        <div id="awardlist" runat="server">
        <div class="container">
             <div class="row" style="background-color: cornflowerblue">
                <h5>Awards</h5>
                </div>
            <br />
            <div class="row">
                <div class="col-md-3">              
                    <h6>Award</h6></div>
                <div class="col-md-4"></div>
                <div class="col-md-2">
                    <asp:Button ID="btnawardlist" runat="server" Text="Award list" Height="28px" Font-Size="10px" CssClass="form-control" />
                </div>
                <div class="col-md-2">
                    <asp:Button ID="btngiveaward" runat="server" Text="Give Award" CssClass="form-control" Height="28px" Font-Size="10px" OnClick="btngiveaward_Click" />
                </div>
            </div>

            <hr />
            <br />
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblbranch" runat="server" Text="Branch:" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" Height="25px" Width="350px" Font-Size="10px" color="yellow">
                        <asp:ListItem>select</asp:ListItem>
                        <asp:ListItem>Test</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblrole" runat="server" Text="Role:" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control" Height="25px" Width="350px" Font-Size="10px">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>Admin</asp:ListItem>
                        <asp:ListItem>Teacher</asp:ListItem>
                        <asp:ListItem>Accountant</asp:ListItem>
                        <asp:ListItem>Librarian</asp:ListItem>
                        <asp:ListItem>Student</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblwinner" runat="server" Text="Winner:" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:DropDownList ID="DropDownList3" runat="server" CssClass="form-control" Height="25px" Width="350px" Font-Size="10px">
                        <asp:ListItem>select</asp:ListItem>
                        <asp:ListItem>Test</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblawardname" runat="server" Text="Award Name:" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:TextBox ID="txtawardname" runat="server" CssClass="form-control" Height="25px" Width="350px" Font-Size="10px"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblgiftitem" runat="server" Text="Gift Item:" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:TextBox ID="txtgiftitem" runat="server" CssClass=" form-control" Height="25px" Width="350px" Font-Size="10px"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblcashprize" runat="server" Text="Cash price:" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:TextBox ID="txtcashprice" runat="server" CssClass="form-control" Height="25px" Width="350px" Font-Size="10px"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblawardreason" runat="server" Text="Award Reason:" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:TextBox ID="txtawardreason" runat="server" CssClass="form-control" Height="25px" Width="350px" Font-Size="10px"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblgivendate" runat="server" Text="Given Date:" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:TextBox ID="txtgivendate" runat="server" CssClass="form-control" TextMode="Date" Height="25px" Width="321px" Font-Size="10px"></asp:TextBox>
                </div>
            </div>
            <br />
            <hr />
            <div class="row">
                <div class="col-md-6"></div>
                <div class="col-md-3">
                    <asp:Button ID="btnsave" runat="server" Text="Save" CssClass="btn btn-success" Height="25px" Width="100px" Font-Size="10px" />
                </div>
            </div>
        </div>
            </div>
    </main>
</asp:Content>
