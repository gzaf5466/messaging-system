#!/bin/bash

echo "🚀 Messaging System Deployment Script"
echo "====================================="

# Check if git is initialized
if [ ! -d ".git" ]; then
    echo "📁 Initializing Git repository..."
    git init
    git add .
    git commit -m "Initial commit"
    echo "✅ Git repository initialized"
else
    echo "✅ Git repository already exists"
fi

# Check if remote origin exists
if ! git remote get-url origin > /dev/null 2>&1; then
    echo "🔗 Please add your GitHub repository as remote origin:"
    echo "git remote add origin https://github.com/yourusername/messaging-system.git"
    echo "git push -u origin main"
else
    echo "✅ Remote origin already configured"
fi

echo ""
echo "📋 Next Steps:"
echo "=============="
echo ""
echo "1. 🗄️  Set up PostgreSQL Database:"
echo "   - Go to Railway.app or Supabase.com"
echo "   - Create a new PostgreSQL database"
echo "   - Copy the connection details"
echo ""
echo "2. 🔧 Deploy Backend:"
echo "   - Go to Railway.app"
echo "   - Create new project from GitHub"
echo "   - Set root directory to 'backend'"
echo "   - Add environment variables (see DEPLOYMENT.md)"
echo ""
echo "3. 🎨 Deploy Frontend:"
echo "   - Go to Vercel.com"
echo "   - Import your GitHub repository"
echo "   - Set root directory to 'client'"
echo "   - Update vercel.json with your backend URL"
echo ""
echo "4. 🔗 Connect Everything:"
echo "   - Update environment variables with your URLs"
echo "   - Test the application"
echo ""
echo "📖 For detailed instructions, see DEPLOYMENT.md"
echo ""
echo "🎉 Your messaging system will be live for free!" 