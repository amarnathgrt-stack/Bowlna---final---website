# Bowlna — Deploy Workflow

## One-time setup (do this once)

### 1. Create a GitHub repo
1. Go to https://github.com/new
2. Name it `bowlna` (or any name you like)
3. Keep it **public** (Netlify free tier works with both, but public is easiest)
4. **Do NOT** initialize with README — your files already exist

### 2. Connect your local folder to GitHub
Open **Command Prompt** or **PowerShell**, then:

```bash
cd "C:\Users\Amar\OneDrive\Documents\Claude\Projects\Bowlna"

git init
git branch -M main
git add .
git commit -m "Initial commit"
git remote add origin https://github.com/YOUR_USERNAME/bowlna.git
git push -u origin main
```

Replace `YOUR_USERNAME` with your actual GitHub username.

### 3. Connect Netlify to GitHub
1. Go to https://app.netlify.com → **Add new site** → **Import an existing project**
2. Choose **GitHub** → authorize → select the `bowlna` repo
3. Build settings:
   - Build command: *(leave empty)*
   - Publish directory: `.`
4. Click **Deploy site**

Netlify gives you a live URL (e.g. `https://amazing-name-123.netlify.app`).
You can set a custom domain in Site settings → Domain management.

---

## Every day workflow

### Design a page in Claude
1. Ask Claude to design a page or section
2. Claude saves the `.html` file directly to this folder
3. Open a terminal in this folder and run:

```bash
git add .
git commit -m "Add [page name]"
git push
```

Netlify detects the push and **auto-deploys in ~30 seconds**. Done.

---

## Adding new pages

Each new `.html` file becomes a route automatically:
- `about.html` → `yourdomain.com/about`
- `menu.html` → `yourdomain.com/menu`

Just tell Claude: *"Create an about page for Bowlna"* and it'll save the file.
Then git push — Netlify handles the rest.

---

## Folder structure

```
Bowlna/
├── index.html          ← Homepage
├── netlify.toml        ← Netlify config (don't delete)
├── .gitignore
└── assets/
    ├── css/
    │   └── style.css   ← Base styles
    └── js/
        └── main.js     ← Base scripts
```

New pages Claude creates go in the root. Shared styles/scripts go in `assets/`.
