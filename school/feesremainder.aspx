﻿<%@ Page Title="" Language="C#" MasterPageFile="~/School.Master" AutoEventWireup="true" CodeBehind="feesremainder.aspx.cs" Inherits="school.feesremainder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <style>
        .container {
            width: 1000px;
            height: auto;
            margin-top: 10px;
            border: solid 0px;
            border-color: lightgrey;
            margin-left: 1px;
            box-shadow: 0px 0px 1px 0px rgba(0, 0, 0, 0.5);
            background-color: white;
            padding-left: 15px;
            background-color: white;
        }

        h5 {
            font-size: large;
            color: white;
            padding-left: 5px;
        }
    </style>
    <main style="margin-top: 15px">
        <div class="container">
            <div class="row" style="background-color: cornflowerblue">
                <h5>Fees Remainder</h5>
            </div>
            <hr />
            <div class="row">
                <div class="col-md-8"></div>
                <div class="col-md-2">
                    <asp:Button ID="btnremainderlist" runat="server" Text="Remainder List" Height="28px" CssClass="form-control" OnClick="btnremainderlist_Click"  />
                </div>
                <div class="col-md-2">
                    <asp:Button ID="btnaddremainder" runat="server" Text="Add Remainder" CssClass="form-control" Height="28px" OnClick="btnaddremainder_Click" />
                </div>
            </div>
            <hr />
            <div runat="server" id="divremainderlist" visible="true">
                <h6>Remainder list</h6>
            </div>
            <div runat="server" id="divaddremainder" visible="false">
                <div class="row">
                    <div class="col-md-2"></div>
                    <div class="col-md-2">
                        <asp:Label ID="lblbranch" runat="server" Text="Branch:" CssClass="Label"></asp:Label>
                    </div>
                    <div class="col-md-6">
                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" Height="25px" Width="350px" color="yellow">
                            <asp:ListItem>select</asp:ListItem>
                            <asp:ListItem>Test</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-md-2"></div>
                    <div class="col-md-2">
                        <asp:Label ID="lblfrequency" runat="server" Text=" Frequency:" CssClass="Label"></asp:Label>
                    </div>
                    <div class="col-md-6">
                        <asp:DropDownList ID="DropDownList5" runat="server" CssClass="form-control" Height="25px" Width="350px" >
                            <asp:ListItem>Before</asp:ListItem>
                            <asp:ListItem>After</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-md-2"></div>
                    <div class="col-md-2">
                        <asp:Label ID="lbldays" runat="server" Text="Days:" CssClass="Label"></asp:Label>
                    </div>
                    <div class="col-md-6">
                        <asp:TextBox ID="txtdays" runat="server" CssClass="form-control" Height="25px" Width="350px"></asp:TextBox>
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-md-2"></div>
                    <div class="col-md-2">
                        <asp:Label ID="lblmessage" runat="server" Text="Message:" CssClass="Label"></asp:Label>
                    </div>
                    <div class="col-md-6">
                        <textarea id="TextArea1" cols="20" rows="2" class="form-control"></textarea>
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-md-2"></div>
                    <div class="col-md-2">
                        <asp:Label ID="lbldlttemplateid" runat="server" Text="Fine Value:" CssClass="Label"></asp:Label>
                    </div>
                    <div class="col-md-2">
                        <asp:TextBox ID="txttemplateid" runat="server" CssClass="form-control" Height="25px" Width="350px"></asp:TextBox>
                    </div>
                </div>
                <br />
                                <div class="row">
                    <div class="col-md-2"></div>
                    <div class="col-md-2">
                        <asp:Label ID="lblnotify" runat="server" Text=" Notify:" CssClass="Label"></asp:Label>
                    </div>
                    <div class="col-md-6">
                        <asp:CheckBox ID="CheckBox1" Text="Student" runat="server" />
                        <asp:CheckBox ID="CheckBox2" Text="Guardian" runat="server" />
                    </div>
                </div>
                <br />
                <hr />
                <div class="row">
                    <div class="col-md-6"></div>
                    <div class="col-md-3">
                        <asp:Button ID="btnsave" runat="server" Text="Save" CssClass="btn btn-success" Height="25px" Width="100px" />
                    </div>
                </div>
            </div>
        </div>
    </main>
</asp:Content>
