#!/bin/bash

# Loyalty Foundation Website Deployment Script
# This script builds and deploys the Hexo site to Nginx

set -e

echo "🚀 Starting deployment process for bak.loyalty-foundation.org..."

# Clean previous builds
echo "🧹 Cleaning cache and previous builds..."
hexo clean

# Generate static files
echo "📦 Generating static files..."
hexo generate

# Check if public directory exists
if [ ! -d "public" ]; then
    echo "❌ Error: public directory not found"
    exit 1
fi

echo "✅ Build completed successfully!"

# Test Nginx configuration
echo "🔍 Testing Nginx configuration..."
sudo nginx -t

# Reload Nginx to apply any changes
echo "🔄 Reloading Nginx..."
sudo systemctl daemon-reload
sudo systemctl reload nginx

# Verify the site is accessible
echo "🌐 Verifying website is accessible..."
HTTP_CODE=$(curl -s -o /dev/null -w "%{http_code}" https://bak.loyalty-foundation.org)

if [ "$HTTP_CODE" = "200" ]; then
    echo "✅ Website is live and accessible at https://bak.loyalty-foundation.org"
    echo "📊 HTTP Status: $HTTP_CODE"
else
    echo "⚠️  Website returned HTTP Status: $HTTP_CODE"
fi

echo ""
echo "🎉 Deployment completed!"
echo "📂 Static files are served from: /var/www/loyalty-foundation-site/public"
echo "🔗 Website URL: https://bak.loyalty-foundation.org"
