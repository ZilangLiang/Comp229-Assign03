<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Comp229_Assign03.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md-6">
            <h2>Your information</h2>
            <table border="1">
                <tr>
                    <td>Course ID</td>
                    <td>
                        <asp:Label ID="lblcourseid" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                <td>Student ID</td>
                <td>
                    <asp:Label ID="lblstudentid" runat="server"></asp:Label>
                </td>
                </tr>
                <tr>
                    <td>Grade</td>
                    <td>
                        <asp:Label ID="lblgrade" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>

        </div>


    </div>
</asp:Content>
