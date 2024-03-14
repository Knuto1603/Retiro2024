<%@ Page Title="" Language="C#" MasterPageFile="~/Alumno.master" AutoEventWireup="true" CodeBehind="CosultarEstado.aspx.cs" Inherits="Retiro.Vista.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="DatosAlum" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="body" runat="server">

    <!-- Grid View -->
    <div style="width: 100%; align-items: center; display: flex; justify-content: center; flex-direction: column; padding-top: 10px;">
        <asp:GridView runat="server" AutoGenerateColumns="False" DataSourceID="DetSolicitud" CssClass="table table-bordered" OnSelectedIndexChanged="Unnamed1_SelectedIndexChanged">
            <RowStyle CssClass="table-primary" />
            <HeaderStyle CssClass="thead-dark" />

            <Columns>
                <asp:BoundField DataField="id" HeaderText="ID" SortExpression="id" />
                <asp:BoundField DataField="Fecha" HeaderText="Fecha" SortExpression="Fecha" />
                <asp:BoundField DataField="CodCurso" HeaderText="Código Curso" SortExpression="CodCurso" />
                <asp:BoundField DataField="CodVoucher" HeaderText="Código Voucher" SortExpression="CodVoucher" />
                <asp:BoundField DataField="Motivo" HeaderText="Motivo" SortExpression="Motivo" />
                <asp:BoundField DataField="Estado" HeaderText="Estado" SortExpression="Estado" />
                <asp:TemplateField HeaderText="Detalle">
                    <ItemTemplate>
                        <!-- Añadir boton a final de la fila -->
                        <asp:Button ID="DetalleSolicitud" runat="server" Text="Ver Solicitud" CommandName="DetalleCommand" CommandArgument='<%# Container.DataItemIndex %>' CssClass="btn btn-primary" />
                    </ItemTemplate>
                </asp:TemplateField>

            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="DetSolicitud" runat="server" ConnectionString="Data Source=DESKTOP-4ULAHMV\SQLEXPRESS;Initial Catalog=Retiro;Integrated Security=true"
            SelectCommand="SELECT * FROM DetalleSolicitud"></asp:SqlDataSource>

    </div>

</asp:Content>
