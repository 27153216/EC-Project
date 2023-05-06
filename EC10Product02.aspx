<%@ Page Language="C#" MasterPageFile="./Master/MasterPage.master" AutoEventWireup="true" CodeFile="EC10Product02.aspx.cs" Inherits="EC10Product02" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        #MainContent_DataList1 {
            margin: 0px auto;
            width: 80%;
            background-color: none;
            border: none;
        }

            #MainContent_DataList1 > tbody > tr {
                background-color: white;
            }

        table tbody tr:nth-child(2n + 1) {
            background-color: white;
        }
    </style>
    <%--    <script>
        $(document).ready(function ($) {
            $(".test2").hover(function () {
                $(".test").css('visibility', 'visible');
            })
            $(".test2").mouseleave(function () {
                $(".test").css('visibility', 'hidden');
            })
        })(jQuery);
    </script>--%>
    <div style="background-color: black;">
        <section id="two" class="wrapper style3 animated fadeIn " style="background-image: url(Image/logo2.png);">
            <div class="inner">
                <header class="align-center">
                    <p>The second Season</p>
                    <h2>第二期商品</h2>
                </header>
            </div>
        </section>
    </div>
    <br />
    <div class="animated fadeInUp" style="text-align: center;">
        <asp:DataList ID="DataList1" runat="server" DataKeyField="pID" DataSourceID="SqlDataSource1" RepeatColumns="4" HorizontalAlign="Center" RepeatDirection="Horizontal">
            <ItemTemplate>
                <table class="alt" style="width: 250px;">
                    <tr class="animated fadeInDownBig" style="animation-delay: 0.1s">
                        <td>
                            <div>
                                <asp:Image ID="Image1" runat="server" ImageUrl='<%# "Image/" + Eval("pImg") %>' Width="200px" Height="200px" />
                            </div>
                        </td>
                    </tr>
                    <tr class="animated fadeInDownBig" style="animation-delay: 0.2s">
                        <td>
                            <asp:Button ID="Button1" class="button special" runat="server" Text='<%# Eval("pName", "購買") %>' />
                        </td>
                    </tr>
                    <tr class="animated fadeInDownBig" style="animation-delay: 0.3s">
                        <td>品名︰<asp:Label ID="pNameLabel" runat="server" Text='<%#
                    Eval("pName") %>' />
                        </td>
                    </tr>
                    <tr class="animated fadeInDownBig" style="animation-delay: 0.4s">
                        <td>重量︰<asp:Label ID="pSpecLabel" runat="server" Text='<%#
                    Eval("pSpec") %>' />
                        </td>
                    </tr>
                    <tr class="animated fadeInDownBig" style="height: 150px; text-align: left; animation-delay: 0.5s;">
                        <td>
                            <asp:Label ID="pDescLabel" runat="server" Text='<%# Eval("pDesc") %>' />
                        </td>
                    </tr>
                    <tr class="animated fadeInDownBig" style="animation-delay: 0.6s">
                        <td>特價︰<asp:Label ID="pSalePriceLabel" runat="server"
                            Text='<%# Eval("pSalePrice") %>' />
                            元</td>
                    </tr>

                </table>
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Pphoto.pImg, Product.pName, Product.pSpec,Product.pDesc, Price.pSalePrice, Product.pID FROM Pphoto INNER JOIN Product ON Pphoto.pID = Product.pID INNER JOIN Price ON Pphoto.pID = Price.pID WHERE (Pphoto.pID LIKE 'EC30PB%' and Pphoto.pID != 'EC30PB000001' and Pphoto.pID != 'EC30PB000004')"></asp:SqlDataSource>
    </div>
    <div class="product_show">
        <asp:Literal ID="productInfo" runat="server"></asp:Literal>

        &nbsp;&nbsp;&nbsp;
     <%--<asp:Button ID="buycar" runat="server" Text="加入購物車" OnClick="buycar_Click" />--%>
    </div>
</asp:Content>
