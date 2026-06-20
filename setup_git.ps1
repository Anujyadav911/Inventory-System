Remove-Item -Recurse -Force .git -ErrorAction SilentlyContinue

git init
git branch -M main

Out-File -FilePath README.md -InputObject "# Inventory-System" -Encoding utf8
git add README.md
git commit -m "first commit"

git add package.json pnpm-workspace.yaml tsconfig.base.json tsconfig.json pnpm-lock.yaml .env .env.example .gitignore vercel.json render.yaml
git commit -m "Add workspace config and root configurations"

git add lib/db
git commit -m "Add database schema and drizzle config"

git add lib/api-spec lib/api-zod
git commit -m "Add API specifications and generated types"

git add lib/api-client-react
git commit -m "Add React API client hooks"

git add artifacts/api-server
git commit -m "Add Express API server backend"

git add artifacts/mockup-sandbox
git commit -m "Add mockup sandbox environment"

git add artifacts/inventory-app/package.json artifacts/inventory-app/vite.config.ts artifacts/inventory-app/tsconfig* artifacts/inventory-app/index.html artifacts/inventory-app/components.json artifacts/inventory-app/src/main.tsx artifacts/inventory-app/src/App.tsx artifacts/inventory-app/src/index.css artifacts/inventory-app/src/lib
git commit -m "Add React frontend foundation and setup"

git add artifacts/inventory-app/src/components artifacts/inventory-app/src/pages artifacts/inventory-app/src/layouts
git commit -m "Add dashboard, layouts, and UI components"

git add scripts
git commit -m "Add utility and seed scripts"

git add .
git commit -m "Add documentation and remaining assets"

git remote add origin https://github.com/Anujyadav911/Inventory-System.git
git push -u origin main
