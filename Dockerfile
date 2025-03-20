FROM n8nio/n8n:latest

USER root

# Instale ambos os pacotes necessários
WORKDIR /usr/local/lib/node_modules/n8n
RUN npm install @supabase/supabase-js
RUN npm install n8n-nodes-mcp

USER node
