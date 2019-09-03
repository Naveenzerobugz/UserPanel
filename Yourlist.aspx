<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Yourlist.aspx.cs" Inherits="Yourlist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="Server">

    <!--main sub page heading-->
    <section id="page-head">
        <div class="container">
            <div class="row col-md-12">
                <div class="page-heading">
                    <h1>Your AD List</h1>
                    <h4>Easy & a simple way to edit</h4>
                </div>
            </div>
        </div>
    </section>
    <!--end main page heading-->
    <!--Detail -->
    <section id="detail">
        <div class="container">
            <form runat="server">
                <div class="row">
                    <div class="col-md-12 table-responsive">

                        <asp:GridView ID="gvListView" runat="server" CssClass="table table-bordered table-hover" EmptyDataText="No Records Found !" AllowSorting="true" ShowHeaderWhenEmpty="true" AutoGenerateColumns="false">
                            <Columns>
                                <asp:BoundField DataField="SNO" HeaderText="S.No" />
                                <asp:BoundField DataField="title" HeaderText="Title" />
                                <asp:BoundField DataField="tagline" HeaderText="Tagline" />
                                <asp:BoundField DataField="address" HeaderText="Address" />
                                <asp:BoundField DataField="country" HeaderText="Country" />
                                <asp:BoundField DataField="state" HeaderText="State" />
                                <asp:BoundField DataField="city" HeaderText="City" />
                                <asp:BoundField DataField="zipcode" HeaderText="Zipcode" />
                                <asp:BoundField DataField="mob" HeaderText="Mobile" />
                                <asp:BoundField DataField="email" HeaderText="Email" />

                                <%-- <asp:TemplateField HeaderStyle-Width="20px" ItemStyle-Width="20px">
                                <ItemTemplate>
                                    <asp:LinkButton ID="btnEdit" runat="server" OnCommand="btnEdit_Command"
                                        CssClass="btn btn-icon btn-primary" CommandArgument='<%# Eval("SYS_ID") %>'>
                                                            <i class="fa fa-pencil"></i></asp:LinkButton>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>--%>
                                <asp:TemplateField HeaderStyle-Width="20px" ItemStyle-Width="20px">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="btnDelete" runat="server" OnCommand="btnDelete_Command"
                                            OnClientClick="return Confirm_Msg(this,'Are you sure do you want to Delete this record..?');"
                                            CssClass="btn btn-icon btn-danger" CommandArgument='<%# Eval("SYS_ID") %>'>
                                                            <i class="fa fa-trash-o"></i></asp:LinkButton>
                                    </ItemTemplate>
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
            </form>
        </div>
    </section>
    <!--end details-->
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="Server">

    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>

    <script src="js/list.js"></script>
    <script src="js/CountryStateCity.js"></script>


</asp:Content>

