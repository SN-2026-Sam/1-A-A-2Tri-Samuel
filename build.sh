#!/bin/bash # build.sh — injeta as variáveis de ambiente no index.html durante o deploy
# Executado automaticamente pelo Vercel a cada deploy echo 'Iniciando build...'
# Substitui o placeholder da URL pelo valor real da variável de ambiente
sed -i "s|https://xscogbqkajdwvecjzzdu.supabase.co|$SUPABASE_URL|g" index.html
# Substitui o placeholder da chave pela anon key real
sed -i "s|eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InhzY29nYnFrYWpkd3ZlY2p6emR1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3ODMzMDM4MTEsImV4cCI6MjA5ODg3OTgxMX0.F5bt1LuyItZNTM9dXJhKSYaqTvPW_zNWAp2seOpHcYw|$SUPABASE_ANON_KEY|g" index.html echo 'Build
concluído — variáveis injetadas com sucesso.'
