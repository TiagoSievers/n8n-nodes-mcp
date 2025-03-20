FROM n8nio/n8n:latest

USER root

# Instalar o cliente Supabase e o pacote MCP
WORKDIR /usr/local/lib/node_modules/n8n
RUN npm install @supabase/supabase-js
RUN npm install n8n-nodes-mcp

# Reconstruir os módulos para garantir compatibilidade
RUN cd /usr/local/lib/node_modules/n8n && npm rebuild

# Tornar o diretório de módulos personalizados da comunidade acessível
RUN mkdir -p /root/.n8n/custom
RUN chown -R node:node /root/.n8n

USER node
