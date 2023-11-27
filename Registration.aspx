<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Athle_E_Team_Project.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>STudentCommunityPlatform</title>
  <!-- base:css -->
  <link rel="stylesheet" href="../../vendors/typicons/typicons.css">
  <link rel="stylesheet" href="../../vendors/css/vendor.bundle.base.css">
  <!-- endinject -->
  <!-- plugin css for this page -->
  <!-- End plugin css for this page -->
  <!-- inject:css -->
  <link rel="stylesheet" href="../../css/vertical-layout-light/style.css">
  <!-- endinject -->
  <link rel="shortcut icon" href="../../images/favicon.png" />
    </head>
<body>
    <form id="form1" runat="server">
      <div class="container-scroller">
    <div class="container-fluid page-body-wrapper full-page-wrapper">
      <div class="content-wrapper d-flex align-items-center auth px-0">
        <div class="row w-100 mx-0">
          <div class="col-lg-4 mx-auto">
            <div class="auth-form-light text-left py-5 px-4 px-sm-5">
              <div class="brand-logo">
                  <%-- <img src="../../images/logo-dark.svg" alt="logo">--%>
              </div>
              <h4>Athle E Team&nbsp; - Member Registration</h4>
              <h6 class="font-weight-light">&nbsp;</h6>
           

               
                <table class="">
                    <tr>
                        <td>&nbsp;</td>
                        <td colspan="3">Name</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <div class="form-group">
                  
                  <asp:TextBox ID="txtfname" runat="server" class="form-control form-control-lg" placeholder="First Name" ></asp:TextBox>
                </div></td>
                        <td> <div class="form-group">
                  
                    <asp:TextBox ID="txtmname" runat="server" class="form-control form-control-lg" placeholder="Middle Name" ></asp:TextBox>
                </div></td>
                        <td> <div class="form-group">
                  
                  <asp:TextBox ID="txtlname" runat="server" class="form-control form-control-lg" placeholder="Last Name" ></asp:TextBox>
                </div></td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>Email</td>
                        <td>Contact</td>
                        <td>State</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td><div class="form-group">
                  
                    <asp:TextBox ID="txtemail" runat="server" class="form-control form-control-lg" placeholder="Email " ></asp:TextBox>
                </div></td>
                        <td> <div class="form-group">
                  
                    <asp:TextBox ID="txtContact" runat="server" class="form-control form-control-lg" placeholder="Contact Number" ></asp:TextBox>
                </div></td>
                        <td><div class="form-group">
                  
                    <asp:TextBox ID="txtstate" runat="server" class="form-control form-control-lg" placeholder="State " ></asp:TextBox>
                </div></td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>City</td>
                        <td>Address</td>
                        <td>Area Name</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td><div class="form-group">
                  
                    <asp:TextBox ID="txtcity" runat="server" class="form-control form-control-lg" placeholder="City " ></asp:TextBox>
                </div></td>
                        <td><div class="form-group">
                  
                    <asp:TextBox ID="txtadd" runat="server" class="form-control form-control-lg" placeholder="Address " TextMode="MultiLine" ></asp:TextBox>
                </div></td>
                        <td><div class="form-group">
                  
                    <asp:TextBox ID="txtarea" runat="server" class="form-control form-control-lg" placeholder="Area name " ></asp:TextBox>
                </div></td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>Username</td>
                        <td>Password</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                  
          <asp:TextBox ID="txtUname" runat="server" class="form-control form-control-lg" placeholder="Username"></asp:TextBox>
                        </td>
                        <td>
                  
          <asp:TextBox ID="txtpassowrd" runat="server" class="form-control form-control-lg" placeholder="Password" TextMode="Password"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
           

               
               
             
                
               
             
                

                

             <div class="form-group">
                  
                </div>
                <div class="form-group">
                  
                </div>
                <div class="mt-3">
                    <%-- <a class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn" href="../../dashboard.aspx">SIGN IN</a>--%>

                    <asp:Button ID="BtnRegistration" class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn" runat="server" Text="Submit" OnClick="BtnRegistration_Click" />
                </div>
                <div class="my-2 d-flex justify-content-between align-items-center">
                  <div class="form-check">
                 
                      <asp:Label ID="lblmsg" runat="server"></asp:Label>
                  </div>
               
                </div>
               
               
             































            </div>
          </div>
        </div>
      </div>
      <!-- content-wrapper ends -->
    </div>
    <!-- page-body-wrapper ends -->
  </div>
  <!-- container-scroller -->
  <!-- base:js -->
  <script src="../../vendors/js/vendor.bundle.base.js"></script>
  <!-- endinject -->
  <!-- inject:js -->
  <script src="../../js/off-canvas.js"></script>
  <script src="../../js/hoverable-collapse.js"></script>
  <script src="../../js/template.js"></script>
  <script src="../../js/settings.js"></script>
  <script src="../../js/todolist.js"></script>
  <!-- endinject -->
        
    </form>
</body>
</html>
