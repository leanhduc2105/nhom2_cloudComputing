<%@ Page Title="Contact" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Contact.aspx.vb" Inherits="Contact" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1>Liên Hệ</h1>
        <h2>Trang liên hệ của chúng tôi</h2>
    </hgroup>

    <section class="contact">
        <header>
            <h3>Số điện thoại:</h3>
        </header>
        <p>
            <span class="label">Cố định:</span>
            <span>04.87632198</span>
        </p>
        <p>
            <span class="label">Di động:</span>
            <span>0978926781</span>
        </p>
    </section>

    <section class="contact">
        <header>
            <h3>Email:</h3>
        </header>
        <p>
            <span class="label">Hỗ trợ:</span>
            <span><a href="mailto:Support@example.com">duclaph04226@chaua.com</a></span>
        </p>
        <p>
            <span class="label">Kinh doanh:</span>
            <span><a href="mailto:Marketing@example.com">daontph04190@chaua.com</a></span>
        </p>
        <p>
            <span class="label">Chung:</span>
            <span><a href="mailto:General@example.com">ngocntph04213@chaua.com</a></span>
        </p>
    </section>

    <section class="contact">
        <header>
            <h3>Địa chỉ:</h3>
        </header>
        <p>
            Hà Nội<br />
            Mỹ Đình, Từ Liêm
        </p>
    </section>
    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3723.928155461456!2d105.76310101478462!3d21.035560492922283!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x313454b92bd71f9b%3A0xb79f074fe43dcfc1!2zRlBUIFBvbHl0ZWNobmljIChDxqEgc-G7nyBIw6AgTuG7mWkp!5e0!3m2!1sen!2s!4v1476360048475" width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
</asp:Content>