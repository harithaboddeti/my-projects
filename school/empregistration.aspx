﻿<%@ Page Title="" Language="C#" MasterPageFile="~/School.Master" AutoEventWireup="true" CodeBehind="empregistration.aspx.cs" Inherits="school.empregistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="styles/styles.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        /*a{
          width:auto;
          height:0px;
       }*/
        h6 {
            color: gold;
            font-size:18px;
            /*font-size: 15px;*/
        }
        h5{
             font-size:large;
                       color:white; 

        }
        school-icon-heading {
            font-size: 24px;
        }

        .container {
            width: auto;
            height: auto;
            margin-top: 0px;
            border: solid 0px;
            border-color: lightgrey;
            margin-left: 20px;
            margin-right: 20px;
            box-shadow: 0px 0px 5px 0px rgba(0, 0, 0, 0.5);
            font-size: 10px;
            background-color:white;
        }
    </style>
    <%-- <nav class="navbar navbar-default">
  <div class="container">
    <div class="navbar-header">
      <a href="#">Add Employee</a>
    </div>
      </div>
     </nav>--%>
    <main style="margin-top: 0px;">
        <%--  <div class="container pt-4"></div>--%>
        <div class="container">
             <div class="row" style="background-color: cornflowerblue" >
            <h5>Add Employee</h5></div>
            <h6 >Acadamic Details
            </h6>
            <br />
            <asp:Panel ID="Panel1" runat="server" text="Add Employee" CssClass="Label"></asp:Panel>
            <div class="row">
                <div class="col-md-3">
                    <asp:Label ID="lblbranch" runat="server" Text="Branch" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-3">
                    <asp:Label ID="lblrole" runat="server" Text="Role" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-3">
                    <asp:Label ID="lbljoindate" runat="server" Text="Joining Date" CssClass="Label"></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3">
                    <asp:DropDownList ID="DropDownLisbranch1" runat="server" CssClass="form-control" Height="28px" Width="150px" Font-Size="10px">
                        <asp:ListItem>select</asp:ListItem>
                        <asp:ListItem>test</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="col-md-3">
                    <asp:DropDownList ID="DropDownListrole" runat="server" CssClass="form-control" Height="28px" Width="150px" Font-Size="10px">
                        <asp:ListItem>select</asp:ListItem>
                        <asp:ListItem>admin</asp:ListItem>
                        <asp:ListItem>teacher</asp:ListItem>
                        <asp:ListItem>librarian</asp:ListItem>
                        <asp:ListItem>receptionist</asp:ListItem>
                        <asp:ListItem>accountant</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="col-md-3">
                    <asp:TextBox ID="txtjoindate" runat="server" TextMode="Date" CssClass="form-control" Height="28px" Width="150px" Font-Size="10px"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-4">
                    <asp:Label ID="lbldesignation" runat="server" Text="Designation" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-4">
                    <asp:Label ID="lbldepartment" runat="server" Text="Department" CssClass="Label"></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <asp:DropDownList ID="DropDownListdesignation" runat="server" CssClass="form-control" Height="28px" Width="250px" Font-Size="10px">
                        <asp:ListItem>first select the branch</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="col-md-4">
                    <asp:DropDownList ID="DropDownListdepartment" runat="server" CssClass="form-control" Height="28px" Width="250px" Font-Size="10px">
                        <asp:ListItem>first select the branch</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-3">
                    <asp:Label ID="lblqualification" runat="server" Text="Qualification" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-3">
                    <asp:Label ID="lblexperience" runat="server" Text="Experience Details"  CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-3">
                    <asp:Label ID="lbltotalexperience" runat="server" Text="Total Experience" CssClass="Label"></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3">
                    <textarea id="txtAreaqualification" cols="43" rows="1" class="form-control"></textarea>
                </div>
                &nbsp&nbsp&nbsp&nbsp
        <div class="col-md-3">
            <textarea id="txtAreaexperience" cols="43" rows="1" class="form-control"></textarea>
        </div>
                <div class="col-md-3">
                    <asp:TextBox ID="txttotalexperience" runat="server" class="form-control" Height="28px" Width="250px" Font-Size="10px"></asp:TextBox>
                </div>
            </div>
            <br />
            <h6>
<%--                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>--%>
                    Employee Details 
               
            </h6>
            <hr />
            <br />
            <div class="row">
                <div class="col-md-4">
                    <asp:Label ID="lblname" runat="server" Text="Name" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-4">
                    <asp:Label ID="lblgender" runat="server" Text="Gender" CssClass="Label"></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <%--<div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>--%>
                        <asp:TextBox ID="txtname" runat="server" CssClass="form-control" Height="28px" Width="250px" Font-Size="10px"></asp:TextBox>
                    </div>
               <%-- </div>--%>
              <%--  <br />--%>
                <div class="col-md-4">
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" Height="28px" Width="250px" Font-Size="10px">
                        <asp:ListItem>select</asp:ListItem>
                        <asp:ListItem>male</asp:ListItem>
                        <asp:ListItem>female</asp:ListItem>
                    </asp:DropDownList>
                </div>

            </div>
            <br />
            <div class="row">
                <div class="col-md-3">
                    <asp:Label ID="lblreligion" runat="server" Text="Religion" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-3">
                    <asp:Label ID="lblbloodgroup" runat="server" Text="Blood Group" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-3">
                    <asp:Label ID="lbldob" runat="server" Text="Date Of Birth" CssClass="Label"></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3">
                    <asp:TextBox ID="txtreligion" runat="server" CssClass="form-control " Height="28px" Width="150px" Font-Size="10px"></asp:TextBox>
                </div>
                <div class="col-md-3">
                    <asp:DropDownList ID="DropDownListbloodgroup" runat="server" CssClass="form-control" Height="28px" Width="150px" Font-Size="10px">
                        <asp:ListItem>select</asp:ListItem>
                        <asp:ListItem>o+</asp:ListItem>
                        <asp:ListItem>o-</asp:ListItem>
                        <asp:ListItem>a+</asp:ListItem>
                        <asp:ListItem>a-</asp:ListItem>
                        <asp:ListItem>b+</asp:ListItem>
                        <asp:ListItem>b-</asp:ListItem>
                        <asp:ListItem>ab+</asp:ListItem>
                        <asp:ListItem>ab-</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="col-md-3">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fas fa-birthday-cake"></i></span>
                        <asp:TextBox ID="txtdob" runat="server" TextMode="Date" CssClass="form-control" Height="28px" Width="210px" Font-Size="10px"></asp:TextBox>
                    </div>
                </div>
            </div>
            <br />
            <br />
            <div class="row">
                <div class="col-md-4">
                    <asp:Label ID="lblmobile" runat="server" Text="Mobile No." CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-4">
                    <asp:Label ID="lblemail" runat="server" Text="E-Mail" CssClass="Label"></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <asp:TextBox ID="txtmobile" runat="server" CssClass="form-control" Height="28px" Width="250px" Font-Size="10px"></asp:TextBox>
                </div>
                <div class="col-md-4">
                    <asp:TextBox ID="txtemail" runat="server" CssClass="form-control" Height="28px" Width="250px" Font-Size="10px"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-4">
                    <asp:Label ID="lblpreentadress" runat="server" Text="Present Address" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-4">
                    <asp:Label ID="lblpermanentadress" runat="server" Text="Permenant Address" CssClass="Label"></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <textarea id="TextAreapresent" cols="50" rows="2" class="form-control"></textarea>
                </div>
                <div class="col-md-4">
                    <textarea id="TextAreapermanent" cols="50" rows="2" class="form-control"></textarea>
                </div>
            </div>
            <br>
            <div class="row">
                <div class="col-md-4">
                    <asp:Label ID="lblprofile" runat="server" Text="Profile Picture" CssClass="Label"></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <%--<span class="input-group-addon"><i class="glyphicon glyphicon-cloud-upload"></i></span>--%>
                    <asp:FileUpload ID="FileUploadprofile" runat="server" CssClass="form-control" Height="100px" Width="600px" align="center" />
                </div>
            </div>
            <br />
            <h6>Login Details</h6>
            <hr />
            <div class="row">
                <div class="col-md-3">
                    <asp:Label ID="lblusername" runat="server" Text="User Name" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-3">
                    <asp:Label ID="lblpassword" runat="server" Text="Password" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-3">
                    <asp:Label ID="lblretypepwd" runat="server" Text="Re-Type Password" CssClass="Label"></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3">
                    <div class="input-group">
                       <%-- <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>--%>
                        <asp:TextBox ID="txtusername" runat="server" CssClass="form-control" Height="28px" Width="200px" Font-Size="10px"></asp:TextBox>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="input-group">
                        <%--<span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>--%>
                        <asp:TextBox ID="txtpassword" runat="server" CssClass="form-control" Height="28px" Width="200px" Font-Size="10px"></asp:TextBox>
                    </div>
                </div>
                <div class="col-md-2">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                        <asp:TextBox ID="txtretypepwd" runat="server" CssClass="form-control" Height="28px" Width="200px" Font-Size="10px"></asp:TextBox>
                    </div>
                </div>
            </div>
            <br />
            <h6>Social Links</h6>
            <hr />
            <div class="row">
                <div class="col-md-3">
                    <asp:Label ID="lblfacebook" runat="server" Text="Facebook" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-3">
                    <asp:Label ID="lbltwitter" runat="server" Text="Twitter" CssClass="Label"> </asp:Label>
                </div>
                <div class="col-md-3">
                    <asp:Label ID="lbllinkedin" runat="server" Text="LinkedIn" CssClass="Label"></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3">
                    <div class="input-group">
                        <i class="fa fa-facebook-official"></i>
                        <asp:TextBox ID="txtfacebook" runat="server" CssClass="form-control" Height="28px" Width="200px" Font-Size="10px"></asp:TextBox>
                    </div>
                </div>
                <div class="col-md-3">
                    <asp:TextBox ID="txttwitter" runat="server" CssClass="form-control" Height="28px" Width="200px" Font-Size="10px"></asp:TextBox>
                </div>
                <div class="col-md-3">
                    <asp:TextBox ID="txtlinkedin" runat="server" CssClass="form-control" Height="28px" Width="200px" Font-Size="10px"></asp:TextBox>
                </div>
            </div>
            <h6>Bank Details</h6>
            <hr />
            <div class="row">
                <div class="col-md-3">
                    <asp:CheckBox ID="CheckBoxhidedetails" runat="server" />
                    <asp:Label ID="lblhidedetails" runat="server" Text="Hide Bank Details" CssClass="Label"></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3">
                    <asp:Label ID="lblbankname" runat="server" Text="Bank Name" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-3">
                    <asp:Label ID="lblholdername" runat="server" Text="Holder Name" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-3">
                    <asp:Label ID="lblbankbranch" runat="server" Text="Bank Branch" CssClass="Label"></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3">
                    <asp:TextBox ID="txtbankname" runat="server" CssClass="form-control" Height="28px" Width="200px" Font-Size="10px"></asp:TextBox>
                </div>
                <div class="col-md-3">
                    <asp:TextBox ID="txtholdername" runat="server" CssClass="form-control" Height="28px" Width="200px" Font-Size="10px"></asp:TextBox>
                </div>
                <div class="col-md-3">
                    <asp:TextBox ID="txtbankbranch" runat="server" CssClass="form-control" Height="28px" Width="200px" Font-Size="10px"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-3">
                    <asp:Label ID="lblbankaddress" runat="server" Text="Bank Address" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-3">
                    <asp:Label ID="lblifsccode" runat="server" Text="IFSC Code" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-3">
                    <asp:Label ID="lblaccno" runat="server" Text="Account Number" CssClass="Label"></asp:Label>
                </div>
                <%-- <div class="col-md-2">
            <asp:Label ID="lblaccountno" runat="server" Text="account number"></asp:Label>
        </div>--%>
            </div>
            <div class="row">
                <div class="col-md-3">
                    <asp:TextBox ID="txtbankaddress" runat="server" CssClass="form-control " Height="28px" Width="200px" Font-Size="10px"></asp:TextBox>
                </div>
                <div class="col-md-3">
                    <asp:TextBox ID="txtifsccode" runat="server" CssClass="form-control " Height="28px" Width="200px" Font-Size="10px"></asp:TextBox>
                </div>
                <div class="col-md-3">
                    <asp:TextBox ID="txtaccountno" runat="server" CssClass="form-control " Height="28px" Width="200px" Font-Size="10px"></asp:TextBox>
                </div>
            </div>
            <br />
                              <div class="row">
                        <div class="col-md-8"></div>
                        <div class="col-md-4">
                            <asp:Button runat="server" Text="Save" CssClass="btn btn-success" Font-Size="10px" />
                        </div>
                    </div>
        </div>
    </main>
</asp:Content>
