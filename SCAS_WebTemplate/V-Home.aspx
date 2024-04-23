<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Vertical.Master" CodeBehind="V-Home.aspx.vb" Inherits="SCAS_WebTemplate.V_Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
        body {
            background: rgb(0,255,205);
            background: linear-gradient(90deg, rgba(0,255,205,1) 0%, rgba(211,255,0,1) 100%);
            font-family: 'tradegothiclt-bold', sans-serif;
        }

        .center {
            position: absolute;
            bottom: 50%;
        }

        h1 {
            font-size: 5em;
            color: white;
            text-transform: uppercase;
        }

        .animation {
            border-right: .05em solid;
            animation: caret 1s steps(1) infinite;
        }

        @keyframes caret {
            50% {
                border-color: transparent;
            }
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="center">
        <h1>Inclusion</h1>
    </div>

    <script>
        document.addEventListener('DOMContentLoaded', function (event) {
            // array with texts to type in typewriter
            var dataText = ["Inclusion", "Mastery", "Purpose", "Action", "Curiosity", "Teamwork"];

            // type one text in the typwriter
            // keeps calling itself until the text is finished
            function typeWriter(text, i, fnCallback) {
                // chekc if text isn't finished yet
                if (i < (text.length)) {
                    // add next character to h1
                    document.querySelector("h1").innerHTML = text.substring(0, i + 1) + '<span class="animation" aria-hidden="true"></span>';

                    // wait for a while and call this function again for next character
                    setTimeout(function () {
                        typeWriter(text, i + 1, fnCallback)
                    }, 100);
                }
                // text finished, call callback if there is a callback function
                else if (typeof fnCallback == 'function') {
                    // call callback after timeout
                    setTimeout(fnCallback, 700);
                }
            }
            // start a typewriter animation for a text in the dataText array
            function StartTextAnimation(i) {
                if (typeof dataText[i] == 'undefined') {
                    setTimeout(function () {
                        StartTextAnimation(0);
                    }, 20000);
                }
                // check if dataText[i] exists
                if (i < dataText[i].length) {
                    // text exists! start typewriter animation
                    typeWriter(dataText[i], 0, function () {
                        // after callback (and whole text has been animated), start next text
                        StartTextAnimation(i + 1);
                    });
                }
            }
            // start the text animation
            StartTextAnimation(0);
        });
    </script>

</asp:Content>
