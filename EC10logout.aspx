<%@ Page Language="C#" MasterPageFile="./Master/MasterPage.master" AutoEventWireup="true" CodeFile="EC10logout.aspx.cs" Inherits="EC10logout" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server"> 
    <section class="featured">
        <div style="text-align:center"><img src="Image/LOGO.png" width="250"/></div>
        <div style="text-align:center;">
            <span style="font-size:30px;">登出成功，3秒後回到首頁</span><br />
            <asp:Button ID="Button1" class="button special" runat="server" Text="回首頁" OnClick="Button1_Click" />
        </div>
    </section>
</asp:Content>