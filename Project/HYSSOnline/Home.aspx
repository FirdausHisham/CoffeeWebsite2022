<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="HYSSCafe_Home" %>

<asp:Content ID="Content1" runat="server" contentplaceholderid="MainContent">
    <link href="Home.css" rel="stylesheet" />
    <br />


    <br />
    <asp:Panel ID="Panel1" runat="server" Height="2283px">
        <br />


        <table class="nav-justified" align="center">
            <tr>
                <td class="text-center" style="height: 95px; font-size: xx-large; font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif; color: #663300;" colspan="3"><em>꧁༺ 𝓦𝓮𝓵𝓬𝓸𝓶𝓮 𝓽𝓸 𝓗𝓨𝓢𝓢 𝓞𝓷𝓵𝓲𝓷𝓮 𝓒𝓪𝓯𝓮 ༻꧂</em></td>
            </tr>
            <tr>
                <td colspan="3" style="height: 20px; font-size: xx-large; color: #663300;" class="text-center"><strong style="font-family: 'MV Boli'">Serving amazing coffees and teas in the heart of Singapore</strong></td>
            </tr>
            <tr>
                <td class="nav-justified" style="width: 61%; text-align: center;">
                   &nbsp;
                    &nbsp;  
                    <br />
                    <asp:Panel ID="Panel2" runat="server" Width="1107px">
                        <br />
                        
                   <!-- Full-width images with number and caption text -->
  <div class="mySlides fade">
    <div class="numbertext">1 / 3</div>
      <img src="sliders/Espresso.PNG" style="width:100%" />
  </div>

  <div class="mySlides fade">
    <div class="numbertext">2 / 3</div>
      <img src="sliders/ice-black-coffee-glass-wooden-table.jpg"  style="width:100%"/>
  </div>

  <div class="mySlides fade">
    <div class="numbertext">3 / 3</div>
      <img src="sliders/iced-coffee%20-forHome2.jpg"  style="width:100%"/>
  </div>

<br />
<!-- The dots/circles -->
<div style="text-align:center">
  <span class="dot" onclick="currentSlide(1)"></span>
  <span class="dot" onclick="currentSlide(2)"></span>
  <span class="dot" onclick="currentSlide(3)"></span>
</div>

<script src="script.js"></script>
            
</asp:Panel>
                    <asp:Panel ID="Panel3" runat="server">
                    </asp:Panel>
                    <div class="text-center">
                        <button  class="button"><a href="Order.aspx">Order now!</a> </button>
                    
                </td>
                <td style="width: 140px">&nbsp;</td>
                <td>
                    

                </td>
            </tr>
            <tr>
                <td class="nav-justified" style="width: 61%; text-align: right">
                    &nbsp;</td>
                <td style="width: 140px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <br />
       
        <table id="table1" class="nav-justified" style="height: 173px; width:100%;" >
            <tr>
                <td  style="height: 87px; font-size: x-large; font-family: 'MV Boli';" class="text-center"><span style="text-decoration: underline"><strong>About us</strong></span><br /> HYSS Online Cafe is a small online coffee shop business in Singapore.Established since 2010, we are known for its amazing coffee drinks. We also offer premium tea drinks. In addition to serving fresh drinks, we aim to create a cozy and welcoming vibe for our customers.</td>
            </tr>
            <tr>
                <td style="height: 87px; font-size: x-large;">
                    <br />
                    <img alt="" src="Home1.jpg" style="width: 1000px; height: 680px; margin-left: 92px;" />

                    <br />
                    &nbsp;</td>
            </tr>
        </table>
        
            
    </asp:Panel>
    <br />
    

    
</asp:Content>


