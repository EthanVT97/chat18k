#!/usr/bin/env bash
# exit on error
set -o errexit

# Install dependencies
npm install

# Build the Vue application
npm run build

# Create .env file if it doesn't exist
if [ ! -f .env ]; then
  echo "VUE_APP_SUPABASE_URL=https://xnujjoarvinvztccwrye.supabase.co" > .env
  echo "VUE_APP_SUPABASE_KEY=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InhudWpqb2Fydmludnp0Y2N3cnllIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzUyNzc1OTAsImV4cCI6MjA1MDg1MzU5MH0.pyxlMZkDM53RWaPHc4GhsoKdaGDqbkn2p7b1cXF3Wgs" >> .env
fi
