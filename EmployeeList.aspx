<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeList.aspx.cs" Inherits="JqueryDataTableWithGridview.EmployeeList" %>

<!DOCTYPE html>

<html>
<head runat="server">

    <title>Employee List</title>

    <script src="https://code.jquery.com/jquery-1.11.0.min.js"></script>
    <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.js"></script>

    <script type="text/javascript">


        $(document).ready(function () {
            $("#gvEmployee").dataTable({
                "paging": false,
                "language": {
                    "emptyTable": "No Employees Found"
                },
                "order": [[1, "asc"]],
                "aaSorting": []
            });
        });

    </script>
    <style>
        .in4-tabTable {
            border-collapse: separate !important;
        }

        .dataTables_filter {
            float: right;
            position: absolute;
            right: 44px;
            margin-top: -22px;
        }

            .dataTables_filter input {
                font-size: 11px;
                border: 1px solid #ccc;
                border-top: 1px solid #555;
                height: 19px;
                margin-left: 7px;
            }

        .in4-table th {
            cursor: pointer;
        }

        .dataTables_empty {
            text-align: center;
        }
    </style>


</head>
<body>
    <div class="in4-container">
        <form id="form1" runat="server">

            <table cellpadding="0" cellspacing="0" border="0" width="100%">
                <tr>
                    <td>
                        <asp:Label ID="lblHeader" runat="server" Font-Size="Large" Font-Bold="true" ForeColor="Blue">Employee List</asp:Label>

                    </td>
                </tr>

                <tr>
                    <td>
                        <div style="max-height: 400px; overflow: auto; width: 100%">
                            <asp:GridView ID="gvEmployee" runat="server" AutoGenerateColumns="False"
                                Width="100%" CellPadding="4" GridLines="None"
                                EmptyDataRowStyle-HorizontalAlign="Center"
                                ShowHeaderWhenEmpty="True" OnPreRender="gvEmployee_PreRender" ForeColor="#333333">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:BoundField HeaderText="EmployeeID" DataField="EmployeeID">
                                        <HeaderStyle CssClass="in4-colhead" Width="8%" HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField HeaderText="Name" DataField="Name">
                                        <HeaderStyle CssClass="in4-colhead" Width="12%" HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField HeaderText="Gender" DataField="Gender">
                                        <HeaderStyle CssClass="in4-colhead" Width="5%" HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField HeaderText="Department" DataField="Department">
                                        <HeaderStyle CssClass="in4-colhead" Width="8%" HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField HeaderText="Salary" DataField="Salary">
                                        <HeaderStyle CssClass="in4-colhead" Width="7%" HorizontalAlign="Center" />
                                    </asp:BoundField>
                                </Columns>
                                <EditRowStyle BackColor="#2461BF" />
                                <EmptyDataRowStyle HorizontalAlign="Center" />
                                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#EFF3FB" />
                                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                <SortedDescendingHeaderStyle BackColor="#4870BE" />
                            </asp:GridView>
                        </div>
                    </td>
                </tr>


            </table>

        </form>
    </div>
</body>
</html>
