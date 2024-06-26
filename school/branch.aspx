﻿<%@ Page Title="" Language="C#" MasterPageFile="~/School.Master" AutoEventWireup="true" CodeBehind="branch.aspx.cs" Inherits="school.branch" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="styles/styles.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .container {
            width: 1000px;
            height: 750px;
            margin-top: 60px;
            border: solid 1px;
            border-color: lightgrey;
            margin-left: 10px;
            box-shadow: 0px 0px 1px 0px rgba(0, 0, 0, 0.5);
            font-size: 10px;
            background-color: white;
        }
 
    h5{
            color:white;
            font-size:large;
            margin-left:10px;
        }
    </style>

  <%--  Printcode----%>
    <script type="text/javascript">
        function PrintGridData() {
            var prtGrid = document.getElementById('<%=GridView1.ClientID %>');
            var prtwin = window.open('', 'PrintGridView',
'left=100,top=100,width=400,height=400,tollbar=0,scrollbars=1,status=0,resizable=1');
            prtwin.document.write(prtGrid.outerHTML);
            prtwin.document.close();
            prtwin.focus();
            prtwin.print();
            prtwin.close();
       }
   </script>
    <%------Excel--------%>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script src="table2excel.js" type="text/javascript"></script>
<script type="text/javascript">
    $("body").on("click", "#btnExport", function () {
        $("[id*=GridView1]").table2excel({
            filename: "Table.xls"
        });
    });
</script>
 <%-- PDF--%>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.22/pdfmake.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/0.4.1/html2canvas.min.js"></script>
<script type="text/javascript">
    $("body").on("click", "#btnExport1", function () {
        html2canvas($('[id*=GridView1]')[0], {
            onrendered: function (canvas) {
                var data = canvas.toDataURL();
                var docDefinition = {
                    content: [{
                        image: data,
                        width: 500
                    }]
                };
                pdfMake.createPdf(docDefinition).download("Table.pdf");
            }
        });
    });
</script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <main style="margin-top: 15px">

        <div class="row">
            <div class="col-md-2">
                <asp:Button ID="btnbranchlist" CausesValidation="false" runat="server" Text="Branch List"  Height="25px" Width="80px" Font-Size="10px" OnClick="btnbranchlist_Click" Font-Bold="true"  Cssclass="btn btn-primary"/>
            </div>
            <div class="col-md-2">
                <asp:Button ID="btncreatebranch" runat="server" Text="Create Branch" Cssclass="btn btn-primary" Height="25px" Width="100px" Font-Size="10px" OnClick="btncreatebranch_Click"  Font-Bold="true"  />
            </div>
            </div>
                <div class="container" id ="divlist" runat="server" visible="true">
             <div class="row" style="background-color: cornflowerblue">
            <h5>Branch List</h5>
        </div>
              <br />
             
             <%--<input type="button" id="btnExport" value="Export" />--%>
         <div class="row"><div class="col-md-4"> 
                    <asp:Button ID="Button1" runat="server" Text="Excel" />
                    <input type="button" id="btnPrint" value="Print" onclick="PrintGridData()" />
                    <input type="button" id="btnExport1" value="PDF" />
                <%--<input type="button" id="btnExport" value="Export"  onclick="Export()"/>--%>
             </div>
             <div class="col-md-5"> 
                 <asp:TextBox ID="txtSearch" runat="server" Placeholder="BranchName"></asp:TextBox>
                 <asp:Button ID="btnSearch" runat="server" Text="Search"  CausesValidation="false"  OnClick="btnSearch_Click" />
             </div>
             </div>
             <br />
                   <div>
              <asp:GridView ID="GridView1" runat="server" CssClass="table table-bordered table-hover "  AutoGenerateColumns="False"  DataKeyNames="Branchid"  Height="35px" Width="100px" ForeColor="#333333" GridLines="None" RowHeaderColumn="Address" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" >
                 <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                 <Columns>
                     <asp:BoundField DataField="Branchid" HeaderText="Branchid" InsertVisible="False" ReadOnly="True" SortExpression="Branchid" />
                     <asp:BoundField DataField="BranchName" HeaderText="BranchName" SortExpression="BranchName" />
                     <asp:BoundField DataField="SchoolName" HeaderText="SchoolName" SortExpression="SchoolName" />
                     <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                     <asp:BoundField DataField="MobileNumber" HeaderText="MobileNumber" SortExpression="MobileNumber" />
                     <asp:BoundField DataField="Currency" HeaderText="Currency" SortExpression="Currency" />
                     <asp:BoundField DataField="CurrencySymbol" HeaderText="CurrencySymbol" SortExpression="CurrencySymbol" />
                     <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                     <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                     <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                 <asp:CommandField ButtonType="Link" ShowEditButton="true" ShowDeleteButton ="true"
            ItemStyle-Width="150" DeleteImageUrl="~/images/Delete.png" HeaderText="Action" >
                     
<ItemStyle Width="150px"></ItemStyle>
                     </asp:CommandField>
                     
                 </Columns>
                 <EditRowStyle BackColor="#999999" />
                 <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
                 <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" BorderColor="#CCCCFF" BorderStyle="Solid" Font-Size="X-Small" HorizontalAlign="Center" VerticalAlign="Bottom" />
                 <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                 <RowStyle ForeColor="#333333" BackColor="#F7F6F3" HorizontalAlign="Center" />
                 <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                 <SortedAscendingCellStyle BackColor="#E9E7E2" />
                 <SortedAscendingHeaderStyle BackColor="#506C8C" />
                 <SortedDescendingCellStyle BackColor="#FFFDF8" HorizontalAlign="Center" VerticalAlign="Middle" />
                 <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
             </asp:GridView>
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SchoolConnectionString %>" SelectCommand="SELECT * FROM [Branch]" DeleteCommand="delete from [Branch] where @BranchId=BranchId" FilterExpression="UserName LIKE '%{0}%'">
<FilterParameters>
<asp:ControlParameter Name="BranchName" ControlID="txtSearch" PropertyName="Text" />
</FilterParameters></asp:SqlDataSource>
            
                       </div>
        <br />
        <br />
                    </div>
        <br />
          <div class="container1" runat="server" id="divcreate" visible="True">
         <div class="row" style="background-color: cornflowerblue">
                <h5>Create Branch</h5>
            </div>
            <br />
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblbranchname" runat="server" Text="Branch Name" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:TextBox ID="txtbranchname" runat="server" CssClass="form-control" Height="25px" Width="350px" Font-Size="10px" placeholder="Enter BranchName" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RFVBranchName" runat="server" ErrorMessage="Enter BranchName" ControlToValidate="txtbranchname" ForeColor="#FF5050"></asp:RequiredFieldValidator>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblschoolname" runat="server" Text="School Name:"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:TextBox ID="txtschoolname" runat="server" CssClass="form-control" Height="25px" Width="350px" Font-Size="10px" placeholder="Enter SchoolName" ></asp:TextBox>
               <asp:RequiredFieldValidator ID="RFVSchoolName" runat="server" ControlToValidate="txtschoolname" ErrorMessage="Enter School Name" ForeColor="#FF5050"></asp:RequiredFieldValidator>
                    </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblemail" runat="server" Text="E-mail:" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:TextBox ID="txtemail" runat="server" CssClass="form-control" Height="25px" Width="350px" Font-Size="10px" placeholder="Enter Email Address"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblmobileno" runat="server" Text="Mobile Number:" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:TextBox ID="txtmobileno" runat="server" CssClass="form-control" Height="25px" Width="350px" Font-Size="10px" placeholder="Enter Mobile Number"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblcurrency" runat="server" Text="Currency:" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:TextBox ID="txtcurrency" runat="server" CssClass="form-control" Height="25px" Width="350px" Font-Size="10px" placeholder="Enter Currency"></asp:TextBox>
                </div>
            </div>
            <br />
            
                        <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblcurrencysymbol" runat="server" Text="Currency Symbol:" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:TextBox ID="txtcurrencysymbol" runat="server" CssClass="form-control" Height="25px" Width="350px" Font-Size="10px" placeholder="Enter Currency Symbol"></asp:TextBox>
                </div>
            </div>
            <br />
                        <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblcity" runat="server" Text="City:" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:TextBox ID="txtcity" runat="server" CssClass="form-control" Height="25px" Width="350px" Font-Size="10px" placeholder="Enter City"></asp:TextBox>
                </div>
            </div>
            <br />
                        <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lblstate" runat="server" Text="State:" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:TextBox ID="txtstate" runat="server" CssClass="form-control" Height="25px" Width="350px" Font-Size="10px" placeholder="Enter State"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtstate" ErrorMessage="Please Enter State " ForeColor="#FF5050"></asp:RequiredFieldValidator>

                </div>
            </div>
            <br />
            
                        <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <asp:Label ID="lbladdress" runat="server" Text="Address:" CssClass="Label"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:TextBox ID="txtaddress" runat="server" CssClass="form-control" Height="30px" Width="350px" Font-Size="10px" TextMode="MultiLine" placeholder="Enter Address" ></asp:TextBox>   
                </div>
            </div>
            <br />
            <hr />
            <div class="row">
                <div class="col-md-6"></div>
                <div class="col-md-3">
                    <asp:Button ID="btnsave" runat="server" Text="Save" CssClass="btn btn-success" Height="25px" Width="100px" Font-Size="10px" OnClick="btnsave_Click1" />
                </div>
            </div>
            </div>
             </main>
</asp:Content>
