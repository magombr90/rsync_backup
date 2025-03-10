Script de Backup

Programas necessários para o funcionamento do script:
-sshpass
-sendemail

Ele seleciona o diretorio a ser copiado, e o encaminha usando a sicronização do rsync entre pastas, para um outro diretorio remoto.

Para a automatização do script, foi utilizado o programa sshpass, para não ser exigido a senha todas as vezes que executa-lo. 

É necessário preencher as variáveis para o funcionameno do script.
Ele pode ser automatizado no crontab.
