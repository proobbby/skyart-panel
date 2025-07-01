#!/bin/bash
set -e

echo "📦 Installing SkyArt Panel..."
mkdir -p /var/www/skyart
cd /var/www/skyart || exit 1
curl -fsSL https://raw.githubusercontent.com/proobbby/skyart-panel/main/index.html -o index.html

cat << 'EOF' > launch.sh
#!/bin/bash
cd /var/www/skyart || exit 1
echo "🌐 SkyArt Panel running at http://localhost:8080"
python3 -m http.server 8080
EOF

chmod +x launch.sh
echo "✅ SkyArt Panel installed!"
echo "▶️ Run: bash /var/www/skyart/launch.sh"
