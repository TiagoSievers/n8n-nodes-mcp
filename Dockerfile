FROM n8nio/n8n:latest

# Switch to root user to install npm packages
USER root

# Install Supabase client
WORKDIR /usr/local/lib/node_modules/n8n
RUN npm install @supabase/supabase-js

# Revert to the node user for security purposes
USER node
