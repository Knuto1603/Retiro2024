<%@ Page Title="" Language="C#" MasterPageFile="~/Alumno.Master" AutoEventWireup="true" CodeBehind="PagInicio.aspx.cs" Inherits="Retiro.Vista.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Datos" ContentPlaceHolderID="DatosAlum" runat="server">

    <div style="max-width: 50%; display: flex; justify-content: left; align-items: center; margin-left: 20px;">

        <div style="display: flex; flex-direction: column; justify-content: right; align-items: end; margin-right: 15px;">
            <h12 style="color: #ffffff; font-size: 10px;">Alumno :</h12>
            <h12 style="color: #ffffff; font-size: 10px;">Escuela Profesional :</h12>
            <h12 style="color: #ffffff; font-size: 10px;">Fecha :</h12>
            <h12 style="color: #ffffff; font-size: 10px;">Semestre Actual :</h12>
        </div>
        <div style="display: flex; flex-direction: column; justify-content: right; align-items: start;">

            <!--Etiquetas label con conexion sql-->

            <asp:Label ID="Alumno" runat="server" Text="" Style="color: #ffffff; font-size: 10px;"></asp:Label>
            <asp:Label ID="EscProfecional" runat="server" Text="" Style="color: #ffffff; font-size: 10px;"></asp:Label>
            <asp:Label ID="Fecha" runat="server" Text="" Style="color: #ffffff; font-size: 10px;"></asp:Label>
            <asp:Label ID="SemestreAct" runat="server" Text="" Style="color: #ffffff; font-size: 10px;"></asp:Label>


        </div>
    </div>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">

</asp:Content>
