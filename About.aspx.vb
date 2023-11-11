Imports System.Data.SqlClient

Public Class _About
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        Try
            Dim conn_ As New SqlConnection(ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString)
            conn_.Open()
            Dim command As New SqlCommand("INSERT INTO Contact (Name, Email, Phone) VALUES (@Fname, @Email, @Phone)")
            command.Parameters.AddWithValue("@Fname", txtFname.Text)
            command.Parameters.AddWithValue("@Email", txtEmail.Text)
            command.Parameters.AddWithValue("@Phone", txtPhone.Text)
            command.Connection = conn_
            command.ExecuteNonQuery()
            lblOut.Text = "Information Saved"
            GridView1.DataBind()
            conn_.Close()
        Catch ex As Exception
            lblOut.Text = "ErrorOccured"
        End Try
    End Sub
End Class