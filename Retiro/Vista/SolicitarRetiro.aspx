<%@ Page Title="" Language="C#" MasterPageFile="~/Alumno.master" AutoEventWireup="true" CodeBehind="SolicitarRetiro.aspx.cs" Inherits="Retiro.Vista.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        function mostrarAlerta() {
            alert('Registrado con exito');
        }
    </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="DatosAlum" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="body" runat="server">

    <div class="container-fluid" style="margin-left: 100px;">

        <label>DATOS ALUMNO</label>

        <div style="max-width: 50%; display: flex; justify-content: left; align-items: center;">

            <div style="display: flex; flex-direction: column; justify-content: left; align-items: flex-start; margin-right: 15px;">
                <label style="color: #000000;">Alumno :</label>
                <label style="color: #000000;">Escuela Profesional :</label>
                <label style="color: #000000;">Fecha :</label>
                <label style="color: #000000;">Semestre Actual :</label>
            </div>

            <div style="display: flex; flex-direction: column; justify-content: right; align-items: start;">

                <!--Etiquetas label con conexion sql-->

                <asp:Label ID="Alumno" runat="server" Text="" Style="color: #000000;"></asp:Label>
                <asp:Label ID="EscProfecional" runat="server" Text="" Style="color: #000000;"></asp:Label>
                <asp:Label ID="Fecha" runat="server" Text="" Style="color: #000000;"></asp:Label>
                <asp:Label ID="SemestreAct" runat="server" Text="" Style="color: #000000;"></asp:Label>
            </div>
        </div>


        <form role="form">

            <label>MOTIVOS: </label>
            <div class="checkbox">
                <label>
                    <input type="checkbox" value="">
                    Salud
                </label>
                <label>
                    <input type="checkbox" value="">
                    Cruce de Horarios
                </label>
                <label>
                    <input type="checkbox" value="">
                    Otros
                </label>
            </div>
            <textarea id="txtMotivo" class="form-control" rows="3"></textarea>

            <div class="form-group">
                <label for="ANEXOS">ANEXOS</label>
                <input type="file" id="ejemplo_archivo_1">
            </div>
            <asp:Button ID="btnEnviarSolicitud" runat="server" Text="Enviar" CssClass="btn btn-default" OnClick="enviarSolicitud" />


        </form>
    </div>
</asp:Content>
