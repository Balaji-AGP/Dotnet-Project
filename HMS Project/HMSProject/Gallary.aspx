<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Gallary.aspx.cs" Inherits="HMS_Project.Gallary" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
         .main-txt h1{
            text-align:center;
        }
        .main-txt h1 span{
            color:yellow;
            box-shadow:0px 1px 1px white;
        }
        .Gallary{
            margin-top:50px;
        }
        .Gallary .card{
            border-radius:10px;
            box-shadow: rgba(0,0,0,0.1) 0px 4px 12px;
            cursor:pointer;
        }
        .Gallary .card img{
            border-radius:10px;
            transition:0.5s;
        }
        .Gallary .card img:hover{
            transform:scale(1.1);
        }
    </style>

    <section class="Gallary" id="Gallary">
        <div class="container">
            <div class="main-txt">
                <h1><span>G</span>allary</h1>
            </div>

            <div class="row"  style="margin-top:30px;">
                <div class="col-md-4 py-3 py-md-0">
                    <div class="card">
                        <img src="h.jpg" alt="" height="230px;"/>
                    </div>
                </div>
                <div class="col-md-4 py-3 py-md-0">
                    <div class="card">
                        <img src="Rm2.jpg" alt="" height="230px;"/>
                    </div>
                </div>
                <div class="col-md-4 py-3 py-md-0">
                    <div class="card">
                        <img src="Rm3.jpg" alt="" height="230px;"/>
                    </div>
                </div>
            </div>

             <div class="row"  style="margin-top:30px;">
                <div class="col-md-4 py-3 py-md-0">
                    <div class="card">
                        <img src="Rm4.jpg" alt="" height="230px;"/>
                    </div>
                </div>
                <div class="col-md-4 py-3 py-md-0">
                    <div class="card">
                        <img src="Rm5.jpg" alt="" height="230px;"/>
                    </div>
                </div>
                <div class="col-md-4 py-3 py-md-0">
                    <div class="card">
                        <img src="Rm6.jpg" alt="" height="230px;"/>
                    </div>
                </div>
            </div>



        </div>
    </section>
</asp:Content>
