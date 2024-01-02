<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="HMS_Project.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <style>
       .home{
           width:100%;
           height:100vh;
           background-image:url('hotel.jpg');
           background-repeat:no-repeat;
           background-size:cover;
           background-position:center;
       }
       .home .content{
           text-align:center;
           padding-top:200px;
       }
       .home .content h5{
           color:black;
           font-size:40px;
           font-weight:500;
           text-shadow:0px 1px 1px white;
       }
       .home .content h3
       {
            color:black;
           font-size:50px;
           font-weight:400;
           text-shadow:0px 1px 1px white;
           margin-top:5px;
       }
       
       
       .home .content p{
            color:black;
           font-size:15px;
           font-weight:600;
           text-shadow:0px 1px 1px white;
           margin-bottom:30px;
            margin-top:5px;
       }
       .home .content a{
           padding:10px;
           background:white;
           color:black;
           letter-spacing:2px;
           font-weight:550;
           border-radius:5px;
           transition:0.5s;
           text-decoration:none;
       }
       .home .content a:hover{
           background:yellow;
       }
       @media(max-width:850px)
       {
           .home {
               background-position:50%;
           }
       }
        @media(max-width:450px)
       {
           .home .content h5 {
           font-size:25px;
           }
           .home .content h3{
               font-size:38px;
           }
           .home .content p{
               font-size:13px;
           }
       }
   </style>

<!-- Home Section Start -->
    <div class="home">
        <div class="content">
            <h5>BEST HOTEL SERVICE</h5>
            <h3>ONE CLICK AND READY</h3>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Magni aperiam,<br /> nulla doloremque illo hic rerum iusto ipsum, provident amet facilis iure non <br /> aliquid atque quibusdam laboriosam labore officia voluptatem minus?</p>
            <a href="Book.aspx">Book Now</a>
        </div>
    </div>
    <!-- Home Section End -->

</asp:Content>
