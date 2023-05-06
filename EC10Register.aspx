<%@ Page Language="C#" MasterPageFile="./Master/MasterPage.master" AutoEventWireup="true" CodeFile="EC10Register.aspx.cs" Inherits="EC10Register" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style type="text/css">
        #sign {
            text-align: center;
        }

        .auto-style1 {
            width: 100%;
        }

        .auto-style2 {
            width: 45%;
            text-align: right;
        }

        .auto-style3 {
            width: 55%;
            text-align: left;
        }

        .col-centered {
            margin: 0 auto;
            float: none;
        }

        label {
            margin: 0;
        }
    </style>
    <div style="text-align: center;">
        <div class="box">
            <div class="content">
                <header class="align-center">
                    <p>sign up</p>
                    <h2>會員註冊</h2>
                </header>
            </div>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2 animated fadeInLeft">電子郵件信箱　</td>
                <td class="auto-style3 animated fadeInRight">
                    <input id="email" type="text" class="form-control" pattern="([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)" style="width: 300px;" maxlength="25" required placeholder="midnightsnack123@gmail.com" runat="server" /></td>
            </tr>
            <tr>
                <td class="auto-style2 animated fadeInLeft">密碼　</td>
                <td class="auto-style3 animated fadeInRight">
                    <input id="pw" type="password" class="form-control" style="width: 300px;" placeholder="請輸入6~10位密碼" pattern=".{6,10}" required runat="server" /></td>
            </tr>
            <tr>
                <td class="auto-style2 animated fadeInLeft">確認密碼　</td>
                <td class="auto-style3 animated fadeInRight">
                    <input id="pw2" type="password" class="form-control" style="width: 300px;" pattern=".{6,10}" required runat="server" /></td>
            </tr>
            <tr>
                <td class="auto-style2 animated fadeInLeft">姓名　</td>
                <td class="auto-style3 animated fadeInRight">
                    <input id="name" type="text" class="form-control" style="width: 300px;" maxlength="8" placeholder="" required runat="server" /></td>
            </tr>
            <tr>
                <td class="auto-style2 animated fadeInLeft">性別　</td>
                <td class="auto-style3 animated fadeInRight">
                    <asp:RadioButton ID="rbman" Text="男" runat="server" GroupName="sex" Checked="true" />
                    <asp:RadioButton ID="rbwoman" Text="女" runat="server" GroupName="sex" /><input type="text" style="visibility: hidden; width: 0px; display: inline;" /></td>

            </tr>
            <tr>
                <td class="auto-style2 animated fadeInLeft">生日　</td>
                <td class="auto-style3 animated fadeInRight">
                    <input id="birth" type="text" class="form-control" style="width: 300px;" placeholder="1970/01/01" pattern="\d{4}\/\d{1,2}\/\d{1,2}" required runat="server" /></td>
            </tr>
            <tr>
                <td class="auto-style2 animated fadeInLeft">地址　</td>
                <td class="auto-style3 animated fadeInRight">
                    <input id="add" type="text" class="form-control" style="width: 300px;" placeholder="" maxlength="50" required runat="server" /></td>
            </tr>
            <tr>
                <td class="auto-style2 animated fadeInLeft">電話　</td>
                <td class="auto-style3 animated fadeInRight">
                    <input id="tel" type="text" class="form-control" style="width: 300px;" runat="server" pattern="\d{1,12}" placeholder="(00)0000-0000" required maxlength="13" /></td>
            </tr>
        </table>
        <textarea class="form-control col-centered" style="width: 80%; max-width: 530px; background-color: white;" readonly="readonly" rows="10">　　夜食123（以下稱本服務）係由夜食123股份有限公司（以下稱本公司）為電子商務及網路加值服務之目的將蒐集、五、法律關係及稅捐八、本條款未盡事宜悉依中華民國相關法令規定辦理。
        </textarea>

        <br />
        <asp:CheckBox ID="Agree" runat="server" Text="我同意以上條款" />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" class="button special" Text="註冊" OnClick="Button1_Click" />
    </div>

</asp:Content>
