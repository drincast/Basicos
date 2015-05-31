<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DoPostback.aspx.cs" Inherits="Demos.DoPostback" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Demo dopostback</title>
    <script type="text/javascript">
        function LlamarMetodoCodeBehind() {
            var accion = document.getElementById('txtEventArgument').value;

            if (accion === 'servidor1') {                
                __doPostBack('divCliente', 'Evento1');
            }
            else {
                __doPostBack('divCliente', 'Evento2');
            }
        }
    </script>
</head>
<body>
    <form id="frmDopostback" runat="server">
        <header>
            <h1>Demo DoPostback</h1>
        </header>
        <div>
            <div>
                <asp:TextBox ID="txtEventArgument" runat="server" AutoPostBack="True"></asp:TextBox>
            </div>
            <br />
            <div id="divCliente" style="width:150px; height:20px; background-color:ButtonShadow" onclick="LlamarMetodoCodeBehind();">
                Llamar Servidor
            </div>
        </div>
    </form>
</body>
</html>
