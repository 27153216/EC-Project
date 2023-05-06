<%@ Page Language="C#" MasterPageFile="./Master/MasterPage.master" AutoEventWireup="true" CodeFile="EC10Login.aspx.cs" Inherits="EC10Login" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server"> 
    <section class="featured">
        <style type="text/css">
        #sign{
            text-align:center;
        }
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 45%;
            text-align:right;
        }
        .auto-style3 {
            width: 55%;
            text-align:left;
        }
    </style>
        <div style="text-align: center;">
            <div class="box">
                <div class="content">
                    <header class="align-center">
                        <p>sign in</p>
                        <h2>會員登入</h2>
                    </header>
                </div>
            </div>
            <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style2 animated fadeInLeft">電子郵件信箱　</td>
                <td class="auto-style3 animated fadeInRight">
                    <input id="email" type="text" class="form-control" pattern="([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)" style="width: 300px;" maxlength="25" required placeholder="midnightsnack123@gmail.com" runat="server" /></td>
            </tr>
            <tr>
                <td class="auto-style2 animated fadeInLeft">密碼　</td>
                <td class="auto-style3 animated fadeInRight">
                    <input id="pw" type="password" class="form-control" style="width:300px;" placeholder="請輸入6~10位密碼" pattern=".{6,10}" required runat="server"/></td>
            </tr>
        </table>
        <br />
            <asp:Literal ID="Literal1" runat="server"></asp:Literal>
        <br />
        <asp:Button ID="Button1" class="button special" runat="server" Text="登入" OnClick="Button1_Click" />
        </div>
    </section>
</asp:Content>