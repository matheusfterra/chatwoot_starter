#!/bin/sh
# Substitua a URL abaixo com o caminho direto do seu arquivo no GitHub

# Tenta alterar as permissões do diretório (pode não funcionar se não tiver permissões suficientes)
chmod -R 777 /app/lib/webhooks/

rm -f /app/lib/webhooks/trigger.rb

wget -O /app/lib/webhooks/trigger.rb https://raw.githubusercontent.com/matheusfterra/chatwoot_starter/ma>

# Execute o comando original do container
bundle exec rails s -p 3000 -b 0.0.0.0

exec docker/entrypoints/rails.sh
