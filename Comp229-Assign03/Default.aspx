<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Comp229_Assign03._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>ASP.NET</h1>
        <p class="lead">ASP.NET is a free web framework for building great Web sites and Web applications using HTML, CSS, and JavaScript.</p>
        <p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>

    <div class="row">
        <div class="col-md-6">
            <h2>List of Students' names</h2>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="StudentID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:TemplateField HeaderText="StudentID" >
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" Text='<%#Eval("StudentID") %>' runat="server">LinkButton</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                    <asp:BoundField DataField="FirstMidName" HeaderText="FirstMidName" SortExpression="FirstMidName" />
                    <asp:BoundField DataField="EnrollmentDate" HeaderText="EnrollmentDate" SortExpression="EnrollmentDate" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Comp229Assign03ConnectionString5 %>" DeleteCommand="DELETE FROM [Students] WHERE [StudentID] = @StudentID" InsertCommand="INSERT INTO [Students] ([LastName], [FirstMidName], [EnrollmentDate]) VALUES (@LastName, @FirstMidName, @EnrollmentDate)" SelectCommand="SELECT * FROM [Students]" UpdateCommand="UPDATE [Students] SET [LastName] = @LastName, [FirstMidName] = @FirstMidName, [EnrollmentDate] = @EnrollmentDate WHERE [StudentID] = @StudentID" ProviderName="System.Data.SqlClient">
                    <DeleteParameters>
                        <asp:Parameter Name="StudentID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="LastName" Type="String" />
                        <asp:Parameter Name="FirstMidName" Type="String" />
                        <asp:Parameter DbType="Date" Name="EnrollmentDate" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="LastName" Type="String" />
                        <asp:Parameter Name="FirstMidName" Type="String" />
                        <asp:Parameter DbType="Date" Name="EnrollmentDate" />
                        <asp:Parameter Name="StudentID" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>

        </div>
        <div class="col-md-6">
            <h2 style="text-align:start">More Students</h2>
        </div>
        <div>
            <table style="width:auto;">
                <tr>
                    <td style="text-align:left">Please enter students' Last Name</td>
                    <td><asp:Textbox ID="lnTextBox" runat="server" placeholder="Students' last name"></asp:Textbox></td>
                </tr>
                <tr>
                    <td style="text-align:left">Please enter students' First Name</td>
                    <td><asp:Textbox ID="fnTextBox" runat="server" placeholder="Students' first name"></asp:Textbox></td>
                </tr>
                <tr>
                    <td style="text-align:left">Please enter students' enrollment date</td>
                    <td>
                        <asp:TextBox ID="dateTextBox" runat="server" placeholder="Enrollment Date"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                <td align="center" colspan="2">
                    <asp:Button ID="SubmitButton" runat="server" style="text-align:center" Text="Submit" Width="140px" OnClick="SubmitButton_Click"/>
                </td>
            </tr>
            </table>
            <asp:Label style=" color:lawngreen; text-align:center" ID="label1" runat="server"></asp:Label>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Comp229Assign03ConnectionString5 %>" SelectCommand="SELECT * FROM [Students]"></asp:SqlDataSource>

        </div>
    </div>

</asp:Content>
