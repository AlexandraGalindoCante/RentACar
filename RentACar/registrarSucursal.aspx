﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registrarSucursal.aspx.cs" Inherits="RentACar.registrarSucursal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Ciudad
        <asp:TextBox ID="txtCiudad" runat="server" style="margin-left: 15px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Direccion<asp:TextBox ID="txtDireccion" runat="server" style="margin-left: 21px"></asp:TextBox>
        <br />
        <br />
        Telefono<asp:TextBox ID="txtTelefono" runat="server" style="margin-left: 12px" Width="114px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Correo electronico<asp:TextBox ID="txtCorreo" runat="server" style="margin-left: 16px"></asp:TextBox>
        <br />
        <br />
        Pagina web&nbsp;&nbsp;
        <asp:TextBox ID="txtPagina" runat="server"></asp:TextBox>
        <br />
        <br />
        Gerente&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="ddGerente" runat="server">
        </asp:DropDownList>
    
        <br />
        <br />
        <asp:Button ID="btnRegistrar" runat="server" OnClick="btnRegistrar_Click" style="margin-left: 168px" Text="Registrar" />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblMensaje" runat="server"></asp:Label>
    
    </div>
    </form>
</body>
</html>
