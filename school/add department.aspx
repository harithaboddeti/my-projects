﻿<%@ Page Title="" Language="C#" MasterPageFile="~/School.Master" AutoEventWireup="true" CodeBehind="add department.aspx.cs" Inherits="school.add_department" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .container {
            width: 350px;
            height: 270px;
            margin-top: auto;
            border: solid 1px;
            border-color: lightgrey;
            margin-left: 40px;
            box-shadow: 0px 0px 1px 0px rgba(0, 0, 0, 0.5);
            font-size: 10px;
            background-color:white;
        }

        .container1 {
            width: 350px;
            height: 270px;
            margin-top: auto;
            border: solid 1px;
            border-color: lightgrey;
            margin-left: 400px;
            box-shadow: 0px 0px 1px 0px rgba(0, 0, 0, 0.5);
            background-color:white;
        }

        .textbox {
            font-size: 15px;
        }

        .main {
            background-color: aquamarine;
            font-size: 8px;
        }

        h5 {
            font-size:large;
                       color:white;
                       padding-left:5px;
        }
    </style>
    <main style="margin-top: 65px">
        <%--<div class="container pt-4"></div>--%>
        <div class="row">
            <div class="col-sm-1">
                <div class="container">
                      <div class="row" style="background-color: cornflowerblue">
 <h5>Add Department</h5></div>
                    <div class="row">
                   <br /><br />
                        <div class="row">
                            <div class="col-md-1"></div>
                            <div class="col-md-2">
                                <asp:Label ID="lblbranch" runat="server" Text="Branch:"></asp:Label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-1"></div>
                            <div class="col-md-10">
                                <asp:DropDownList runat="server" CssClass="form-control" Height="28px" Width="250px" Font-Size="10px">
                                    <asp:ListItem>select</asp:ListItem>
                                    <asp:ListItem>Test</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                  <div class="col-md-1"></div>
                        <div class="col-md-2">
                        <asp:Label ID="lblunitname" runat="server" Text="Department Name"></asp:Label></div>
                    </div>
                    <div class="row">
                        <div class="col-md-1"></div>
                        <div class="col-md-10">
                            <asp:TextBox ID="txtdepartmentname" runat="server" CssClass="form-control" Height="25px" Width="250px"></asp:TextBox>
                        </div>
                    </div>
                    <hr />

                    <div class="row">
                        <div class="col-md-8"></div>
                        <div class="col-md-4">
                            <asp:Button runat="server" Text="Save" CssClass="form-control" Font-Size="10px" />
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-2">
                <div class="container1">
                      <div class="row" style="background-color: cornflowerblue; margin-right:0px; margin-left:0px">
                     <h5>Department List</h5></div>
                    <div class="row">
                        <asp:GridView runat="server"></asp:GridView>
                    </div>
                </div>
            </div>
        </div>
    </main>

</asp:Content>
