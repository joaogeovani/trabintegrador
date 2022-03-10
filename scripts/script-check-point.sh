#!/bin/bash

echo '
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Terminal</title>
  <link rel="stylesheet" href="css/style.css">


</head>

<body>
  <main>

    <canvas id="c"></canvas>
    <div class="container">
      <h1>Terminal</h1>

      <section class="sec-1">
        <h2>O que é o Terminal?</h2>
        <p><span>Terminal, Console, Prompt de Comando ou interface de linha de comando (CLI)</span>, é uma ferramenta simples e
          poderosa que está presente em todos sistemas operacionais.
        </p>
        <p>
          Por ele nós conseguimos dar instruções e ordens ao sistema de forma rápida e objetiva através de determinados
          comandos de texto.
        </p>
      </section>

      <img src="https://firebasestorage.googleapis.com/v0/b/holzgabriel-com.appspot.com/o/terminal-gif.gif?alt=media&token=83ba8c18-8f7d-45c9-a64a-10fffbaf71dd" alt="" height="350px" width="550px">

      <section class="sec-1">
        <h2>Um pouco de história.</h2>
      <p>
          Tudo comeco com o terminal burro Eram chamados assim porque tinham
          pouco poder de processamento, pois saimplesmente processam um número
          limitado de comandos de exibição e nenhum programa podia ser
          executado nesses dispositivos. </p>
        <p>
          A maioria dos terminais burros foi
          projetada para rodar com o sistema operacional FreeBSD e foi
          amplamente utilizada na década de 1970 até o início da década de
          1980 devido aos custos relativamente altos dos computadores. </p>
        <p>
          As
          organizações geralmente tinham apenas muito poucos computadores em
          relação ao número de usuários; portanto, eles precisavam desses
          terminais burros baratos para permitir que vários usuários
          acessassem os poucos computadores mais poderosos. </p>
        <p>
          Os primeiros
          terminais de usuário conectados a computadores foram os
          teleimpressores eletromecânicos (TTY), como o modelo 33 Teletype,
          originalmente usado para telegrafia, ou o Friden Flexowriter.
        </p>
        <p>
          Terminais de impressão como o DECwriter foram desenvolvidos
          posteriormente. No entanto, os terminais de impressão eram limitados
          pela velocidade com que o papel podia ser impresso, uma vez que o
          registro em papel era desnecessário para uso interativo.
        </p>
        <p>
          Os
          primeiros monitores de vídeo de computador às vezes eram apelidados
          de "TTYs de vidro" e usavam portas lógicas individuais, sem CPU.
        </p>
        <p>
          Uma
          das motivações para o desenvolvimento do microprocessador foi
          simplificar e reduzir a eletrônica necessária em um terminal (como o
          Datapoint 2200). A maioria dos terminais estava conectada a
          mainframes e muitas vezes tinha uma tela verde ou âmbar.
        </p>
        <p>
          Os
          terminais normalmente se comunicam com o computador por meio de uma
          porta serial, geralmente usando a interface serial RS-232.
        </p>
        <p>
          Os
          sistemas IBM se comunicavam por um cabo coaxial usando o protocolo
          Systems Network Architecture (SNA) da IBM. Devido aos métodos de
          fabricação mais recentes, os computadores e a tecnologia de
          monitores tornaram-se mais poderosos e mais baratos de fabricar,
          levando o terminal burro a se tornar obsoleto tanto em função quanto
          em conceito.
        </p>
        <p>
          O terminal inteligente e o thin client são versões
          modernas do terminal burro, pelo menos em conceito, ambos capazes de
          realizar algum processamento localmente, mas estão conectados a um
          computador mais poderoso, como um servidor.
        </p>
      </section>

      <section class="sec-1">
        <nav>
          <ul>
            <li><a href="comousar.html">Como usar.</a></li>
            <li><a href="porqueusar.html">Por que usar o terminal?</a></li>
            <li><a href="referen.html">Referências</a></li>
          </ul>
        </nav>
      </section>

    </div>

  </main>
</body>
<script src="./js/animation.js"></script>

</html>
'> index.html
mkdir css
cd css
echo " @import url('https://fonts.googleapis.com/css2?family=Rajdhani&display=swap');

* {
    margin: 0;
    padding: 0;
    color: rgba(255, 255, 255, 0.5);
    
}
*::-webkit-scrollbar{
    display: none;
}
body {
    background-color: black;


}
#c {
    position: fixed;
    top: 0;
    left: 0;
}
.container {
    background-color: rgba(0, 0, 0, 0.671);
    margin: 50px 10%;
    padding: 3rem;
    position: relative;
    z-index: 1;
    border: 0.1px solid rgba(23, 222, 20, 0.5);
}
.sec-1 {
    background-color: rgba(0, 0, 0, 0.671);
}
.sec-1 p span {
    font-weight: bold;
    color: rgba(255, 255, 255, 0.7);
}
p {
    font-size: 20px;
    padding-top: 5px;
}
h1 {
    margin: 15px 0px;
}
h2 {
    margin: 5px 0px;
}
li {
    font-size: 22px;
}
ul{
    padding: 15px;
}
.macterminal{

   padding-top: 10px;
   text-align: center;
   width: 550px;
   height: 300px; 
}
.macterminal img{
   display:flexbox;
   width: 100%;
}
#BoxImg{
   align-items: center;
   text-align: center;
}
.pMac{
    padding-top: 10px;
    text-align: justify;
}
.Jorge { padding-top: 10px;
}
"> style.css
cd ..
mkdir js
cd js
echo '
// geting canvas by Boujjou Achraf
var c = document.getElementById("c");
var ctx = c.getContext("2d");

//making the canvas full screen
c.height = window.innerHeight;
c.width = window.innerWidth;

var bgmatrix = "digital-house-CTD-Introducao-a-informatica-v.2-digital-house-CTD-Introducao-a-informatica-v.2"
//converting the string into an array of single characters
bgmatrix = bgmatrix.split("");

var font_size = 10;
var columns = c.width/font_size; //number of columns for the rain
//an array of drops - one per column
var drops = [];
//x below is the x coordinate
//1 = y co-ordinate of the drop(same for every drop initially)
for(var x = 0; x < columns; x++)
    drops[x] = 1; 
//drawing the characters
function draw()
{
    //Black BG for the canvas
    //translucent BG to show trail
    ctx.fillStyle = "rgba(0, 0, 0, 0.04)";
    
    ctx.fillRect(0, 0, c.width, c.height);

    //ctx.fillStyle = "#f4427d";//green text
    ctx.fillStyle = "rgba(23, 222, 20, 0.5)";//green text
    ctx.font = font_size + "px arial";
    //looping over drops
    for(var i = 0; i < drops.length; i++)
    {
        //a random chinese character to print
        var text = bgmatrix[Math.floor(Math.random()*bgmatrix.length)];
        //x = i*font_size, y = value of drops[i]*font_size
        ctx.fillText(text, i*font_size, drops[i]*font_size);

        //sending the drop back to the top randomly after it has crossed the screen
        //adding a randomness to the reset to make the drops scattered on the Y axis
        if(drops[i]*font_size > c.height && Math.random() > 0.975)
            drops[i] = 0;

        //incrementing Y coordinate
        drops[i]++;
        
    }
}
setInterval(draw, 60);

//esta animação em javascript foi coletada https://codepen.io/wefiy/pen/WPpEwo
'> animation.js
cd ..
echo '
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Como Usar o Terminal</title>
  <link rel="stylesheet" href="css/style.css">


</head>

<body>
  <main>

    <canvas id="c"></canvas>
    <div class="container">
      <h1>Como Usar o Terminal</h1>

      <ul class="sec-1">

        <li><strong>Terminal Windows</strong></li>
        <section>
          <br>
          <p> Vamos desmistificar o uso desta ferramenta de linha de comando.</p>
          <br>
          <ol>
            <li>Clique no MENU INICIAR.</li>
            <li>Na caixa de pesquisa, digite <strong>cmd</strong>, e tecle ENTER.</li>
            <li>Pronto! A tela preta com o pompt será exibida.</li>
          </ol>
          <div>
            <img width="550px" height="250px"
              src="https://www.programaria.org/wp-content/uploads/2016/11/Figura-3-%E2%80%93-Passos-para-acessar-o-Prompt-do-MS-DOS-1.jpg"
              alt="Imagem ilustrando como utilizar o cmd no windows.">
            <p> A utilização é muito simples, ele funciona através de digitação de texto puro.
              De imediato parece algo de outro mundo, mas é somente pratica, pois são apenas comandos que digitamos,
              ao contrário de uma interface gráfica que temos que achar um botão ou ícone e etc.<br>
              Vamos praticar: <a href="https://blog.betrybe.com/tecnologia/comandos-windows/">20 comandos para praticar
                e descobrir!</a>

            </p>

          </div>

        </section>

      </ul>
      
      <ul class="sec-1">
        <li><strong>Terminal MAC</strong></li>
          <div id="BoxImg">
            <img
              class="macterminal"
              src="https://firebasestorage.googleapis.com/v0/b/holzgabriel-com.appspot.com/o/mac_terminal.jpeg?alt=media&token=acf7d8be-48d6-4841-99c5-3198cc4c0bcf"
              alt="Terminal Mac"
            />
          </div>
          <p class="pMac">
            O Mac e Macbook também contam com um terminal de comandos, mas a
            maioria dos usuários dos computadores da Apple têm certo receio e
            tendem a ficar com medo de fazer algo errado com o software.
            Acontece que o Terminal do Mac está lá para facilitar o uso do
            dispositivo e pode ser usado a seu favor em qualquer situação.
          </p>
          <P class="pMac">
            Não tem limites para fazer no terminal do mac como:
          </P>
            <ul>
              <li>Controlar o backup do Time Machine</li>
              <li>Limpeza Segura de Espaço Livre</li>
              <li>Controle seu Mac Remotamente</li>
              <li>Mostrar Arquivos Ocultos no Finder</li>
              <li>Modificar, Alterar, Excluir e Copiar</li>
              <li>Arrastar Widgets para Área de Trabalho</li>
              <li>Fazer o Mac falar</li>
            </ul> 
            <p class="pMac">O Terminal (oficialmente chamado de Terminal.app) é, estritamente falando, um emulador e aceita a maioria dos comandos do UNIX (OS X é um sistema baseado no UNIX, diferente do Windows, que é baseado no NT). Diferente do OS X, que tem uma interface gráfica de usuário (GUI), o Terminal lança mão de uma interface textual e todos os comandos devem ser digitados - esta, talvez, deve ser a razão de várias pessoas terem tanto medo!</p>         
        </ul>

      <ul class="sec-1">
        <li><strong>Terminal Linux</strong></li>
        <img src="https://firebasestorage.googleapis.com/v0/b/holzgabriel-com.appspot.com/o/final_optimzed.gif?alt=media&token=35bb7103-3e1f-4015-b62c-09dcf41aeaa3" alt="GIF">

        <li>O que é o terminal linux</li>
        <li>Como Funcinal</li>
        <li>Como é acessado</li>
        <li>Interpretadores</li>
      </ul>

      <section class="sec-1">
        <nav>
          <ul>
            <li><a href="index.html">O que é o terminal?.</a></li>
            <li><a href="porqueusar.html">Por que usar o terminal?</a></li>
          </ul>
        </nav>
      </section>
    </div>


  </main>
</body>
<script src="./js/animation.js"></script>

</html>
 '> comousar.html

echo '
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Por que usar?</title>
  <link rel="stylesheet" href="css/style.css">


</head>

<body>
  <main>

    <canvas id="c"></canvas>
    <div class="container">
      <h1>Por que usar o terminal?</h1>

      <p class="sec-1"> Embora a maioria dos usuários finais não se importe com sistemas baseados em comandos, os
        usuários avançados ainda contam com comandos para solucionar problemas, além de configurar determinados
        aplicativos e programas. Eles se movem rapidamente e precisam de um sistema que responda da mesma forma.

        O futuro do prompt de comando pode não ser tão chamativo ou altamente promovido quanto as novas interfaces
        gráficas, mas ainda é uma parte muito usada do sistema operacional e vale a pena explorar se você tem uma
        carreira na área de computação.

        Se você tirar um tempo para aprender e praticar, ficará surpreso com a quantidade de possibilidades disponíveis.
        Além disso, à medida que mais ferramentas ganham popularidade nos próximos anos, você ficará feliz em entender a
        sintaxe da linha de comando. Possivelmente a razão mais óbvia para utilizá-la seja sua função original: maior
        controle!</p>

      <h2 class="Jorge">Vantagens do CLI</h2>

      <ul class="sec-1">
        <li>Maior controle de um sistema operacional ou aplicativo;</li>
        <li>Gerenciamento mais rápido de muitos sistemas operacionais;</li>
        <li>Capacidade de armazenar scripts para automatizar tarefas regulares;</li>
        <li>Conhecimento básico de interface de linha de comando para ajudar na solução de problemas, como conexão de
          rede.</li>
      </ul>

      <h2>Desvantagens do CLI</h2>

      <ul class="sec-1">
        <li>GUI é mais amigável;</li>
        <li>Curva de aprendizagem mais íngreme associada à memorização de comandos e à sintaxe / argumentos complexos;
        </li>
        <li>Comandos diferentes usados em shells distintas.</li>
      </ul>

      <h2>Conclusão</h2>

      <p class="sec-1">Apesar de a ideia comum de que a CLI é apenas para especialistas, isso não é uma realidade! De
        fato, pode ser utilizada de forma simples por usuários comuns. O fato de que a maioria dos sistemas operacionais
        ainda fornece CLI com GUI prova que a CLI é crucial! Além disso, usar a CLI oferece mais pontos positivos que a
        GUI porque:</p>

      <ul class="sec-1">
        <li>Requer menos recursos;</li>
        <li>Garante alta precisão;</li>
        <li>Lida facilmente com tarefas repetitivas;</li>
        <li>É poderosa.</li>
      </ul>

      <section class="sec-1">
        <nav>
          <ul>
            <li><a href="comousar.html">Como usar.</a></li>
            <li><a href="index.html">O que é o terminal?</a></li>
            <li><a href="referen.html">Referências</a></li>
          </ul>
        </nav>
      </section>
    </div>

  </main>
</body>
<script src="./js/animation.js"></script>

</html>
'> porqueusar.html

echo '
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Referências</title>
    <link rel="stylesheet" href="css/style.css">
    <body>
        <main>

          <canvas id="c"></canvas>
          <div class="container">
            <h1>Referências</h1>
            <audio src="https://firebasestorage.googleapis.com/v0/b/holzgabriel-com.appspot.com/o/y2meta.com_-_clubbed_to_death_-_Matrix_soundtrack_192_kbps_2.mp3?alt=media&token=47f44b85-f68a-4b09-947d-88f9141ab75e" type="audio/mpeg" controls autoplay></audio>
                <ul>
               <li>
                    <a href="https://www.hostgator.com.br/blog/o-que-e-cli/">https://www.hostgator.com.br/blog/o-que-e-cli/</a></li>
                    <li><a href="https://e-tinet.com/linux/terminal-linux/#:~:text=Em%20linhas%20b%C3%A1sicas%2C%20o%20terminal,do%20usu%C3%A1rio%20com%20o%20Linux">https://e-tinet.com/linux/terminal-linux/#:~:text=Em%20linhas%20b%C3%A1sicas%2C%20o%20terminal,do%20usu%C3%A1rio%20com%20o%20Linux</a></li>
                    <li><a href="https://marquesfernandes.com/self/como-comecar-a-usar-a-linha-de-comando-terminal-no-linux-tutorial-para-iniciantes/">https://marquesfernandes.com/self/como-comecar-a-usar-a-linha-de-comando-terminal-no-linux-tutorial-para-iniciantes/</a></li>
                    <li><a href="https://pt.wikihow.com/Abrir-o-Terminal-no-Mac">https://pt.wikihow.com/Abrir-o-Terminal-no-Mac</a></li>
                    <li><a href="https://blog.cod3r.com.br/terminal-no-macos-e-linux/">https://blog.cod3r.com.br/terminal-no-macos-e-linux/</a></li>
                    <li><a href="https://www.apptuts.net/tutorial/mac/comandos-uteis-terminal-do-mac/">https://www.apptuts.net/tutorial/mac/comandos-uteis-terminal-do-mac/</a></li>
                    <li><a href="https://computers.tutsplus.com/pt/tutorials/10-terminal-commands-that-every-mac-user-should-know--mac-4825">https://computers.tutsplus.com/pt/tutorials/10-terminal-commands-that-every-mac-user-should-know--mac-4825</a></li>
              </ul>
            <section class="sec-1">
              <nav>
                <ul>
                  <li><a href="comousar.html">Como usar.</a></li>
                  <li><a href="index.html">O que é o terminal?</a></li>
                  <li><a href="porqueusar.html">Por que usar?</a></li>
                </ul>
              </nav>
            </section>
          </div>

        </main>
      </body>
      <script src="./js/animation.js"></script>

      </html>
'> referen.html
