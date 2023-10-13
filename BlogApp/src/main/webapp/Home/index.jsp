<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Amazon</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
        integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
   <!-- <link rel="stylesheet" href="style.css">  -->
   <style>
	   *{
    margin: 0;
    padding: 0;
    font-family: Arial, Helvetica, sans-serif;
    box-sizing: border-box;
}

body{
    background-color: rgb(249, 236, 219);
}

.navbar{
    height:60px;
    background-color: #0f1111;
    color:white;
    display: flex;
    align-items: center;
    justify-content: space-around;
}
.nav-logo{
    height:50px;
    width:100px;
}
.logo{
    background-image: url(./imgs/amazon_logo.png);
    background-size: cover;
    
    height:100%;
    width: 100%;
}

.border{
    border: 1.5px solid transparent;
}
.border:hover{
    border: 1.5px solid white;

}

/* BOX 2*/

.add-info{
    color:#cccccc;
    font-size:.85rem;
    margin-left: 1rem;
}
.add-loc{
    margin-left:.2rem;
}
.add-icon{
    display: flex;
}

/* box-3 */

.nav-search{
    display: flex;
    background-color: pink;
    width:50%;
    height:40px;
    border-radius: 4px;
    margin-left: .7rem;
    justify-content: space-between;
    border: 2px solid transparent;
}

.nav-search:hover {
    border: 2px solid yellow;
}


#select-option{
    border-radius: 4px 0 0 4px;
    background-color: #f3f3f3;
    width:50px;
    text-align: center;
    border:none;
}

#search-input{
    width:100%;
    font-size: 1rem;
    border:none;
    padding: .5rem;
   
}
.search-icon{
    display: flex;
    width: 5%;
    justify-content: center;
    align-items: center;
    font-size:1.2rem;
    background-color: #febd68;
    border-top-right-radius: 4px;
    border-bottom-right-radius: 4px;
    color:black;
}

/*Box 4*/
.con-info{
    display: flex;
    gap:.2rem;
    
    
}
#con-select{
    background-color: black;
    color:white;
    border:none;
    font-weight: bolder;
    font-size:1.1rem;
}

/* box 5 */

span{
    font-size:.7rem;
    text-align: center;

}
.acc-info{
    font-size:.85rem;
    font-weight: 700;
}

/* box cart */
.cart{
    display: flex;
   
    
}

.cart i{
   font-size: 1.8rem;
}

.cart p{
    transform: translateY(.7rem);
    font-weight: bolder;
}


/* panel */

.panel{
    height: 40px;
    background-color:#222f3d;
    color:white;
    display: flex;
    align-items: center;
    justify-content: space-evenly;
}
.panel-all{
    margin-right: 2rem;
}
.panel-opt{
    display: flex;
    width: 80%;
    font-size: .85rem;
    gap: 1.5rem;
    
}
.panel-deals{
    font-size:.92rem;
    font-weight: 650;
}

/* hero-section */

.hero-section{
    height:35vh;
   
   background-image: url(imgs/bigb.jpg);
    
    background-size:cover;
    display: flex;
    justify-content: center;
    align-items: flex-end;

}

.hero-msg{
    background-color:white;
    color: black;
    width: 80%;
    height: 15%;
    display: flex;
    justify-content: center;
    align-items: center;
    font-size: .85rem;
    margin-bottom: 1.2rem;

}

.hero-msg a{
    color: #007174;
    text-decoration:none;
    
}
/* shop-section */

.shop-section{
    display: flex;
    flex-wrap: wrap;
    justify-content: space-evenly;
    margin-top: .4rem;
    gap:.5rem;
    

}

.box{
    /* border: 2px solid black; */
   height:380px;
    width: 24%;
   background-size: cover;
   padding: 20px;
   background-color: white;
   border-radius: 3px;
}
.box-img{
    height: 300px;
    background-size: cover;
    background-repeat: no-repeat;
    background-position:center;
}
.box h2{
    text-align: center;
}
/* footer ele */

footer{
    margin-top:14px;
}

.foot-panel{
    background-color: #37475a;
    color:white;
    height:3rem;
    display:flex;
    justify-content:center;
    align-items:center;
    font-size:.85rem;

}
.foot-panel a{
    color: white;
    text-decoration: none;
    width: 100%;
    text-align: center;
}
.foot-details{
    display:flex;
    justify-content:space-evenly;
    line-height: 1.6rem;
    
    padding-top: .5rem;
    padding-bottom: .9rem;
    background-color: #222f3d;
    color:rgba(255, 255, 255, 0.777);
}

.foot-details h3{
    font-size:1rem;
    color:white;
}

ul{
    list-style-type: none;
}
ul li{
    font-size:.85rem;
}

/* foot logo */

.foot-panel-3{
    background-color:#222f3d;
    display: flex;
    justify-content: center;
    align-items: center;
    border-top: 1px solid rgba(255, 255, 255, 0.633);
    
    
}

.foot-logo{
    height:4rem;
    width: 9rem;
    background-image: url(./imgs/amazon_logo.png);
    background-size: cover;
}
   </style>
</head>

<body>
    <header id="head">
        <div class="navbar">
            <div class="nav-logo">
                <div class="logo border"></div>
            </div>
            <div class="nav-add border">
                <p class="add-info">Deliver to</p>
                <div class="add-icon">
                    <i class="fa-solid fa-location-dot"></i>

                    <p class="add-loc">India</p>
                </div>
            </div>

            <div class="nav-search">
                <select name="" id="select-option">
                    <option value="select">All</option>
                </select>
                <input type="search" name="" id="search-input" placeholder="Search Amazon">
                <div class="search-icon">
                    <i class="fa-solid fa-magnifying-glass"></i>
                </div>
            </div>

            <div class="con-info border">
                <div class="flag">
                    <i class="fa-regular fa-flag"></i>
                </div>
                <select name="" id="con-select">
                    <option value="">
                        <p class="con">IN</p>
                    </option>
                </select>
            </div>
           

            <div class="nav-signin border">
                <p class="hello"><span>Hello, <b><%= request.getAttribute("name") %>  </b></span></p>
                <p class="acc-info">Account & Lists</p>
            </div>

            <div class="nav-return nav-signin border">
                <p><span>Returns</span></p>
                <p class="acc-info">& Orders</p>
            </div>

            <div class="cart border">
                <i class="fa-solid fa-cart-shopping"></i>
                <p>Cart</p>
            </div>
        </div>

        <!-- 2nd pannel -->
        <div class="panel">
            <div class="panel-all">
                <i class="fa-solid fa-bars"></i>
                All
            </div>
            <div class="panel-opt">
                <p>Today's Deal</p>
                <p>Customer Service</p>
                <p>Registry</p>
                <p>Gift Card</p>
                <p>Sell</p>
            </div>

            <div class="panel-deals">
                Shop deals in Electonics
            </div>
        </div>
    </header>
    <div class="hero-section">
        <div class="hero-msg">
			
            <p>You are on amazon.com. You can also shope on Amazon India for millions of products with fast local
                delivery. <a href="index.html">Click here to go amazon.in</a></p>
        </div>

    </div>

    <!-- shopping container -->
    <div class="shop-section">
        <div class="box1 box">
            <h2>Helth & Personal Care</h2>
            <div class="box-img" style="background-image: url(imgs/box2_image.jpg);">

            </div>
            <p>See more</p>
        </div>
        <div class="box2 box">
            <h2>Latest Fashon</h2>
            <div class="box-img" style="background-image: url(imgs/box1_image.jpg);"></div>
            <p>See more</p>
        </div>
        <div class="box3 box">
            <h2>Mobiles</h2>
            <div class="box-img" style="background-image:url(imgs/box4_image.jpg);"></div>
            <p>See more</p>
        </div>
        <div class="box4 box">
            <h2>Pet care</h2>
            <div class="box-img" style="background-image: url(imgs/box6_image.jpg);">


            </div>
            <p>See more</p>
        </div>
        <div class="box1 box">
            <h2>Furniture</h2>
            <div class="box-img" style="background-image: url(imgs/box3_image.jpg);">

            </div>
            <p>See more</p>
        </div>
        <div class="box2 box">
            <h2>Makeup kit</h2>
            <div class="box-img" style="background-image: url(imgs/box5_image.jpg);"></div>
            <p>See more</p>
        </div>
        <div class="box3 box">
            <h2>Kids</h2>
            <div class="box-img" style="background-image:url(imgs/box7_image.jpg);"></div>
            <p>See more</p>
        </div>
        <div class="box4 box">
            <h2>Dresses</h2>
            <div class="box-img" style="background-image: url(imgs/box8_image.jpg);">


            </div>
            <p>See more</p>
        </div>
    </div>

    <!-- footer part -->

    <footer>
        <div class="foot-panel">
            <a href="#head" >Back to top</a>
        </div>
        <div class="foot-details">
            <div class="para">
                <h3>Get to know Us</h3>
                <ul>
                    <li>Careers</li>
                    <li>Blog</li>
                    <li>About Amazon</li>
                    <li>Investor Relations</li>
                    <li>Amazon Devices</li>
                </ul>
            </div>
            <div class="para">
                <h3>Connect with Us</h3>
                <ul>
                    <li>Facebook</li>
                    <li>Twitter</li>
                    <li>Instagram</li>
                    
                </ul>
            </div>
            <div class="para">
                <h3>Make Money with Us</h3>
                <ul>
                    <li>Sell on Amazon</li>
                    <li>Amazon Global Selling</li>
                    <li>Become an Affiliate</li>
                    <li>Fulfilment by Amazon</li>
                    <li>Amazon Pay on Merchants</li>
                </ul>
            </div>
            <div class="para">
                <h3>Let Us Help You</h3>
                <ul>
                    <li>COVID-19 and Amazon</li>
                    <li>Your Account</li>
                    <li>Retrns Center</li>
                    <li>100% Purchase Protection</li>
                    <li> Help</li>
                </ul>
            </div>
        </div>
        <div class="foot-panel-3">
            <div class="foot-logo">

            </div>
        </div>
    </footer>

</body>

</html>