<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registrarVehiculo.aspx.cs" Inherits="RentACar.registrarVehiculo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="font-weight: 700; margin-left: 40px">
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblMsj" runat="server" Text="Vehiculo registrado con èxito!" Visible="false"></asp:Label>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; REGISTRO VEHICULO<br />
        <br />
    
        <br />
        Placa&nbsp;
        <asp:TextBox ID="txtPlaca" runat="server"></asp:TextBox>
&nbsp; Marca&nbsp;
        <asp:TextBox ID="txtMarca" runat="server"></asp:TextBox>
        <br />
        <br />
        Linea&nbsp;
        <asp:TextBox ID="txtLinea" runat="server"></asp:TextBox>
&nbsp; Modelo&nbsp;
        <asp:TextBox ID="txtModelo" runat="server"></asp:TextBox>
        <br />
        <br />
        Cilindraje
        <asp:TextBox ID="txtCilindraje" runat="server"></asp:TextBox>
&nbsp; Color
        <asp:TextBox ID="txtColor" runat="server"></asp:TextBox>
        <br />
        <br />
        Servicio
        <asp:TextBox ID="txtServicio" runat="server"></asp:TextBox>
&nbsp;clase vehiculo
        <asp:TextBox ID="txtClaseVeh" runat="server"></asp:TextBox>
        <br />
        <br />
        Tipo carroceria&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtCarroceria" runat="server"></asp:TextBox>
&nbsp;
        <br />
        <br />
        Combustible
        <asp:TextBox ID="txtCombustible" runat="server"></asp:TextBox>
&nbsp;Capacidad
        <asp:TextBox ID="txtCapacidad" runat="server"></asp:TextBox>
        <br />
        <br />
        Nº motor&nbsp;
        <asp:TextBox ID="txtMotor" runat="server"></asp:TextBox>
&nbsp;Vin
        <asp:TextBox ID="txtVin" runat="server"></asp:TextBox>
        <br />
        <br />
        Nº serie
        <asp:TextBox ID="txtSerie" runat="server"></asp:TextBox>
&nbsp;Nº chasis
        <asp:TextBox ID="txtChasis" runat="server"></asp:TextBox>
        <br />
        <br />
        Propietario
        <asp:TextBox ID="txtPropietario" runat="server"></asp:TextBox>
&nbsp;Documento
        <asp:TextBox ID="txtDocumento" runat="server"></asp:TextBox>
        <br />
        <br />
        Precio compra&nbsp;
        <asp:TextBox ID="txtPrecio" runat="server"></asp:TextBox>
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnRegistrar" runat="server" OnClick="btnRegistrar_Click" Text="Registrar" />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
