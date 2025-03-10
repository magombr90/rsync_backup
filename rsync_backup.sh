#!/bin/bash

# Configurações do Backup
EMPRESA="Nome da Empresa"
DATA=$(date +%F) 
SRC_DIR="Diretorio a ser backpeado"
DEST_DIR="Diretorio de destino dos arquivos, precisa ter o caminho ssh"
LOG_FILE="/var/log/backups/backup_$DATA.log" #Precisa criar o diretorio Backups em VAR

# Configuração do Email
EMAIL_FROM="Email usado para enviar"
EMAIL_TO="Email que receberá o comprovante"
SMTP_SERVER="smtp.gmail.com"
SMTP_PORT="587"
SMTP_USER="Usuario de email"
SMTP_PASS="Code do google"  # Melhor usar um App Password do Gmail

# Inicia o backup com rsync
echo "Iniciando backup em $(date)" > "$LOG_FILE"

sshpass -p "Senha do server" rsync -arzP -e "ssh -p Porta caso nao seja 22" $SRC_DIR $DEST_DIR >> $LOG_FILE 2>&1

# Verifica se o backup foi bem-sucedido
if [ $? -eq 0 ]; then
    SUBJECT="Backup $EMPRESA $DATA"
    MESSAGE="Empresa $EMPRESA: O backup foi realizado com sucesso em $(date)."
else
    SUBJECT="Backup $EMPRESA $DATA"
    MESSAGE="Empresa $EMPRESA: Ocorreu um erro ao realizar o backup em $(date). Verifique o log em $LOG_FILE."
fi

# Envia email de notificação
sendemail -f "$EMAIL_FROM" -t "$EMAIL_TO" -u "$SUBJECT" -m "$MESSAGE" \
    -s "$SMTP_SERVER:$SMTP_PORT" -o tls=yes -xu "$SMTP_USER" -xp "$SMTP_PASS"

