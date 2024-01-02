<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="HMS_Project.About" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .main-txt h1 span{
            color:yellow;
            box-shadow:0px 1px 1px white;
        }
        .main-txt h1{
            text-align:center;
        }
        .About{
            padding:50px;
            margin-top:50px;
            background:#f9f9f9;
        }
        .About .card{
            border-radius:10px;
        }
        .About .card img{
            border-radius:10px;
        }
        .About h2{
            font-weight:600;
            letter-spacing:1px;
        }
        .About p{
            font-weight:500;
        }
        #about-btn{
            width:150px;
            height:38px;
            border:none;
            border-radius:5px;
            background:yellow;
            color:white;
            letter-spacing:2px;
            font-weight:550;
            transition:0.5s ease;
            cursor:pointer;
        }
        #about-btn:hover{
            width:170px;
        }
    </style>


    <section class="About" id="About">
        <div class="container">

            <div class="main-txt">
                <h1><span>About</span>Us</h1>
            </div>

            <div class="row" style="margin-top:30px;">
                <div class="col-md-6 py-3 py-md-0">
                    <div class="card">
                        <img src="about.jpg" alt="" />
                    </div>
                </div>
                <div class="col-md-6  py-3 py-md-0">
                    <h2>How hotel Agency work</h2>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Magni aperiam, nulla doloremque illo hic rerum iusto ipsum, provident amet facilis iure non  aliquid atque quibusdam laboriosam labore officia voluptatem minus? illo hic rerum iusto ipsum, provident amet facilis iure non  aliquid atque quibusdam laboriosam labore officia voluptatem minus? illo hic rerum iusto ipsum, provident amet facilis iure non  aliquid atque quibusdam laboriosam labore officia voluptatem minus? illo hic rerum iusto ipsum, provident amet facilis iure non  aliquid atque quibusdam laboriosam labore officia voluptatem minus? illo hic rerum iusto ipsum, provident amet facilis iure non  aliquid atque quibusdam laboriosam labore officia voluptatem minus? illo hic rerum iusto ipsum, provident amet facilis iure non  aliquid atque quibusdam laboriosam labore officia voluptatem minus?</p>
                    <button id="about-btn">Read More...</button>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
