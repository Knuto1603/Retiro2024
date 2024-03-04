<%@ Page Title="" Language="C#" MasterPageFile="~/Alumno.Master" AutoEventWireup="true" CodeBehind="PagInicioAlumno.aspx.cs" Inherits="Retiro.Vista.WebForm1" %>

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

    <!-- Contenido de tu página -->
    <div style="width : 100%; align-items : center; display: flex; justify-content: center; flex-direction: column; padding-top: 10px;">

        <div style="display:1; width:50%; text-align: left; justify-content: center; border-bottom: 2px solid #f2f2f2;" >
            <h10>Cursos Inscritos</h10>
        </div>

        <div style="width: 50%;  display: flex; justify-content: left; align-items : center; margin-top: 10px;">
            <h10 style="font-weight:bold">Semestre:  </h10>
            <asp:DropDownList ID="ddlOpciones" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ListaSemestre">
            </asp:DropDownList>
        </div>
    </div>

    <div style="display: flex; justify-content: center; align-items: center; place-items: center; margin-top: 15px;">

        
        <!-- Grid View -->
        <asp:GridView runat="server" AutoGenerateColumns="False" DataSourceID="cursos" CssClass="table table-bordered" OnSelectedIndexChanged="DetalleAlumno">
            <RowStyle CssClass="table-primary" />
            <HeaderStyle CssClass="thead-dark" />

            <Columns>

                <asp:BoundField DataField="id" HeaderText="ID" SortExpression="id" />
                <asp:BoundField DataField="CodCurso" HeaderText="Código Curso" SortExpression="id" />
                <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="id" />
                <asp:BoundField DataField="Creditos" HeaderText="Creditos" SortExpression="id" />

                <asp:TemplateField HeaderText="Detalle">
                    <ItemTemplate>
                        <!-- Añadir boton a final de la fila -->
                        <asp:Button ID="DetalleAlumno" runat="server" Text="Solicitar Retiro" OnClick="DetalleAlumno" CssClass="btn btn-primary" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>

        </asp:GridView>
        <asp:SqlDataSource ID="Cursos" runat="server" ConnectionString="Data Source = DESKTOP-4ULAHMV\SQLEXPRESS ; Initial Catalog=Retiro; Integrated Security = true "
            SelectCommand="SELECT * FROM Cursos" OnSelecting="Cursos_Selecting"></asp:SqlDataSource>

    </div>


</asp:Content>



