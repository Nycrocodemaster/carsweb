<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="Cars_details.aspx.cs" Inherits="Admin_Cars_details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<asp:gridview runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" DataSourceID="SqlDataSource2">
    <AlternatingRowStyle BackColor="White" />
    <EditRowStyle BackColor="#2461BF" />
    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#EFF3FB" />
    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
    <SortedAscendingCellStyle BackColor="#F5F7FB" />
    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
    <SortedDescendingCellStyle BackColor="#E9EBEF" />
    <SortedDescendingHeaderStyle BackColor="#4870BE" />
</asp:gridview>

<asp:sqldatasource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" DeleteCommand="DELETE FROM [models] WHERE [Mid] = @Mid" InsertCommand="INSERT INTO [models] ([Company_name], [Model_name], [Cid], [Car_version], [Cprice], [Body_type], [segment], [engine], [displacement], [fuelType], [transmission], [noofgears], [Peak_Power], [Peak_Torque], [Milleage_City], [Length], [Width], [Height], [Ground_Clearance], [Wheelbase], [Kerb_Weight], [Boot_Space], [Turning_Radius], [AC], [Climate_control], [Central_Locking], [Cd_Player], [Power_streering], [Power_Windows], [Steering_Adjustment], [Electricity_Adjustment], [Steerin_Mounted], [ABS], [Airbag], [Parking_Sensors], [Traction_Control], [Fuel_Capacity], [Seating_Capacity], [Specs_Front], [Specs_Rear], [cimage], [Vehicle_type]) VALUES (@Company_name, @Model_name, @Cid, @Car_version, @Cprice, @Body_type, @segment, @engine, @displacement, @fuelType, @transmission, @noofgears, @Peak_Power, @Peak_Torque, @Milleage_City, @Length, @Width, @Height, @Ground_Clearance, @Wheelbase, @Kerb_Weight, @Boot_Space, @Turning_Radius, @AC, @Climate_control, @Central_Locking, @Cd_Player, @Power_streering, @Power_Windows, @Steering_Adjustment, @Electricity_Adjustment, @Steerin_Mounted, @ABS, @Airbag, @Parking_Sensors, @Traction_Control, @Fuel_Capacity, @Seating_Capacity, @Specs_Front, @Specs_Rear, @cimage, @Vehicle_type)" SelectCommand="SELECT * FROM [models]" UpdateCommand="UPDATE [models] SET [Company_name] = @Company_name, [Model_name] = @Model_name, [Cid] = @Cid, [Car_version] = @Car_version, [Cprice] = @Cprice, [Body_type] = @Body_type, [segment] = @segment, [engine] = @engine, [displacement] = @displacement, [fuelType] = @fuelType, [transmission] = @transmission, [noofgears] = @noofgears, [Peak_Power] = @Peak_Power, [Peak_Torque] = @Peak_Torque, [Milleage_City] = @Milleage_City, [Length] = @Length, [Width] = @Width, [Height] = @Height, [Ground_Clearance] = @Ground_Clearance, [Wheelbase] = @Wheelbase, [Kerb_Weight] = @Kerb_Weight, [Boot_Space] = @Boot_Space, [Turning_Radius] = @Turning_Radius, [AC] = @AC, [Climate_control] = @Climate_control, [Central_Locking] = @Central_Locking, [Cd_Player] = @Cd_Player, [Power_streering] = @Power_streering, [Power_Windows] = @Power_Windows, [Steering_Adjustment] = @Steering_Adjustment, [Electricity_Adjustment] = @Electricity_Adjustment, [Steerin_Mounted] = @Steerin_Mounted, [ABS] = @ABS, [Airbag] = @Airbag, [Parking_Sensors] = @Parking_Sensors, [Traction_Control] = @Traction_Control, [Fuel_Capacity] = @Fuel_Capacity, [Seating_Capacity] = @Seating_Capacity, [Specs_Front] = @Specs_Front, [Specs_Rear] = @Specs_Rear, [cimage] = @cimage, [Vehicle_type] = @Vehicle_type WHERE [Mid] = @Mid">
    <DeleteParameters>
        <asp:Parameter Name="Mid" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Company_name" Type="String" />
        <asp:Parameter Name="Model_name" Type="String" />
        <asp:Parameter Name="Cid" Type="Int32" />
        <asp:Parameter Name="Car_version" Type="String" />
        <asp:Parameter Name="Cprice" Type="Int32" />
        <asp:Parameter Name="Body_type" Type="String" />
        <asp:Parameter Name="segment" Type="String" />
        <asp:Parameter Name="engine" Type="String" />
        <asp:Parameter Name="displacement" Type="String" />
        <asp:Parameter Name="fuelType" Type="String" />
        <asp:Parameter Name="transmission" Type="String" />
        <asp:Parameter Name="noofgears" Type="String" />
        <asp:Parameter Name="Peak_Power" Type="String" />
        <asp:Parameter Name="Peak_Torque" Type="String" />
        <asp:Parameter Name="Milleage_City" Type="String" />
        <asp:Parameter Name="Length" Type="Int32" />
        <asp:Parameter Name="Width" Type="Int32" />
        <asp:Parameter Name="Height" Type="Int32" />
        <asp:Parameter Name="Ground_Clearance" Type="Int32" />
        <asp:Parameter Name="Wheelbase" Type="Int32" />
        <asp:Parameter Name="Kerb_Weight" Type="Int32" />
        <asp:Parameter Name="Boot_Space" Type="Int32" />
        <asp:Parameter Name="Turning_Radius" Type="Int32" />
        <asp:Parameter Name="AC" Type="String" />
        <asp:Parameter Name="Climate_control" Type="String" />
        <asp:Parameter Name="Central_Locking" Type="String" />
        <asp:Parameter Name="Cd_Player" Type="String" />
        <asp:Parameter Name="Power_streering" Type="String" />
        <asp:Parameter Name="Power_Windows" Type="String" />
        <asp:Parameter Name="Steering_Adjustment" Type="String" />
        <asp:Parameter Name="Electricity_Adjustment" Type="String" />
        <asp:Parameter Name="Steerin_Mounted" Type="String" />
        <asp:Parameter Name="ABS" Type="String" />
        <asp:Parameter Name="Airbag" Type="String" />
        <asp:Parameter Name="Parking_Sensors" Type="String" />
        <asp:Parameter Name="Traction_Control" Type="String" />
        <asp:Parameter Name="Fuel_Capacity" Type="String" />
        <asp:Parameter Name="Seating_Capacity" Type="String" />
        <asp:Parameter Name="Specs_Front" Type="String" />
        <asp:Parameter Name="Specs_Rear" Type="String" />
        <asp:Parameter Name="cimage" Type="String" />
        <asp:Parameter Name="Vehicle_type" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Company_name" Type="String" />
        <asp:Parameter Name="Model_name" Type="String" />
        <asp:Parameter Name="Cid" Type="Int32" />
        <asp:Parameter Name="Car_version" Type="String" />
        <asp:Parameter Name="Cprice" Type="Int32" />
        <asp:Parameter Name="Body_type" Type="String" />
        <asp:Parameter Name="segment" Type="String" />
        <asp:Parameter Name="engine" Type="String" />
        <asp:Parameter Name="displacement" Type="String" />
        <asp:Parameter Name="fuelType" Type="String" />
        <asp:Parameter Name="transmission" Type="String" />
        <asp:Parameter Name="noofgears" Type="String" />
        <asp:Parameter Name="Peak_Power" Type="String" />
        <asp:Parameter Name="Peak_Torque" Type="String" />
        <asp:Parameter Name="Milleage_City" Type="String" />
        <asp:Parameter Name="Length" Type="Int32" />
        <asp:Parameter Name="Width" Type="Int32" />
        <asp:Parameter Name="Height" Type="Int32" />
        <asp:Parameter Name="Ground_Clearance" Type="Int32" />
        <asp:Parameter Name="Wheelbase" Type="Int32" />
        <asp:Parameter Name="Kerb_Weight" Type="Int32" />
        <asp:Parameter Name="Boot_Space" Type="Int32" />
        <asp:Parameter Name="Turning_Radius" Type="Int32" />
        <asp:Parameter Name="AC" Type="String" />
        <asp:Parameter Name="Climate_control" Type="String" />
        <asp:Parameter Name="Central_Locking" Type="String" />
        <asp:Parameter Name="Cd_Player" Type="String" />
        <asp:Parameter Name="Power_streering" Type="String" />
        <asp:Parameter Name="Power_Windows" Type="String" />
        <asp:Parameter Name="Steering_Adjustment" Type="String" />
        <asp:Parameter Name="Electricity_Adjustment" Type="String" />
        <asp:Parameter Name="Steerin_Mounted" Type="String" />
        <asp:Parameter Name="ABS" Type="String" />
        <asp:Parameter Name="Airbag" Type="String" />
        <asp:Parameter Name="Parking_Sensors" Type="String" />
        <asp:Parameter Name="Traction_Control" Type="String" />
        <asp:Parameter Name="Fuel_Capacity" Type="String" />
        <asp:Parameter Name="Seating_Capacity" Type="String" />
        <asp:Parameter Name="Specs_Front" Type="String" />
        <asp:Parameter Name="Specs_Rear" Type="String" />
        <asp:Parameter Name="cimage" Type="String" />
        <asp:Parameter Name="Vehicle_type" Type="String" />
        <asp:Parameter Name="Mid" Type="Int32" />
    </UpdateParameters>
</asp:sqldatasource>
</asp:Content>
    
