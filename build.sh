#!/bin/bash # build.sh — injeta as variáveis de ambiente no index.html durante o deploy
# Executado automaticamente pelo Vercel a cada deploy echo 'Iniciando build...' #
Substitui o placeholder da URL pelo valor real da variável de ambiente sed -i
"s|https://XXXXXXXXXXXX.supabase.co|$SUPABASE_URL|g" index.html # Substitui o
placeholder da chave pela anon key real sed -i
"s|eyJ...SUA_PUBLISHABLE_KEY_AQUI...|$SUPABASE_ANON_KEY|g" index.html echo 'Build
concluído — variáveis injetadas com sucesso.'
