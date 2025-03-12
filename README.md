<h1>Script de Backup</h1>

<h2>Programas necessários para o funcionamento do script: <h2></b>
-sshpass
-sendemail

<h2>Instruções de instalação de programas e dependencias</h2>

*Sistemas baseados em Debian
sudo apt install sshpass sendemail
sudo apt install sendemail libio-socket-ssl-perl libnet-ssleay-perl

*Sistemas baseados em RHEL
sudo yum install epel-release
sudo yum install sshpass sendemail
sudo yum install perl-IO-Socket-SSL perl-Net-SSLeay

*Alpine Distro
sudo apk add sshpass sendemail

MacOS
brew install hudochenkov/sshpass/sshpass
brew install sendemail

<hr>
<p>Ele seleciona o diretorio a ser copiado, e o encaminha usando a sicronização do rsync entre pastas, para um outro diretorio remoto.<b>
Para a automatização do script, foi utilizado o programa sshpass, para não ser exigido a senha todas as vezes que executa-lo.<b> 
É necessário preencher as variáveis para o funcionameno do script.</p><b>
<p>Ele pode ser automatizado no crontab.</p>
