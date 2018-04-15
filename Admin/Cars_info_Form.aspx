<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" EnableEventValidation="false" CodeFile="Cars_info_Form.aspx.cs" Inherits="Admin_Cars_info_Form" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
</head>
<body>
    <br/>
    <br/>
    <br/>
    <br/>
    <form id="form1">
    <div>
        <center>
            <h><b>Cars Details Form</b></h>
        </center>
    <table align="center">
        <tr>
            <td>Company Name:</td>
            <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <br />
            </td>            
        </tr>
        
        <tr>
            <td>Model Name</td>
            <td><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <br />
            </td>            
        </tr>
        <br>
        <tr>
            <td>Car Version</td>
            <td><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <br />
            </td>            
        </tr>
        <br>
        <tr>
            <td>Car Price</td>
            <td><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                <br />
            </td>            
        </tr>
        <br>
        <tr>
            <td>Body Type</td>
            <td><asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                <br />
            </td>            
        </tr>
        <br>
        <tr>
            <td>Segment</td>
            <td><asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                <br />
            </td>            
        </tr>
        <tr>
            <td>Engine</td>
            <td><asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                <br />
            </td>            
        </tr>
        <tr>
            <td>Displacment</td>
            <td><asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                <br />
            </td>            
        </tr>
        <tr>
            <td>Fuel Type</td>
            <td><asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                <br />
            </td>            
        </tr>
        <tr>
            <td>Transmission </td>
            <td><asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                <br />
            </td>            
        </tr>
        <tr>
            <td>No. Of Gears</td>
            <td><asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                <br />
            </td>            
        </tr>
        <tr>
            <td>Peak Power</td>
            <td><asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                <br />
            </td>            
        </tr>
        <tr>
            <td>Peak Torque</td>
            <td><asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
                <br />
            </td>            
        </tr>
        <tr>
            <td>Millege City</td>
            <td><asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
                <br />
            </td>            
        </tr>
        <tr>
            <td>Length</td>
            <td><asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>
                <br />
            </td>            
        </tr>
        <tr>
            <td>Width</td>
            <td><asp:TextBox ID="TextBox16" runat="server"></asp:TextBox>
                <br />
            </td>            
        </tr>
        <tr>
            <td>Height</td>
            <td><asp:TextBox ID="TextBox17" runat="server"></asp:TextBox>
                <br />
            </td>            
        </tr>
        <tr>
            <td>Ground Clearance</td>
            <td><asp:TextBox ID="TextBox18" runat="server"></asp:TextBox>
                <br />
            </td>            
        </tr>
        <tr>
            <td>WheelBase</td>
            <td><asp:TextBox ID="TextBox19" runat="server"></asp:TextBox>
                <br />
            </td>            
        </tr>
        <tr>
            <td>Kerb Weight</td>
            <td><asp:TextBox ID="TextBox20" runat="server"></asp:TextBox>
                <br />
            </td>            
        </tr>
        <tr>
            <td>Boot Space</td>
            <td><asp:TextBox ID="TextBox21" runat="server"></asp:TextBox>
                <br />
            </td>            
        </tr>
        <tr>
            <td>Turning Radius</td>
            <td><asp:TextBox ID="TextBox22" runat="server"></asp:TextBox>
                <br />
            </td>            
        </tr>
        <tr>
            <td>AIR control</td>
            <td><asp:TextBox ID="TextBox23" runat="server"></asp:TextBox>
                <br />
            </td>            
        </tr>
        <tr>
            <td>Climate Control</td>
            <td><asp:TextBox ID="TextBox24" runat="server"></asp:TextBox>
                <br />
            </td>            
        </tr>
        <tr>
            <td>Central Locking</td>
            <td><asp:TextBox ID="TextBox39" runat="server"></asp:TextBox>
                <br />
            </td>            
        </tr>
        <tr>
            <td>CD player</td>
            <td><asp:TextBox ID="TextBox25" runat="server"></asp:TextBox>
                <br />
            </td>            
        </tr>
        <tr>
            <td>Power Streaming</td>
            <td><asp:TextBox ID="TextBox26" runat="server"></asp:TextBox></td>            
        </tr>
        <tr>
            <td>Power Windows</td>
            <td><asp:TextBox ID="TextBox27" runat="server"></asp:TextBox></td>            
        </tr>
        <tr>
            <td>steering Adjustment</td>
            <td><asp:TextBox ID="TextBox28" runat="server"></asp:TextBox></td>            
        </tr>
        <tr>
            <td>Electricity Adjustment</td>
            <td><asp:TextBox ID="TextBox29" runat="server"></asp:TextBox></td>            
        </tr>
        <tr>
            <td>Steering Mounted</td>
            <td><asp:TextBox ID="TextBox30" runat="server"></asp:TextBox>
                <br />
            </td>            
        </tr>
        <tr>
            <td>ABS</td>
            <td><asp:TextBox ID="TextBox31" runat="server"></asp:TextBox>
                <br />
            </td>            
        </tr>
        <tr>
            <td>Airbag</td>
            <td><asp:TextBox ID="TextBox32" runat="server"></asp:TextBox>
                <br />
            </td>            
        </tr>
        <tr>
            <td>Parking Censor</td>
            <td><asp:TextBox ID="TextBox33" runat="server"></asp:TextBox>
                <br />
            </td>            
        </tr>
        <tr>
            <td>Traction Control</td>
            <td><asp:TextBox ID="TextBox34" runat="server"></asp:TextBox>
                <br />
            </td>            
        </tr>
        <tr>
            <td>Fuel Capacity</td>
            <td><asp:TextBox ID="TextBox35" runat="server"></asp:TextBox>
                <br />
            </td>            
        </tr>
        <tr>
            <td>Seating Capacity</td>
            <td><asp:TextBox ID="TextBox36" runat="server"></asp:TextBox>
                <br />
            </td>            
        </tr>
        <tr>
            <td>Specs Front</td>
            <td><asp:TextBox ID="TextBox37" runat="server"></asp:TextBox>
                <br />
            </td>            
        </tr>
        <tr>
            <td>Specs Rear</td>
            <td><asp:TextBox ID="TextBox38" runat="server"></asp:TextBox>
                <br />
            </td>            
        </tr>
        <tr>
            <td>Car image</td>
            <td><asp:FileUpload ID="f1" runat="server"/></td>            
        </tr>
        <tr>
            <td>Vehical Type</td>
            <td><asp:TextBox ID="TextBox40" runat="server"></asp:TextBox></td>            
        </tr>
        <tr>
            <td><asp:Button runat="server" ID="Button1" Text="Submit" OnClick="Button1_Click"/>
                
            </td>
        </tr>

    </table>
    </div>
    </form>
</body>
</html>
    </asp:Content>