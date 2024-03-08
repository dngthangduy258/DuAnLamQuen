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

        <div class="container w-75 mt-5">



            <div class="row">
                <%--Left side--%>

                <div class="col-8 border border-success border-right-0 w-100">

                    <div class="text-center bg-success p-2">        
                        <asp:Label CssClass=" h4 text-light" ID="Label1" runat="server" Text="Thông tin đăng nhập"></asp:Label>
                    </div>
                    <%--Tên đăng nhập--%>
                    <div class="row mt-2 mb-2">
                        <div class="col-3 text-right mt-1">








                            <asp:Label ID="lbTenDangNhap" runat="server" Text="Tên đăng nhập:"></asp:Label>
                        </div>
                        <div class="col-8 text-right">
                            <asp:TextBox Width="100%" ID="txtTenDangNhap" runat="server"></asp:TextBox>
                        </div>

                        <div class="col-1 text-left">
                            <asp:RequiredFieldValidator ID="frvTenDN" runat="server" ErrorMessage="Tên đăng nhập không được rỗng:" ControlToValidate="txtTenDangNhap" ForeColor="#FF0066" Text="(*)"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="revTenDN" runat="server" ErrorMessage="Tên đăng nhập không hợp lệ" ControlToValidate="txtTenDangNhap" ForeColor="#FF0066" ValidationExpression="[\d|\w|!|&|_]{8}[\d|\w|!|&|_]+" Text="(*)"></asp:RegularExpressionValidator>
                        </div>
                        
                    </div>
                    <%--Mật khẩu--%>
                    <div class="row mb-2 mt-2">
                        <div class="col-3 text-right mt-1">






                            <asp:Label ID="Label3" runat="server" Text="Mật khẩu:"></asp:Label>
                        </div>
                        <div class="col-8 text-right">
                            <asp:TextBox Width="100%" ID="txtMK" type="password" runat="server"></asp:TextBox>
                        </div>

                        <div class="col-1 text-left">
                            <asp:RequiredFieldValidator ID="rfv" runat="server" ErrorMessage="Mật khẩu không được rỗng!" ControlToValidate="txtMK" ForeColor="#FF0066" Text="(*)"></asp:RequiredFieldValidator>
                        </div>


                    </div>

                    <%--Nhập lại Mật khẩu--%>
                    <div class="row mb-2">

                        <div class="col-3 text-right mt-1">



                            <asp:Label ID="Label4" runat="server" Text="Nhập lại mật khẩu:"></asp:Label>
                        </div>
                        <div class="col-8 text-right">
                            <asp:TextBox Width="100%" ID="txtRMK" type="password" runat="server"></asp:TextBox>
                        </div>

                        <div class="col-1 text-left">
                            <asp:RequiredFieldValidator ID="rfvMKNL" runat="server" ErrorMessage="Mật khẩu nhập lại không được rỗng!" ControlToValidate="txtRMK" Display="Dynamic" ForeColor="#FF0066" Text="(*)"></asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="cpvNLMK0" runat="server" ErrorMessage="Nhập lại mật khẩu không đúng!" ControlToCompare="txtRMK" ControlToValidate="txtMK" ForeColor="#FF0066" Text="(*)"></asp:CompareValidator>
                        </div>
                    </div>

                    <div class="text-center bg-success p-2">        
                        <asp:Label CssClass=" h4 text-light" ID="Label5" runat="server" Text="Thông tin cá nhân"></asp:Label>
                    </div>
                    <%--Họ tên KH--%>
                    <div class="row mt-2 mb-2">
                        <div class="col-3 text-right mt-1">










                            <asp:Label ID="Label6" runat="server" Text="Họ tên khách hàng:"></asp:Label>
                        </div>
                        <div class="col-8 text-right">
                            <asp:TextBox Width="100%" ID="txtHoTen" runat="server"></asp:TextBox>
                        </div>

                        <div class="col-1 text-left">
                            <asp:RequiredFieldValidator ID="rfvTenKhachHang" runat="server" ErrorMessage="Họ tên không được rổng" ControlToValidate="txtHoTen" ForeColor="#FF0066" Text="(*)"></asp:RequiredFieldValidator>
                        </div>


                    </div>

                    <%--Ngày sinh--%>
                    <div class="row mt-2 mb-2">

                        <div class="col-3 text-right mt-1">
                            <asp:Label ID="Label7" runat="server" Text="Ngày sinh:"></asp:Label>
                        </div>
                        <div class="col-8 text-right">
                            <asp:DropDownList Width="30%" ID="ddlNgay" runat="server"></asp:DropDownList>/
                            <asp:DropDownList Width="30%" ID="ddlThang" runat="server" OnSelectedIndexChanged="ddlThang_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>/
                            <asp:DropDownList Width="30%" ID="ddlNam" runat="server"></asp:DropDownList>
                        </div>
                        <div class="col-1 text-left">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Chưa chọn ngày sinh" ControlToValidate="ddlNgay" ForeColor="#FF0066" Text="(*)"></asp:RequiredFieldValidator>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Chưa chọn tháng sinh" ControlToValidate="ddlThang" ForeColor="#FF0066" Text="(*)"></asp:RequiredFieldValidator>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Chưa chọn năm sinh" ControlToValidate="ddlNam" ForeColor="#FF0066" Text="(*)"></asp:RequiredFieldValidator>









                        </div>
                    </div>

                    <%--Email--%>
                    <div class="row mt-2 mb-2">

                        <div class="col-3 text-right mt-1">



                            <asp:Label ID="Label8" runat="server" Text="Email:"></asp:Label>
                        </div>
                        <div class="col-8 text-right">
                            <asp:TextBox Width="100%" ID="txtEmail" type="email" runat="server"></asp:TextBox>
                        </div>

                        <div class="col-1 text-left">
                        <asp:RegularExpressionValidator ID="rfvEmail" runat="server" ErrorMessage="Email không hợp lệ" ControlToValidate="txtEmail" ForeColor="#FF0066" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Text="(*)"></asp:RegularExpressionValidator>
                            </div>


                    </div>

                    <%--Thu nhập--%>
                    <div class="row mt-2 mb-2">

                        <div class="col-3 text-right mt-1">



                            <asp:Label ID="Label9" runat="server" Text="Thu nhập:"></asp:Label>
                        </div>
                        <div class="col-8 text-right">
                            <asp:TextBox Width="100%" ID="txtThuNhap" runat="server"></asp:TextBox>
                        </div>

                        <div class="col-1 text-left">
                            <asp:RangeValidator ID="rvdThuNhap" runat="server" ErrorMessage="Thu nhập từ 1.000.000vnd đến 5.000.0000vnd" ControlToValidate="txtThuNhap" ForeColor="#FF0066" MaximumValue="50000000" MinimumValue="1000000" Type="Integer" Text="(*)"></asp:RangeValidator>
                        </div>


                    </div>

                    <%--Giới tính--%>
                    <div class="row mt-2 mb-2">

                        <div class="col-3 text-right mt-1">



                            <asp:Label ID="Label10" runat="server" Text="Giới tính:"></asp:Label>
                        </div>
                        <div class="col-8 text-left mt-1">
                           <asp:CheckBox CssClass="float-left" ID="ckbGT" runat="server" /> Nam 
                        </div>

                        <div class="col-1 text-left">
                        
                        </div>


                    </div>

                    <%--Địa chỉ--%>
                    <div class="row mt-2 mb-2">

                        <div class="col-3 text-right mt-1">



                            <asp:Label ID="Label11" runat="server" Text="Địa chỉ:"></asp:Label>
                        </div>
                        <div class="col-8 text-right">
                            <asp:TextBox Width="100%" ID="txtDiaChi" runat="server"></asp:TextBox>
                        </div>

                        <div class="col-1 text-left">
                        
                        </div>


                    </div>

                    <%--Điện thoại--%>
                    <div class="row mt-2 mb-2">

                        <div class="col-3 text-right mt-1">



                            <asp:Label ID="Label12" runat="server" Text="Điện thoại:"></asp:Label>
                        </div>
                        <div class="col-8 text-right">
                            <asp:TextBox Width="100%" ID="txtDienThoai" runat="server"></asp:TextBox>
                        </div>

                        <div class="col-1 text-left">
                        
                        </div>


                    </div>

                     <div class="row mb-2">
                        <div class="col text-center mt-2">

                            <asp:Button CssClass="btn btn-success" ID="Button2" runat="server" Text="Đăng ký" OnClick="Button2_Click"  />



                        </div>
                    </div>
                </div>

               
                <%--right side--%>
                <div class="col-4 container-fluid border border-success w-100">

                    <div class="text-center bg-success p-2">        
                        <asp:Label CssClass=" h4  text-light" ID="Label2" runat="server" Text="Hồ sơ khách hàng"></asp:Label>
                    </div>
                    <div class="text-info">
                        <asp:Label ID="lblKetQua" runat="server" Text=""></asp:Label>
                    </div>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText="Danh sách lỗi" ForeColor="Red" />





                </div>
            </div>
        </div>
        
    </form>
</body>
</html>
