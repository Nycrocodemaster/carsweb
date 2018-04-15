<%@ Page Language="C#" AutoEventWireup="true" CodeFile="payment_success.aspx.cs" Inherits="payment_success" EnableEventValidation="false" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>content</title>

    <link href="product_success%20css/bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="product_success%20css/bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
    <link href="product_success%20css/bower_components/Ionicons/css/ionicons.min.css" rel="stylesheet" />
    <link href="product_success%20css/dist/css/AdminLTE.min.css" rel="stylesheet" />
    <link href="product_success%20css/dist/css/skins/_all-skins.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form" runat="server">
        <div>
            <asp:Panel ID="Panel1" runat="server">
                <div>
                    <!-- Content Header (Page header) -->
                    <section class="content-header">
                        <h1>Invoice
       
          
                        </h1>
                        <ol class="breadcrumb">
                            <li><a href="index.aspx"><i class="fa fa-dashboard"></i>Home</a></li>

                        </ol>
                    </section>

                    <div class="pad margin no-print">
                        <div class="callout callout-info" style="margin-bottom: 0!important;">
                            <h4><i class="fa fa-info"></i>Note:</h4>
                            This page has been enhanced for printing. Click the print button at the bottom of the invoice .
                        </div>
                    </div>

                    <!-- Main content -->
                    <section class="invoice">
                        <!-- title row -->
                        <div class="row">
                            <div class="col-xs-12">
                                <h2 class="page-header">
                                    <i class="fa fa-globe"></i>Invoice, 
                                </h2>
                            </div>
                            <!-- /.col -->
                        </div>
                        <!-- info row -->
                        <asp:DataList ID="DataList1" runat="server">
                            <ItemTemplate>

                                <div class="row invoice-info">
                                    <div class="col-sm-4 invoice-col">
                                        From
          <address>
              <strong>ATO, Inc.</strong><br>
          </address>
                                    </div>
                                    <!-- /.col -->
                                    <div class="col-sm-4 invoice-col">
                                        To
               <address>


                   <strong><%#Eval("spname") %></strong><br>
                   <%#Eval("Address") %><br>
                   <%#Eval("Locality") %>, <%#Eval("City") %>, <%#Eval("Landmark")%>, <%#Eval("State") %><br>
                   Phone: <%#Eval("Phone") %><br>
               </address>

                                    </div>
                                    <!-- /.col -->
                                    <div class="col-sm-4 invoice-col">
                                        <b>Invoice </b>
                                        <br>
                                        <br>
                                        <b>Order ID:</b> <%#Eval("Order_id") %><br>
                                    </div>
                                    <!-- /.col -->
                                </div>
                                <!-- /.row -->
                            </ItemTemplate>
                        </asp:DataList>
                        <!-- Table row -->
                        <div class="row">
                            <div class="col-xs-12 table-responsive">
                                <table class="table table-striped">
                                    <thead>
                                        <tr>
                                            <th>Qty</th>
                                            <th>Product</th>

                                        </tr>
                                    </thead>
                                    <tbody>
                                        <asp:Repeater ID="d1" runat="server">
                                            <ItemTemplate>
                                                <tr>
                                                    <td>1</td>
                                                    <td><%#Eval("product_name") %></td>
                                                </tr>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </tbody>
                                </table>
                            </div>
                            <!-- /.col -->
                        </div>
                        <!-- /.row -->

                        <div class="row">
                            <!-- accepted payments column -->
                            <div class="col-xs-6">
                                <p class="lead">Payment Methods:</p>
                                <img src="visa.png" />


                                <img src="paypal2.png" />

                                <img src="mastercard.png" />
                                <p class="text-muted well well-sm no-shadow" style="margin-top: 10px;">
                                    Thank you for your order!
Your order has been placed and is being processed. When the item(s) are shipped,you will receive an email with the details. You can track this order through My Orders page.

                                </p>
                            </div>
                            <!-- /.col -->
                            <div class="col-xs-6">
                                <p class="lead">
                                    Amount Due
                                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                                </p>

                                <div class="table-responsive">
                                    <table class="table">

                                        <tr>
                                            <th>Total:</th>
                                            <td>
                                                <asp:Label ID="price" runat="server" /></td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                            <!-- /.col -->
                        </div>
                        <!-- /.row -->

                        <!-- this row will not appear when printing -->


                    </section>
                    <!-- /.content -->
                    <div class="clearfix"></div>
                </div>
                <!-- /.content-wrapper -->
            </asp:Panel>
            <div class="row no-print">
                <div class="col-xs-12">
                    <a href="invoice-print.html" target="_blank" class="btn btn-default"><i class="fa fa-print"></i>Print</a>


                </div>
            </div>
            <asp:Button ID="Button1" runat="server" Text="Get Invoice" Class="fa fa-download" OnClick="Button1_Click" />
        </div>
      
    </form>
</body>
</html>
