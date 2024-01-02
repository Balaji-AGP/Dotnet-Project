<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true"  EnableViewState="true"  EnableEventValidation="false" CodeBehind="Book.aspx.cs" Inherits="HMS_Project.Book" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
     section{
            margin:0;
            padding:0;
            background-image:url('resort.jpg');
            background-size:cover;
            font-family:sans-serif;
            opacity:1;
        }
        .form-signup{
            margin:0px auto;
            max-width:600px;
            background-color:black;
            padding:20px;
            opacity:0.7;
        }
        .design
        {
            opacity:0.7;
        }

        .book {

            padding:50px;
        }
        .main-text
        {
            text-align:center;
            text-shadow:0px 1px 1px white;
            font-weight:600;
        }
        .main-text h1 span{
            color:yellow;
            box-shadow:0px 1px 1px white;
        }
        
    </style>

    <section class="book" id="book">
        <div class="container">
            <div class="main-text">
                <h1><span>B</span>ook</h1>
            </div>

             

              <div class="container design">
                 
            <asp:GridView ID="GridView1" runat="server" CssClass="form-group"  AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="h_id" OnRowEditing="GridView1_RowEditing" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting ="GridView1_RowDeleting" OnRowUpdating="GridView1_RowUpdating"  >
            <Columns>
                <asp:BoundField DataField="h_id" HeaderText="Hotel Id"  ReadOnly="True"/>
                <asp:BoundField DataField="First_Name" HeaderText="First Name"  />

                <asp:BoundField DataField="Last_name" HeaderText="Last Name" />
                      <asp:BoundField DataField="mobile_number" HeaderText="Mobile Number" />
                     <%-- <asp:BoundField DataField="email" HeaderText="Email" />--%>
                <asp:TemplateField ConvertEmptyStringToNull="False" HeaderText="RoomType">    
                    <EditItemTemplate>
                        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="Room_type" DataValueField="Room_type" SelectedValue='<%# Eval("Room_type") %>'>
                        </asp:DropDownList>
                        <%--<asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Department") %>'></asp:TextBox>--%>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Room_type") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="Noa" HeaderText="Number Of Adult" />
                <asp:BoundField DataField="noc" HeaderText="Number Of Children" />
                <asp:BoundField DataField="Dateof_arrival" HeaderText="Date of arrival" />
                      
                
                 <asp:BoundField DataField="nod" HeaderText="Number Of Day" />
                
                <asp:CommandField ButtonType="Button" ShowEditButton="True" >
                <ControlStyle BackColor="#009933" ForeColor="White" />
                </asp:CommandField>
                <asp:CommandField ButtonType="Button" ShowDeleteButton="True">
                <ControlStyle BackColor="#CC0000" ForeColor="White" />
                </asp:CommandField>
            </Columns>
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle BackColor="White" ForeColor="#003399" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SortedAscendingCellStyle BackColor="#EDF6F6" />
            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
            <SortedDescendingCellStyle BackColor="#D6DFDF" />
            <SortedDescendingHeaderStyle BackColor="#002876" />
        </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection1 %>" SelectCommand="SELECT [Room_type] FROM [Room_type]"></asp:SqlDataSource>
       </div>
        <br />

     
   
        <div class="container">
            <div class="form-signup px-4">
                <h2 class="text-center text-white">Booking Form</h2>
                <div class="form-group">
                    <div class="row my-3">
                        <div class="col-md-6">
                             
                            
                         <asp:Label ID="Label1" runat="server" CssClass="text-white" Text="Label">First Name</asp:Label>
                            <asp:TextBox ID="Fname" CssClass="form-control" runat="server" ></asp:TextBox>
                        </div>
                        <div class="col-md-6">
                            <asp:Label ID="Label2" runat="server" CssClass="text-white" Text="Label">Last Name</asp:Label>
                            <asp:TextBox ID="Lname" CssClass="form-control" runat="server" ></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group my-3">
                        <asp:Label ID="Label3" runat="server" CssClass="text-white" Text="Label">Mobile Number</asp:Label>
                        <asp:TextBox ID="mobileno" CssClass="form-control" runat="server" ></asp:TextBox>
                    </div>
                    <div class="form-group my-3 ">                        
                        <asp:Label ID="Label4" runat="server" CssClass="text-white" Text="Label">Choose The RoomType</asp:Label>
                    
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" CssClass=" form-control" DataTextField="Room_type" DataValueField="Room_type" >
                    </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection1 %>" SelectCommand="SELECT [Room_type] FROM [Room_type]"></asp:SqlDataSource>
                    </div>
                    <div class="row my-3">
                        <div class="col-md-6">
                           <asp:Label ID="Label6" runat="server" CssClass="text-white" Text="Label">Number Of Adult</asp:Label>
                            <asp:TextBox ID="adult" CssClass="form-control" runat="server" ></asp:TextBox>
                        </div>
                        <div class="col-md-6">
                             <asp:Label ID="Label7" runat="server" CssClass="text-white" Text="Label">Number Of Children</asp:Label>
                            <asp:TextBox ID="child" CssClass="form-control" runat="server" ></asp:TextBox>
                        </div>
                    </div>
                     <div class="form-group my-3">
                      <asp:Label ID="Label5" runat="server" CssClass="text-white" Text="Label">Date Of Arrival</asp:Label>
                        <asp:TextBox ID="doa" CssClass="form-control" runat="server" ></asp:TextBox>
                    </div>
                    <div class="form-group my-3">
                        <asp:Label ID="Label8" runat="server" CssClass="text-white" Text="Label">Number Of Day</asp:Label>
                        <asp:TextBox ID="nod" CssClass="form-control" runat="server" ></asp:TextBox>
                    </div>
                    <div class="row my-3">
                        <asp:Button ID="Button3" CssClass="col text-center btn btn-warning" runat="server" Text="Reset" OnClick=" Button2_Click"/>
                        <asp:Button ID="Button4" CssClass="col text-center btn btn-primary" runat="server" Text="Submit" OnClick="Button1_Click"/>
                    </div>
                </div>
            </div>
        </div>        



            </div>
    </section>
</asp:Content>
