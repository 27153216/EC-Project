<%@ Page Language="C#" MasterPageFile="./Master/MasterPage.master" AutoEventWireup="true" CodeFile="EC10index.aspx.cs" Inherits="EC10index" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <section class="banner full">
        <article>
            <img src="Image/EC10index01.jpg" alt="" />
            <%--<div class="inner">
                <header>
                    <p>A free responsive web site template by <a href="https://templated.co">TEMPLATED</a></p>
                    <h2>Hielo</h2>
                </header>
            </div>--%>
        </article>
        <article>
            <img src="Image/EC10index02.png" alt="" />
        </article>
        <article>
            <img src="Image/EC10index03.png" alt="" />
        </article>
        <article>
            <img src="Image/EC10index04.JPG" alt="" />
        </article>
        <article>
            <img src="Image/EC10index05.JPG" alt="" />
        </article>

    </section>
    <img id="rightb" class="right" src="Image/right.png" style="position: absolute; right: 38%; margin-top: -5%; width: 50px; z-index: 4;" />
    <img id="leftb" class="left" src="Image/left.png" style="position: absolute; left: 38%; margin-top: -5%; width: 50px; z-index: 4;" />

    <section id="one" class="wrapper style2">
        <div class="inner">
            <div class="grid-style">

                <div>
                    <div class="box">
                        <div class="image fit">
                            <img src="Image/EC30indexP01.png" alt="" />
                        </div>
                        <div class="content">
                            <header class="align-center">
                                <p>The First Season</p>
                                <h2>第一期商品</h2>
                            </header>
                            <footer class="align-center">
                                <a href="EC10Product01.aspx" class="button alt">前往購買</a>
                            </footer>
                        </div>
                    </div>
                </div>

                <div>
                    <div class="box">
                        <div class="image fit">
                            <img src="Image/EC30indexP02.jpg" alt="" />
                        </div>
                        <div class="content">
                            <header class="align-center">
                                <p>The Second Season</p>
                                <h2>第二期商品</h2>
                            </header>
                            <footer class="align-center">
                                <a href="EC10Product02.aspx" class="button alt">前往購買</a>
                            </footer>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </section>
</asp:Content>
