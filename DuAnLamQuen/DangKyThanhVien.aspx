<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangKyThanhVien.aspx.cs" Inherits="DuAnLamQuen.DangKyThanhVien" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container w-50 mt-5">
            <div class="row">
                <%--Left side--%>

                <div class="col-8 border border-success border-right-0 w-100">
                    <div class="text-center">        
                        <asp:Label CssClass=" h4 text-success" ID="Label1" runat="server" Text="Thông tin đăng nhập"></asp:Label>
                    </div>
                    <%--Tên đăng nhập--%>
                    <div class="row mt-2 mb-2">
                        <div class="col-4 text-right mt-1">
                            <asp:Label ID="lbTenDangNhap" runat="server" Text="Tên đăng nhập:"></asp:Label>
                        </div>
                        <div class="col-8 text-right">
                            <asp:TextBox Width="100%" ID="txtTenDangNhap" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <%--Mật khẩu--%>
                    <div class="row mb-2 mt-2">
                        <div class="col-4 text-right mt-1">
                            <asp:Label ID="Label3" runat="server" Text="Mật khẩu:"></asp:Label>
                        </div>
                        <div class="col-8 text-right">
                            <asp:TextBox Width="100%" ID="txtMK" type="password" runat="server"></asp:TextBox>
                        </div>
                    </div>

                    <%--Nhập lại Mật khẩu--%>
                    <div class="row mb-2">
                        <div class="col-4 text-right mt-1">
                            <asp:Label ID="Label4" runat="server" Text="Nhập lại mật khẩu:"></asp:Label>
                        </div>
                        <div class="col-8 text-right">
                            <asp:TextBox Width="100%" ID="txtRMK" type="password" runat="server"></asp:TextBox>
                        </div>
                    </div>

                    <div class="text-center">        
                        <asp:Label CssClass=" h4 text-success" ID="Label5" runat="server" Text="Thông tin cá nhân"></asp:Label>
                    </div>
                    <%--Họ tên KH--%>
                    <div class="row mt-2 mb-2">
                        <div class="col-4 text-right mt-1">
                            <asp:Label ID="Label6" runat="server" Text="Họ tên khách hàng:"></asp:Label>
                        </div>
                        <div class="col-8 text-right">
                            <asp:TextBox Width="100%" ID="txtHoTen" runat="server"></asp:TextBox>
                        </div>
                    </div>

                    <%--Ngày sinh--%>
                    <div class="row mt-2 mb-2">
                        <div class="col-4 text-right mt-1">
                            <asp:Label ID="Label7" runat="server" Text="Ngày sinh:"></asp:Label>
                        </div>
                        <div class="col-8 text-right">
                            <asp:DropDownList Width="30%" ID="DropDownList1" runat="server"></asp:DropDownList>/
                            <asp:DropDownList Width="30%" ID="DropDownList2" runat="server"></asp:DropDownList>/
                            <asp:DropDownList Width="30%" ID="DropDownList3" runat="server"></asp:DropDownList>
                        </div>
                    </div>

                    <%--Email--%>
                    <div class="row mt-2 mb-2">
                        <div class="col-4 text-right mt-1">
                            <asp:Label ID="Label8" runat="server" Text="Email:"></asp:Label>
                        </div>
                        <div class="col-8 text-right">
                            <asp:TextBox Width="100%" ID="txtEmail" type="email" runat="server"></asp:TextBox>
                        </div>
                    </div>

                    <%--Thu nhập--%>
                    <div class="row mt-2 mb-2">
                        <div class="col-4 text-right mt-1">
                            <asp:Label ID="Label9" runat="server" Text="Thu nhập:"></asp:Label>
                        </div>
                        <div class="col-8 text-right">
                            <asp:TextBox Width="100%" ID="txtThuNhap" runat="server"></asp:TextBox>
                        </div>
                    </div>

                    <%--Giới tính--%>
                    <div class="row mt-2 mb-2">
                        <div class="col-4 text-right mt-1">
                            <asp:Label ID="Label10" runat="server" Text="Giới tính:"></asp:Label>
                        </div>
                        <div class="col-8 text-left mt-1">
                           <asp:CheckBox CssClass="float-left" ID="ckbGT" runat="server" /> Nam 
                        </div>
                    </div>

                    <%--Địa chỉ--%>
                    <div class="row mt-2 mb-2">
                        <div class="col-4 text-right mt-1">
                            <asp:Label ID="Label11" runat="server" Text="Địa chỉ:"></asp:Label>
                        </div>
                        <div class="col-8 text-right">
                            <asp:TextBox Width="100%" ID="txtDiaChi" runat="server"></asp:TextBox>
                        </div>
                    </div>

                    <%--Điện thoại--%>
                    <div class="row mt-2 mb-2">
                        <div class="col-4 text-right mt-1">
                            <asp:Label ID="Label12" runat="server" Text="Điện thoại:"></asp:Label>
                        </div>
                        <div class="col-8 text-right">
                            <asp:TextBox Width="100%" ID="txtDienThoai" runat="server"></asp:TextBox>
                        </div>
                    </div>

                     <div class="row mb-2">
                        <div class="col text-center mt-2">
                            <asp:Button CssClass="btn btn-success" ID="Button2" runat="server" Text="In đơn đặt hàng"  />
                        </div>
                    </div>
                </div>

               
                <%--right side--%>
                <div class="col-4 container-fluid border border-success w-100">
                    <div class="text-center">        
                        <asp:Label CssClass=" h4 text-success" ID="Label2" runat="server" Text="Hồ sơ khách hàng"></asp:Label>
                    </div>
                </div>
            </div>
        </div>
        
    </form>
</body>
</html>
