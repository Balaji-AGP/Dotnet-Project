<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Package.aspx.cs" Inherits="HMS_Project.Package" %>
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
            margin-top:30px;
            font-weight:600;
            text-shadow:0px 1px 1px black;
        }
        .packages .card{
            border-radius:5px;
            border:none;
            box-shadow:rgba(0,0,0,0.1)0px 4px 12px;
        }
        .packages .card img{
            border-radius:5px;
        }
        .packages .card .card-body{
            background:transparent;
        }
        .packages .card .card-body h3{
            font-size:25px;
            font-weight:600;
        }
        .packages .card .card-body p{
            font-size:15px;
        }
        .checked{
            color:yellow;
        }
        .star i{
            font-size:15px;
        }
        .packages .card .card-body h6{
            font-size:20px;
        }
        .packages .card .card-body a{
            padding:10px;
            text-decoration:none;
            background:yellow;
            color:black;
            border-radius:5px;
        }
    </style>
    <section class="packages" id="packages">
        <div class="container">
            <div class="main-txt">
                <h1><span>P</span>ackages</h1>

            </div>


            <div class="row" style="margin-top:30px;">

                <div class="col-md-4 py-3 py-md-0">

                    <div class="card">
                        <img src="Mini Suite.jpg" alt="" height="230px" />
                        <div class="card-body">
                            <h3>Mini Suite Room</h3>
                            <p>A single room with a bed  area.  the sleeping area is in a bedroom separate from the parlour  </p>
                            <div class="star">
                                <i class="fa-solid fa-star checked"></i>
                                <i class="fa-solid fa-star checked"></i>
                                <i class="fa-solid fa-star checked"></i>
                                <i class="fa-solid fa-star checked"></i>
                                <i class="fa-solid fa-star "></i>
                            </div>
                            <h6>Price: <strong>$50</strong></h6>
                            <a href="Book.aspx">Book Now</a>
                        </div>
                    </div>
                </div>


                <div class="col-md-4 py-3 py-md-0">

                    <div class="card">
                        <img src="Single.jfif" alt="" height="230px" />
                        <div class="card-body">
                            <h3>Single Room</h3>
                            <p>A room assigned to one person. May have one or more beds.</p>
                            <div class="star">
                                <i class="fa-solid fa-star checked"></i>
                                <i class="fa-solid fa-star checked"></i>
                                <i class="fa-solid fa-star checked"></i>
                                <i class="fa-solid fa-star checked"></i>
                                <i class="fa-solid fa-star "></i>
                            </div>
                            <h6>Price: <strong>$50</strong></h6>
                            <a href="Book.aspx">Book Now</a>
                        </div>
                    </div>
                </div>


                <div class="col-md-4 py-3 py-md-0">

                    <div class="card">
                        <img src="Double.jfif" alt="" height="230px"/>
                        <div class="card-body">
                            <h3>Double Room</h3>
                            <p>A room assigned to two people. May have one or more beds. </p>
                            <div class="star">
                                <i class="fa-solid fa-star checked"></i>
                                <i class="fa-solid fa-star checked"></i>
                                <i class="fa-solid fa-star checked"></i>
                                <i class="fa-solid fa-star checked"></i>
                                <i class="fa-solid fa-star "></i>
                            </div>
                            <h6>Price: <strong>$50</strong></h6>
                            <a href="Book.aspx">Book Now</a>
                        </div>
                    </div>
                </div>

            </div>


            <div class="row" style="margin-top:30px;">

                <div class="col-md-4 py-3 py-md-0">

                    <div class="card">
                        <img src="Cabana.jpg" alt="" height="230px"/>
                        <div class="card-body">
                            <h3>Cabana Room</h3>
                            <p>This type of room is always adjoining to the swimming pool or have a private pool attached to the room.</p>
                            <div class="star">
                                <i class="fa-solid fa-star checked"></i>
                                <i class="fa-solid fa-star checked"></i>
                                <i class="fa-solid fa-star checked"></i>
                                <i class="fa-solid fa-star checked"></i>
                                <i class="fa-solid fa-star "></i>
                            </div>
                            <h6>Price: <strong>$50</strong></h6>
                            <a href="Book.aspx">Book Now</a>
                        </div>
                    </div>
                </div>


                <div class="col-md-4 py-3 py-md-0">

                    <div class="card">
                        <img src="Double-double.jpg" alt="" height="230px"/>
                        <div class="card-body">
                            <h3>Double-double Room</h3>
                            <p> A Room with two double beds. And can accommodate two to four persons with two twin, double or queen-size beds.</p>
                            <div class="star">
                                <i class="fa-solid fa-star checked"></i>
                                <i class="fa-solid fa-star checked"></i>
                                <i class="fa-solid fa-star checked"></i>
                                <i class="fa-solid fa-star checked"></i>
                                <i class="fa-solid fa-star "></i>
                            </div>
                            <h6>Price: <strong>$50</strong></h6>
                            <a href="Book.aspx">Book Now</a>
                        </div>
                    </div>
                </div>


                <div class="col-md-4 py-3 py-md-0">

                    <div class="card">
                        <img src="Twin.jfif" alt="" height="230px"/>
                        <div class="card-body">
                            <h3>Twin Room</h3>
                            <p>A room with two twin beds. May be occupied by one or more people and The  area of Twin Rooms are generally between 32 m² to 40 m². </p>
                            <div class="star">
                                <i class="fa-solid fa-star checked"></i>
                                <i class="fa-solid fa-star checked"></i>
                                <i class="fa-solid fa-star checked"></i>
                                <i class="fa-solid fa-star checked"></i>
                                <i class="fa-solid fa-star "></i>
                            </div>
                            <h6>Price: <strong>$50</strong></h6>
                            <a href="Book.aspx">Book Now</a>
                        </div>
                    </div>
                </div>

            </div>


        </div>
    </section>
</asp:Content>
