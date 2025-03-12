<h1>Script de Backup</h1>

<h2>Programas necessários para o funcionamento do script: <h2><br>
-sshpass
-sendemail

<h2>Instruções de instalação de programas e dependencias</h2><br>

<p>*Sistemas baseados em Debian<br>
sudo apt install sshpass sendemail<br>
sudo apt install sendemail libio-socket-ssl-perl libnet-ssleay-perl</p><br>

<p>*Sistemas baseados em RHEL<br>
sudo yum install epel-release<br>
sudo yum install sshpass sendemail<br>
sudo yum install perl-IO-Socket-SSL perl-Net-SSLeay</p><br>

<p>*Alpine Distro<br>
sudo apk add sshpass sendemail<p><br>

<p>MacOS<br>
brew install hudochenkov/sshpass/sshpass<br>
brew install sendemail</p><br>

<hr>
<br>
<p>Ele seleciona o diretorio a ser copiado, e o encaminha usando a sicronização do rsync entre pastas, para um outro diretorio remoto.<br>
Para a automatização do script, foi utilizado o programa sshpass, para não ser exigido a senha todas as vezes que executa-lo.<br> 
É necessário preencher as variáveis para o funcionameno do script.</p><br>
<p>Ele pode ser automatizado no crontab.</p><br>
