<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1>Máy Tính Châu Á</h1>
                <h2>&nbsp;</h2>
            </hgroup>
            <p>
                Thương hiệu của chất lượng</p>
        </div>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h3>We suggest the following:</h3>
    <ol class="round">
        <li class="one">
            <h3>Sản Phẩm nổi bật</h3>
            <table class="bang">
                <tr><th>Ảnh sản Phẩm</th><th>Mô Tả</th></tr><td>
                    <img src="Images/sp1.PNG" /></td><td>Bộ vi xử lý :	Intel® Core™ i7-6700HQ Processor (6M Cache, up to 3.50 GHz)
                                                     <br />Bộ nhớ RAM :	8 GB (DDR3L bus 1600MHz)<br />Đồ họa :	NVIDIA GeForce GTX 960M( 4 GB)<br />Ổ đĩa cứng : 1TB<br />Màn hình :	15.6 inch (Full HD 1920 x 1080 pixels)<br />Hệ điều hành :	Windows 10<br />Kết nối :	USB 3.0, LAN, Wi-Fi, Bluetooth 4.0, HDMI</td>
            </table>
        </li>
    </ol>
    <ol class="round">
        <li class="two">
            <h3>Giới thiệu về sản phẩm<img alt="" class="auto-style2" src="Images/gioithieusp.jpg" /></h3><p>Dell N7559A: Thiết kế mạnh mẽ, cấu hình đỉnh cao
 
Dell N7559A là chiếc laptop Gaming của Dell có thiết mạnh mẽ, cá tính cùng cấu hình vô cùng mạnh mẽ với bộ vi xử lý Core i7 thế hệ Skylake mới nhất của Intel kết hợp cùng bộ nhớ RAM 8GB và card đồ họa rời 4GB, hứa hẹn sẽ mang đến cho người dùng những trải nghiệm khác biệt và mượt mà nhất.
 
Thiết kế mạnh mẽ, kết cấu bền vững</p>
        </li>
        <li class="one">
            <h5>Khách Hàng<asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="MAKH" DataSourceID="SqlDataSource2" Height="50px" Width="125px" AllowPaging="True">
                <Fields>
                    <asp:BoundField DataField="MAKH" HeaderText="MAKH" ReadOnly="True" SortExpression="MAKH" />
                    <asp:BoundField DataField="TENKH" HeaderText="TENKH" SortExpression="TENKH" />
                    <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
                    <asp:BoundField DataField="DIACHI" HeaderText="DIACHI" SortExpression="DIACHI" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Daontph04190_CloudComputing_AssignmentConnectionString %>" DeleteCommand="DELETE FROM [KHACHHANG] WHERE [MAKH] = @MAKH" InsertCommand="INSERT INTO [KHACHHANG] ([MAKH], [TENKH], [EMAIL], [DIACHI]) VALUES (@MAKH, @TENKH, @EMAIL, @DIACHI)" SelectCommand="SELECT [MAKH], [TENKH], [EMAIL], [DIACHI] FROM [KHACHHANG]" UpdateCommand="UPDATE [KHACHHANG] SET [TENKH] = @TENKH, [EMAIL] = @EMAIL, [DIACHI] = @DIACHI WHERE [MAKH] = @MAKH">
                    <DeleteParameters>
                        <asp:Parameter Name="MAKH" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="MAKH" Type="Int32" />
                        <asp:Parameter Name="TENKH" Type="String" />
                        <asp:Parameter Name="EMAIL" Type="String" />
                        <asp:Parameter Name="DIACHI" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="TENKH" Type="String" />
                        <asp:Parameter Name="EMAIL" Type="String" />
                        <asp:Parameter Name="DIACHI" Type="String" />
                        <asp:Parameter Name="MAKH" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </h5>
        </li>
        <li class="two">
            <h5>Sản Phẩm<asp:DetailsView ID="DetailsView2" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MASP" DataSourceID="SqlDataSource1" Height="50px" Width="125px">
                <Fields>
                    <asp:BoundField DataField="MASP" HeaderText="MASP" ReadOnly="True" SortExpression="MASP" />
                    <asp:BoundField DataField="MALSP" HeaderText="MALSP" SortExpression="MALSP" />
                    <asp:BoundField DataField="DONVITINH" HeaderText="DONVITINH" SortExpression="DONVITINH" />
                    <asp:BoundField DataField="TENSP" HeaderText="TENSP" SortExpression="TENSP" />
                    <asp:BoundField DataField="MOTA" HeaderText="MOTA" SortExpression="MOTA" />
                    <asp:BoundField DataField="GIASP" HeaderText="GIASP" SortExpression="GIASP" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Daontph04190_CloudComputing_AssignmentConnectionString %>" DeleteCommand="DELETE FROM [SANPHAM] WHERE [MASP] = @MASP" InsertCommand="INSERT INTO [SANPHAM] ([MASP], [MALSP], [DONVITINH], [TENSP], [MOTA], [GIASP], [ANH]) VALUES (@MASP, @MALSP, @DONVITINH, @TENSP, @MOTA, @GIASP, @ANH)" SelectCommand="SELECT [MASP], [MALSP], [DONVITINH], [TENSP], [MOTA], [GIASP], [ANH] FROM [SANPHAM]" UpdateCommand="UPDATE [SANPHAM] SET [MALSP] = @MALSP, [DONVITINH] = @DONVITINH, [TENSP] = @TENSP, [MOTA] = @MOTA, [GIASP] = @GIASP, [ANH] = @ANH WHERE [MASP] = @MASP">
                    <DeleteParameters>
                        <asp:Parameter Name="MASP" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="MASP" Type="String" />
                        <asp:Parameter Name="MALSP" Type="String" />
                        <asp:Parameter Name="DONVITINH" Type="String" />
                        <asp:Parameter Name="TENSP" Type="String" />
                        <asp:Parameter Name="MOTA" Type="String" />
                        <asp:Parameter Name="GIASP" Type="Decimal" />
                        <asp:Parameter Name="ANH" Type="Object" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="MALSP" Type="String" />
                        <asp:Parameter Name="DONVITINH" Type="String" />
                        <asp:Parameter Name="TENSP" Type="String" />
                        <asp:Parameter Name="MOTA" Type="String" />
                        <asp:Parameter Name="GIASP" Type="Decimal" />
                        <asp:Parameter Name="ANH" Type="Object" />
                        <asp:Parameter Name="MASP" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </h5>
            
        </li>
        <li class="three">
            <h5>Chi tiết hóa đơn<asp:DetailsView ID="DetailsView3" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MCTHD" DataSourceID="SqlDataSource4" Height="50px" Width="125px">
                <Fields>
                    <asp:BoundField DataField="MCTHD" HeaderText="MCTHD" ReadOnly="True" SortExpression="MCTHD" />
                    <asp:BoundField DataField="MAHD" HeaderText="MAHD" SortExpression="MAHD" />
                    <asp:BoundField DataField="MASP" HeaderText="MASP" SortExpression="MASP" />
                    <asp:BoundField DataField="SOLUONG" HeaderText="SOLUONG" SortExpression="SOLUONG" />
                    <asp:BoundField DataField="TONGTIEN" HeaderText="TONGTIEN" SortExpression="TONGTIEN" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:Daontph04190_CloudComputing_AssignmentConnectionString %>" DeleteCommand="DELETE FROM [CHITIETHOADON] WHERE [MCTHD] = @MCTHD" InsertCommand="INSERT INTO [CHITIETHOADON] ([MCTHD], [MAHD], [MASP], [SOLUONG], [TONGTIEN]) VALUES (@MCTHD, @MAHD, @MASP, @SOLUONG, @TONGTIEN)" SelectCommand="SELECT [MCTHD], [MAHD], [MASP], [SOLUONG], [TONGTIEN] FROM [CHITIETHOADON]" UpdateCommand="UPDATE [CHITIETHOADON] SET [MAHD] = @MAHD, [MASP] = @MASP, [SOLUONG] = @SOLUONG, [TONGTIEN] = @TONGTIEN WHERE [MCTHD] = @MCTHD">
                    <DeleteParameters>
                        <asp:Parameter Name="MCTHD" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="MCTHD" Type="String" />
                        <asp:Parameter Name="MAHD" Type="String" />
                        <asp:Parameter Name="MASP" Type="String" />
                        <asp:Parameter Name="SOLUONG" Type="Int32" />
                        <asp:Parameter Name="TONGTIEN" Type="Decimal" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="MAHD" Type="String" />
                        <asp:Parameter Name="MASP" Type="String" />
                        <asp:Parameter Name="SOLUONG" Type="Int32" />
                        <asp:Parameter Name="TONGTIEN" Type="Decimal" />
                        <asp:Parameter Name="MCTHD" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server"></asp:SqlDataSource>
            </h5>
            <li class="five">
            <h5>Hóa đơn<asp:DetailsView ID="DetailsView5" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MAHD" DataSourceID="SqlDataSource6" Height="50px" Width="125px">
                <Fields>
                    <asp:BoundField DataField="MAHD" HeaderText="MAHD" ReadOnly="True" SortExpression="MAHD" />
                    <asp:BoundField DataField="SOHD" HeaderText="SOHD" SortExpression="SOHD" />
                    <asp:BoundField DataField="MAKH" HeaderText="MAKH" SortExpression="MAKH" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:Daontph04190_CloudComputing_AssignmentConnectionString %>" DeleteCommand="DELETE FROM [HOADON] WHERE [MAHD] = @MAHD" InsertCommand="INSERT INTO [HOADON] ([MAHD], [SOHD], [MAKH]) VALUES (@MAHD, @SOHD, @MAKH)" SelectCommand="SELECT [MAHD], [SOHD], [MAKH] FROM [HOADON]" UpdateCommand="UPDATE [HOADON] SET [SOHD] = @SOHD, [MAKH] = @MAKH WHERE [MAHD] = @MAHD">
                    <DeleteParameters>
                        <asp:Parameter Name="MAHD" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="MAHD" Type="String" />
                        <asp:Parameter Name="SOHD" Type="String" />
                        <asp:Parameter Name="MAKH" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="SOHD" Type="String" />
                        <asp:Parameter Name="MAKH" Type="Int32" />
                        <asp:Parameter Name="MAHD" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </h5>
        </li>
        <li class="four">
            <h5>Loại sản phẩm<asp:DetailsView ID="DetailsView4" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MALSP" DataSourceID="SqlDataSource5" Height="50px" Width="125px">
                <Fields>
                    <asp:BoundField DataField="MALSP" HeaderText="MALSP" ReadOnly="True" SortExpression="MALSP" />
                    <asp:BoundField DataField="TENLSP" HeaderText="TENLSP" SortExpression="TENLSP" />
                    <asp:BoundField DataField="MASP" HeaderText="MASP" SortExpression="MASP" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:Daontph04190_CloudComputing_AssignmentConnectionString %>" DeleteCommand="DELETE FROM [LOAISANPHAM] WHERE [MALSP] = @MALSP" InsertCommand="INSERT INTO [LOAISANPHAM] ([MALSP], [TENLSP], [MASP]) VALUES (@MALSP, @TENLSP, @MASP)" SelectCommand="SELECT [MALSP], [TENLSP], [MASP] FROM [LOAISANPHAM]" UpdateCommand="UPDATE [LOAISANPHAM] SET [TENLSP] = @TENLSP, [MASP] = @MASP WHERE [MALSP] = @MALSP">
                    <DeleteParameters>
                        <asp:Parameter Name="MALSP" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="MALSP" Type="String" />
                        <asp:Parameter Name="TENLSP" Type="String" />
                        <asp:Parameter Name="MASP" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="TENLSP" Type="String" />
                        <asp:Parameter Name="MASP" Type="String" />
                        <asp:Parameter Name="MALSP" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </h5>
        </li>
    </ol>
</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="HeadContent">
    <style type="text/css">
        .auto-style2 {
            width: 960px;
            height: 550px;
        }
    </style>
</asp:Content>

