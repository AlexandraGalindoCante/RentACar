<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="modificarVehiculo.aspx.cs" Inherits="RentACar.modificarVehiculo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblMsj" runat="server" Text=""></asp:Label>
        </p>
        <p style="margin-left: 80px">
            MODIFICAR VEHICULO<br />
        </p>
        <p>
            Placa del vehiculo
            <asp:DropDownList ID="drpListar" runat="server"  >
            </asp:DropDownList>
            <asp:Button ID="btnBuscar" runat="server" OnClick="btnBuscar_Click" style="margin-left: 13px" Text="Buscar" />
        </p>
        <p>
        <br />
    
        <br />
            <asp:Label ID="Label3" runat="server" Text="Placa" Visible="false"></asp:Label>
&nbsp;&nbsp;
        <asp:TextBox ID="txtPlaca" runat="server" Visible="false"></asp:TextBox>
&nbsp; 
            <asp:Label ID="Label1" runat="server" Text="Marca" Visible="false"></asp:Label>
&nbsp;
        <asp:TextBox ID="txtMarca" runat="server" Visible="false"></asp:TextBox>
        <br />
        <br />
            <asp:Label ID="Label2" runat="server" Text="Linea" Visible="false"></asp:Label>
&nbsp;
        <asp:TextBox ID="txtLinea" runat="server" Visible="false"></asp:TextBox>
&nbsp; 
            <asp:Label ID="Label4" runat="server" Text="Modelo" Visible="false"></asp:Label>
&nbsp;
        <asp:TextBox ID="txtModelo" runat="server" Visible="false"></asp:TextBox>
        <br />
        <br />
            <asp:Label ID="Label6" runat="server" Text="Cilindraje" Visible="false"></asp:Label>
&nbsp;<asp:TextBox ID="txtCilindraje" runat="server" Visible="false"></asp:TextBox>
&nbsp;
            <asp:Label ID="Label5" runat="server" Text="Color" Visible="false"></asp:Label>
&nbsp;<asp:TextBox ID="txtColor" runat="server" Visible="false"></asp:TextBox>
        <br />
        <br />
            <asp:Label ID="Label7" runat="server" Text="Servicio" Visible="false"></asp:Label>
&nbsp;<asp:TextBox ID="txtServicio" runat="server" Visible="false"></asp:TextBox>
            &nbsp;<asp:Label ID="Label8" runat="server" Text="Clase Vehiculo" Visible="false"></asp:Label>
&nbsp;<asp:TextBox ID="txtClaseVeh" runat="server" Visible="false"></asp:TextBox>
        <br />
        <br />
            <asp:Label ID="Label9" runat="server" Text="Carroceria" Visible="false"></asp:Label>
            &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtCarroceria" runat="server" Visible="false"></asp:TextBox>
&nbsp;
        <br />
        <br />
            <asp:Label ID="Label11" runat="server" Text="Combustible" Visible="false"></asp:Label>
&nbsp;<asp:TextBox ID="txtCombustible" runat="server" Visible="false"></asp:TextBox>
            &nbsp;<asp:Label ID="Label10" runat="server" Text="Capacidad" Visible="false"></asp:Label>
&nbsp;<asp:TextBox ID="txtCapacidad" runat="server" Visible="false"></asp:TextBox>
        <br />
        <br />
            <asp:Label ID="Label12" runat="server" Text="Motor" Visible="false"></asp:Label>
&nbsp;
        <asp:TextBox ID="txtMotor" runat="server" Visible="false"></asp:TextBox>
            &nbsp;<asp:Label ID="Label13" runat="server" Text="Vin" Visible="false"></asp:Label>
&nbsp;<asp:TextBox ID="txtVin" runat="server" Visible="false"></asp:TextBox>
        <br />
        <br />
        &nbsp;<asp:Label ID="Label18" runat="server" Text="Serie" Visible="false"></asp:Label>
        <asp:TextBox ID="txtSerie" runat="server" Visible="false"></asp:TextBox>
            &nbsp;<asp:Label ID="Label14" runat="server" Text="Chasis" Visible="false"></asp:Label>
&nbsp;<asp:TextBox ID="txtChasis" runat="server" Visible="false"></asp:TextBox>
        <br />
        <br />
            <asp:Label ID="Label16" runat="server" Text="Propietario" Visible="false"></asp:Label>
&nbsp;<asp:TextBox ID="txtPropietario" runat="server" Visible="false"></asp:TextBox>
            &nbsp;<asp:Label ID="Label15" runat="server" Text="Documento" Visible="false"></asp:Label>
&nbsp;<asp:TextBox ID="txtDocumento" runat="server" Visible="false"></asp:TextBox>
        <br />
        <br />
            <asp:Label ID="Label17" runat="server" Text="Precio" Visible="false"></asp:Label>
&nbsp;
        <asp:TextBox ID="txtPrecio" runat="server" Visible="false"></asp:TextBox>
        </p>
        <p style="margin-left: 120px">
            <asp:Button ID="btnModificar" runat="server" OnClick="btnModificar_Click" style="margin-left: 28px" Text="Modificar" />
        </p>
    <div>
    
    </div>
    </form>
</body>
</html>
