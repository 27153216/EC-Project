<%@ Page Language="C#" MasterPageFile="Master/MasterPage.master" AutoEventWireup="true" CodeFile="EC10management.aspx.cs" Inherits="EC10management" MaintainScrollPositionOnPostback="true" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        #fuck {
            position: fixed;
            right: 0;
            top: 50%;
            width: 8em;
            margin-top: -2.5em;
        }
    </style>

    <script>
        //gridview固定視窗方法
        var prm = Sys.WebForms.PageRequestManager.getInstance();
        prm.add_pageLoaded(pageLoaded);
        function pageLoaded(sender, args) {
            Func()
        }
        function Func() {//document.getElementById("hdnScrollTop").value
            document.getElementById("divScroll").scrollTop = document.getElementById("hdnScrollTop").value;
        }
        function Func2() {
            var s = document.getElementById("divScroll").scrollTop;
            document.getElementById('hdnScrollTop').value = s;
        }
        //$(document).ready(function ($) {
        //    $(".button").click(function () {
        //        $(".d").css('display', 'none');
        //    })
        //    $(".producta").click(function () {
        //        $("#productd").css('display', 'initial');
        //    })
        //    $(".pricea").click(function () {
        //        $("#priced").css('display', 'initial');
        //    })
        //    $(".photoa").click(function () {
        //        $("#photod").css('display', 'initial');
        //    })
        //    $(".customera").click(function () {
        //        $("#customerd").css('display', 'initial');
        //    })
        //    $(".cuslogina").click(function () {
        //        $("#cuslogind").css('display', 'initial');
        //    })
        //})(jQuery);
    </script>

    <div id="fuck">
        <a href="#productd" id="producta" class="button alt producta">產品</a>
        <a href="#priced" id="pricea" class="button alt pricea">價格</a>
        <a href="#photod" id="photoa" class="button alt photoa">產品圖片</a>
        <a href="#customerd" id="customera" class="button alt customera">顧客</a>
        <a href="#cuslogind" id="cuslogina" class="button alt cuslogina">帳密</a>
    </div>

    <div id="productd" class="d">
        <h2>產品資料表</h2>
        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="pID">
            <Columns>
                <asp:TemplateField ShowHeader="False">
                    <EditItemTemplate>
                        <asp:LinkButton CssClass="button alt" runat="server" Text="更新" CommandName="Update" CausesValidation="True" ID="LinkButton1"></asp:LinkButton>&nbsp;<asp:LinkButton CssClass="button alt" runat="server" Text="取消" CommandName="Cancel" CausesValidation="False" ID="LinkButton2"></asp:LinkButton>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:LinkButton CssClass="button alt" runat="server" Text="編輯" CommandName="Edit" CausesValidation="False" ID="LinkButton1"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:BoundField DataField="pID" HeaderText="pID" ReadOnly="True" SortExpression="pID"></asp:BoundField>
                <asp:BoundField DataField="pName" HeaderText="pName" SortExpression="pName"></asp:BoundField>
                <asp:BoundField DataField="pSpec" HeaderText="pSpec" SortExpression="pSpec"></asp:BoundField>
                <asp:BoundField DataField="pDesc" HeaderText="pDesc" SortExpression="pDesc"></asp:BoundField>
                <asp:BoundField DataField="bonus" HeaderText="bonus" SortExpression="bonus"></asp:BoundField>
            </Columns>
        </asp:GridView>
        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="100%" DataSourceID="SqlDataSource1">
            <Fields>
                <asp:TemplateField ShowHeader="False">
                    <InsertItemTemplate>
                        <asp:LinkButton CssClass="button alt" runat="server" Text="插入" CommandName="Insert" CausesValidation="True" ID="LinkButton1"></asp:LinkButton>&nbsp;<asp:LinkButton CssClass="button alt" runat="server" Text="取消" CommandName="Cancel" CausesValidation="False" ID="LinkButton2"></asp:LinkButton>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:LinkButton CssClass="button alt" runat="server" Text="新增" CommandName="New" CausesValidation="False" ID="LinkButton1"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>

            </Fields>
        </asp:DetailsView>

        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [Product] WHERE ([pID] LIKE '%' + @pID + '%')" DeleteCommand="DELETE FROM [Product] WHERE [pID] = @pID" InsertCommand="INSERT INTO [Product] ([pID], [pName], [pSpec], [pDesc], [bonus]) VALUES (@pID, @pName, @pSpec, @pDesc, @bonus)" UpdateCommand="UPDATE [Product] SET [pName] = @pName, [pSpec] = @pSpec, [pDesc] = @pDesc, [bonus] = @bonus WHERE [pID] = @pID">
            <DeleteParameters>
                <asp:Parameter Name="pID" Type="String"></asp:Parameter>
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="pID" Type="String"></asp:Parameter>
                <asp:Parameter Name="pName" Type="String"></asp:Parameter>
                <asp:Parameter Name="pSpec" Type="String"></asp:Parameter>
                <asp:Parameter Name="pDesc" Type="String"></asp:Parameter>
                <asp:Parameter Name="bonus" Type="Int32"></asp:Parameter>
            </InsertParameters>
            <SelectParameters>
                <asp:Parameter DefaultValue="EC30P" Name="pID" Type="String"></asp:Parameter>
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="pName" Type="String"></asp:Parameter>
                <asp:Parameter Name="pSpec" Type="String"></asp:Parameter>
                <asp:Parameter Name="pDesc" Type="String"></asp:Parameter>
                <asp:Parameter Name="bonus" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="pID" Type="String"></asp:Parameter>
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>

    <div id="priced" class="d">
        <h2>價格資料表</h2>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="pID" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:TemplateField ShowHeader="False">
                    <EditItemTemplate>
                        <asp:LinkButton CssClass="button alt" runat="server" Text="更新" CommandName="Update" CausesValidation="True" ID="LinkButton1"></asp:LinkButton>&nbsp;<asp:LinkButton CssClass="button alt" runat="server" Text="取消" CommandName="Cancel" CausesValidation="False" ID="LinkButton2"></asp:LinkButton>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:LinkButton CssClass="button alt" runat="server" Text="編輯" CommandName="Edit" CausesValidation="False" ID="LinkButton1"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:BoundField DataField="pID" HeaderText="pID" ReadOnly="True" SortExpression="pID"></asp:BoundField>
                <asp:BoundField DataField="pSalePrice" HeaderText="pSalePrice" SortExpression="pSalePrice"></asp:BoundField>
                <asp:BoundField DataField="pPurcPrice" HeaderText="pPurcPrice" SortExpression="pPurcPrice"></asp:BoundField>
                <asp:BoundField DataField="pRealPrice" HeaderText="pRealPrice" SortExpression="pRealPrice"></asp:BoundField>
            </Columns>
        </asp:GridView>
        <asp:DetailsView ID="DetailsView2" runat="server" Height="50px" Width="100%" DataSourceID="SqlDataSource2">
            <Fields>
                <asp:TemplateField ShowHeader="False">
                    <InsertItemTemplate>
                        <asp:LinkButton CssClass="button alt" runat="server" Text="插入" CommandName="Insert" CausesValidation="True" ID="LinkButton1"></asp:LinkButton>&nbsp;<asp:LinkButton CssClass="button alt" runat="server" Text="取消" CommandName="Cancel" CausesValidation="False" ID="LinkButton2"></asp:LinkButton>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:LinkButton CssClass="button alt" runat="server" Text="新增" CommandName="New" CausesValidation="False" ID="LinkButton1"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>

            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' DeleteCommand="DELETE FROM [Price] WHERE [pID] = @pID" InsertCommand="INSERT INTO [Price] ([pID], [pSalePrice], [pPurcPrice], [pRealPrice]) VALUES (@pID, @pSalePrice, @pPurcPrice, @pRealPrice)" SelectCommand="SELECT * FROM [Price] WHERE ([pID] LIKE '%' + @pID + '%')" UpdateCommand="UPDATE [Price] SET [pSalePrice] = @pSalePrice, [pPurcPrice] = @pPurcPrice, [pRealPrice] = @pRealPrice WHERE [pID] = @pID">
            <DeleteParameters>
                <asp:Parameter Name="pID" Type="String"></asp:Parameter>
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="pID" Type="String"></asp:Parameter>
                <asp:Parameter Name="pSalePrice" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="pPurcPrice" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="pRealPrice" Type="Int32"></asp:Parameter>
            </InsertParameters>
            <SelectParameters>
                <asp:Parameter DefaultValue="EC30P" Name="pID" Type="String"></asp:Parameter>
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="pSalePrice" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="pPurcPrice" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="pRealPrice" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="pID" Type="String"></asp:Parameter>
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>

    <div id="photod" class="d">
        <h2>產品圖片資料表</h2>
        <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" DataKeyNames="pID" DataSourceID="SqlDataSource5">
            <Columns>
                <asp:TemplateField ShowHeader="False">
                    <EditItemTemplate>
                        <asp:LinkButton CssClass="button alt" runat="server" Text="更新" CommandName="Update" CausesValidation="True" ID="LinkButton1"></asp:LinkButton>&nbsp;<asp:LinkButton CssClass="button alt" runat="server" Text="取消" CommandName="Cancel" CausesValidation="False" ID="LinkButton2"></asp:LinkButton>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:LinkButton CssClass="button alt" runat="server" Text="編輯" CommandName="Edit" CausesValidation="False" ID="LinkButton1"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:BoundField DataField="pID" HeaderText="pID" ReadOnly="True" SortExpression="pID"></asp:BoundField>
                <asp:BoundField DataField="pImg" HeaderText="pImg" SortExpression="pImg"></asp:BoundField>
            </Columns>
        </asp:GridView>
        <asp:DetailsView ID="DetailsView3" runat="server" Height="50px" Width="100%" AutoGenerateRows="False" DataKeyNames="pID" DataSourceID="SqlDataSource5">
            <Fields>
                <asp:BoundField DataField="pID" HeaderText="pID" ReadOnly="True" SortExpression="pID"></asp:BoundField>
                <asp:BoundField DataField="pImg" HeaderText="pImg" SortExpression="pImg"></asp:BoundField>
                <asp:TemplateField ShowHeader="False">
                    <InsertItemTemplate>
                        <asp:LinkButton CssClass="button alt" runat="server" Text="插入" CommandName="Insert" CausesValidation="True" ID="LinkButton1"></asp:LinkButton>&nbsp;<asp:LinkButton CssClass="button alt" runat="server" Text="取消" CommandName="Cancel" CausesValidation="False" ID="LinkButton2"></asp:LinkButton>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:LinkButton CssClass="button alt" runat="server" Text="新增" CommandName="New" CausesValidation="False" ID="LinkButton1"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>

            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource runat="server" ID="SqlDataSource5" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' DeleteCommand="DELETE FROM [Pphoto] WHERE [pID] = @pID" InsertCommand="INSERT INTO [Pphoto] ([pID], [pImg]) VALUES (@pID, @pImg)" SelectCommand="SELECT * FROM [Pphoto] WHERE ([pID] LIKE '%' + @pID + '%')" UpdateCommand="UPDATE [Pphoto] SET [pImg] = @pImg WHERE [pID] = @pID">
            <DeleteParameters>
                <asp:Parameter Name="pID" Type="String"></asp:Parameter>
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="pID" Type="String"></asp:Parameter>
                <asp:Parameter Name="pImg" Type="String"></asp:Parameter>
            </InsertParameters>
            <SelectParameters>
                <asp:Parameter DefaultValue="EC30P" Name="pID" Type="String"></asp:Parameter>
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="pImg" Type="String"></asp:Parameter>
                <asp:Parameter Name="pID" Type="String"></asp:Parameter>
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>

    <div id="customerd" class="d">
        <h2>顧客資料表</h2>
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="cID" DataSourceID="SqlDataSource3">
            <Columns>
                <asp:TemplateField ShowHeader="False">
                    <EditItemTemplate>
                        <asp:LinkButton CssClass="button alt" runat="server" Text="更新" CommandName="Update" CausesValidation="True" ID="LinkButton1"></asp:LinkButton>&nbsp;<asp:LinkButton CssClass="button alt" runat="server" Text="取消" CommandName="Cancel" CausesValidation="False" ID="LinkButton2"></asp:LinkButton>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:LinkButton CssClass="button alt" runat="server" Text="編輯" CommandName="Edit" CausesValidation="False" ID="LinkButton1"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:BoundField DataField="cID" HeaderText="cID" ReadOnly="True" SortExpression="cID"></asp:BoundField>
                <asp:BoundField DataField="cEmail" HeaderText="cEmail" SortExpression="cEmail"></asp:BoundField>
                <asp:BoundField DataField="cName" HeaderText="cName" SortExpression="cName"></asp:BoundField>
                <asp:BoundField DataField="cSex" HeaderText="cSex" SortExpression="cSex"></asp:BoundField>
                <asp:BoundField DataField="cBir" HeaderText="cBir" SortExpression="cBir"></asp:BoundField>
                <asp:BoundField DataField="cAdd" HeaderText="cAdd" SortExpression="cAdd"></asp:BoundField>
                <asp:BoundField DataField="cTel" HeaderText="cTel" SortExpression="cTel"></asp:BoundField>
            </Columns>
        </asp:GridView>
        <asp:DetailsView ID="DetailsView4" runat="server" Height="50px" Width="100%" DataSourceID="SqlDataSource3">
            <Fields>
                <asp:TemplateField ShowHeader="False">
                    <InsertItemTemplate>
                        <asp:LinkButton CssClass="button alt" runat="server" Text="插入" CommandName="Insert" CausesValidation="True" ID="LinkButton1"></asp:LinkButton>&nbsp;<asp:LinkButton CssClass="button alt" runat="server" Text="取消" CommandName="Cancel" CausesValidation="False" ID="LinkButton2"></asp:LinkButton>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:LinkButton CssClass="button alt" runat="server" Text="新增" CommandName="New" CausesValidation="False" ID="LinkButton1"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>

            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource runat="server" ID="SqlDataSource3" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' DeleteCommand="DELETE FROM [Customer] WHERE [cID] = @cID" InsertCommand="INSERT INTO [Customer] ([cID], [cEmail], [cName], [cSex], [cBir], [cAdd], [cTel]) VALUES (@cID, @cEmail, @cName, @cSex, @cBir, @cAdd, @cTel)" SelectCommand="SELECT * FROM [Customer] WHERE ([cID] LIKE '%' + @cID + '%')" UpdateCommand="UPDATE [Customer] SET [cEmail] = @cEmail, [cName] = @cName, [cSex] = @cSex, [cBir] = @cBir, [cAdd] = @cAdd, [cTel] = @cTel WHERE [cID] = @cID">
            <DeleteParameters>
                <asp:Parameter Name="cID" Type="String"></asp:Parameter>
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="cID" Type="String"></asp:Parameter>
                <asp:Parameter Name="cEmail" Type="String"></asp:Parameter>
                <asp:Parameter Name="cName" Type="String"></asp:Parameter>
                <asp:Parameter Name="cSex" Type="String"></asp:Parameter>
                <asp:Parameter Name="cBir" Type="String"></asp:Parameter>
                <asp:Parameter Name="cAdd" Type="String"></asp:Parameter>
                <asp:Parameter Name="cTel" Type="String"></asp:Parameter>
            </InsertParameters>
            <SelectParameters>
                <asp:Parameter DefaultValue="EC30C" Name="cID" Type="String"></asp:Parameter>
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="cEmail" Type="String"></asp:Parameter>
                <asp:Parameter Name="cName" Type="String"></asp:Parameter>
                <asp:Parameter Name="cSex" Type="String"></asp:Parameter>
                <asp:Parameter Name="cBir" Type="String"></asp:Parameter>
                <asp:Parameter Name="cAdd" Type="String"></asp:Parameter>
                <asp:Parameter Name="cTel" Type="String"></asp:Parameter>
                <asp:Parameter Name="cID" Type="String"></asp:Parameter>
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>

    <div id="cuslogind" class="d">
        <h2>帳密資料表</h2>
        <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataKeyNames="cID" DataSourceID="SqlDataSource4">
            <Columns>
                <asp:TemplateField ShowHeader="False">
                    <EditItemTemplate>
                        <asp:LinkButton CssClass="button alt" runat="server" Text="更新" CommandName="Update" CausesValidation="True" ID="LinkButton1"></asp:LinkButton>&nbsp;<asp:LinkButton CssClass="button alt" runat="server" Text="取消" CommandName="Cancel" CausesValidation="False" ID="LinkButton2"></asp:LinkButton>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:LinkButton CssClass="button alt" runat="server" Text="編輯" CommandName="Edit" CausesValidation="False" ID="LinkButton1"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:BoundField DataField="cID" HeaderText="cID" ReadOnly="True" SortExpression="cID"></asp:BoundField>
                <asp:BoundField DataField="cEmail" HeaderText="cEmail" SortExpression="cEmail"></asp:BoundField>
                <asp:BoundField DataField="cPwd" HeaderText="cPwd" SortExpression="cPwd"></asp:BoundField>
            </Columns>
        </asp:GridView>
        <asp:DetailsView ID="DetailsView5" runat="server" Height="50px" Width="100%" DataSourceID="SqlDataSource4">
            <Fields>
                <asp:TemplateField ShowHeader="False">
                    <InsertItemTemplate>
                        <asp:LinkButton CssClass="button alt" runat="server" Text="插入" CommandName="Insert" CausesValidation="True" ID="LinkButton1"></asp:LinkButton>&nbsp;<asp:LinkButton CssClass="button alt" runat="server" Text="取消" CommandName="Cancel" CausesValidation="False" ID="LinkButton2"></asp:LinkButton>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:LinkButton CssClass="button alt" runat="server" Text="新增" CommandName="New" CausesValidation="False" ID="LinkButton1"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>

            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource runat="server" ID="SqlDataSource4" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' DeleteCommand="DELETE FROM [CusLogin] WHERE [cID] = @cID" InsertCommand="INSERT INTO [CusLogin] ([cID], [cEmail], [cPwd]) VALUES (@cID, @cEmail, @cPwd)" SelectCommand="SELECT * FROM [CusLogin] WHERE ([cID] LIKE '%' + @cID + '%')" UpdateCommand="UPDATE [CusLogin] SET [cEmail] = @cEmail, [cPwd] = @cPwd WHERE [cID] = @cID">
            <DeleteParameters>
                <asp:Parameter Name="cID" Type="String"></asp:Parameter>
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="cID" Type="String"></asp:Parameter>
                <asp:Parameter Name="cEmail" Type="String"></asp:Parameter>
                <asp:Parameter Name="cPwd" Type="String"></asp:Parameter>
            </InsertParameters>
            <SelectParameters>
                <asp:Parameter DefaultValue="EC30C" Name="cID" Type="String"></asp:Parameter>
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="cEmail" Type="String"></asp:Parameter>
                <asp:Parameter Name="cPwd" Type="String"></asp:Parameter>
                <asp:Parameter Name="cID" Type="String"></asp:Parameter>
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>

</asp:Content>
