<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Service.aspx.cs" Inherits="HMS_Project.Service" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style>
        .services{
            background:#f9f9f9;
            margin-top:50px;
        }
        .main-txt h1 span{
            color:yellow;
            box-shadow:0px 1px 1px white;
        }
         .main-txt h1{
            text-align:center;
        }
        .services .card{
            box-shadow:rgba(0,0,0,0.1) 0px 4px 12px;
            border:none;
            cursor:pointer;
        }
         .services .card i{
             font-size:80px;
             text-align:center;
             color:yellow;
             margin-top:20px;

         }
          .services .card .card-body  h3{
              font-weight:600;
          }
          .services .card .card-body{
              text-align:center;
          }
    </style>

    <section class="services" id="services">
        <div class="container">

            <div class="main-txt">
                <h1><span>S</span>ervices</h1>
            </div>

            <div class="row" style="margin-top:30px;">
                <div class="col-md-4 py-3 py-md-0">

                    <div class="card">
                        <i class="fas fa-hotel"></i>
                        <div class="card-body">
                            <h3>Afforable Hotel</h3>
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Magni aperiam, nulla doloremque illo hic rerum iusto ipsum</p>
                        </div>
                    </div>
                </div>

                <div class="col-md-4 py-3 py-md-0">

                    <div class="card">
                        <i class="fas fa-utensils"></i>
                        <div class="card-body">
                            <h3>Food & Drinks</h3>
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Magni aperiam, nulla doloremque illo hic rerum iusto ipsum</p>
                        </div>
                    </div>
                </div>


                <div class="col-md-4 py-3 py-md-0">

                    <div class="card">
                        <i class="fas fa-bullhorn"></i>
                        <div class="card-body">
                            <h3>Safty Guide</h3>
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Magni aperiam, nulla doloremque illo hic rerum iusto ipsum</p>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row" style="margin-top:30px;">
                <div class="col-md-4 py-3 py-md-0">

                    <div class="card">
                        <i class="fas fa-parking"></i>
                        <div class="card-body">
                            <h3>Car Parking</h3>
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Magni aperiam, nulla doloremque illo hic rerum iusto ipsum</p>
                        </div>
                    </div>
                </div>

                <div class="col-md-4 py-3 py-md-0">

                    <div class="card">
                        <i class="fas fa-dumbbell"></i>
                        <div class="card-body">
                            <h3>Fitness</h3>
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Magni aperiam, nulla doloremque illo hic rerum iusto ipsum</p>
                        </div>
                    </div>
                </div>


                <div class="col-md-4 py-3 py-md-0">

                    <div class="card">
                        <i class="fas fa-wifi"></i>
                        <div class="card-body">
                            <h3>Wifi & Internet</h3>
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Magni aperiam, nulla doloremque illo hic rerum iusto ipsum</p>
                        </div>
                    </div>
                </div>
            </div>
            

        </div>
    </section>
</asp:Content>
