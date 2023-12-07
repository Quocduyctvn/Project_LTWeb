<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControlSlide.ascx.cs" Inherits="Project_ThayTri.Client.WebUserControlSlide" %>


<div id="slider" style="margin-top: 91px;">
    <div class="grid wide position_arrow_img">
        <div class="row fix__sale">
            <div class="col l-12 m-12 c-12">
                <img class="img" src="./img/sale/sale2.jpg" alt="">
            </div>
            <div class="col l-12 m-12 c-12">
                <img class="img" src="./img/sale/sale3.jpg" alt="">
            </div>
            <div class="col l-12 m-12 c-12">
                <img class="img" src="./img/sale/sale4.jpg" alt="">
            </div>
            <div class="col l-12 m-12 c-12">
                <img class="img" src="./img/sale/sale5.jpg" alt="">
            </div>
            <div class="col l-12 m-12 c-12">
                <img class="img" src="./img/sale/sale6.jpg" alt="">
            </div>
            <div class="col l-12 m-12 c-12">
                <img class="img" src="./img/sale/sale7.jpg" alt="">
            </div>
            <div class="col l-12 m-12 c-12">
                <img class="img" src="./img/sale/sale8.jpg" alt="">
            </div>
            <div class="col l-12 m-12 c-12">
                <img class="img" src="./img/sale/sale9.jpg" alt="">
            </div>

            <div class="arrow-left vitri-ar" onclick="SliderCurrent(-1)"><i class="fa-solid fa-angles-left"></i></div>
            <div class="arrow-right vitri-ar" onclick="SliderCurrent(1)"><i class="fa-solid fa-angles-right"></i></div>
        </div>
    </div>
</div>
