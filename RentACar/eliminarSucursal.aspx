<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="eliminarSucursal.aspx.cs" Inherits="RentACar.eliminarSucursal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:DropDownList ID="ddSucursal" runat="server">
        </asp:DropDownList>
        <br />
        <br />
        <asp:Label ID="lblMensaje" runat="server"></asp:Label>
        <br />
        <br />
        <asp:Button ID="btnEliminar" runat="server" OnClick="btnEliminar_Click" Text="Eliminar" />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
