# Bowlna — Website

A static marketing site for Bowlna (modern Indian bowls). No build step, no server — just static files you publish to any free host.

## Pages
- `index.dc.html` — Home
- `menu.dc.html` — Menu + build-your-own-bowl
- `story.dc.html` — Our Story
- `journal.dc.html` — Stories / journal articles
- `franchise.dc.html` — Franchise interest (form)
- `contact.dc.html` — Feedback + contact (form)
- `storybook.dc.html` — Printable Brand Storybook (use the “Print / Save PDF” button)

Supporting files: `assets/` (images & logos), `support.js` (runtime — required), `forms.html`, `_redirects`, `netlify.toml`.

## Deploy to Netlify (free) — drag & drop
1. Go to https://app.netlify.com and sign up (free).
2. Click **“Add new site → Deploy manually.”**
3. Drag this **entire folder** onto the drop zone. Live in ~20s at a `*.netlify.app` URL.

## Connect your domain (bowlna.com)
1. In Netlify: **Domain settings → Add custom domain → `bowlna.com`**.
2. Either switch your registrar’s nameservers to Netlify’s, **or** add the DNS records Netlify shows you.
3. Netlify issues a free SSL certificate automatically (https). Done.

## The forms (feedback + franchise)
These work automatically once hosted **on Netlify** — submissions appear in your
Netlify dashboard under **Forms**, and you can set email notifications there
(Site settings → Forms → Notifications).

- `forms.html` registers the two forms so Netlify accepts them. Leave it in place; don’t delete it.
- Forms are free up to 100 submissions/month on Netlify’s starter tier.
- Direct email also works everywhere: `hello@bowlna.com`, `partners@bowlna.com`.

> Hosting on a different static host (Vercel, Cloudflare Pages, GitHub Pages)?
> The site still works, but the **forms won’t collect submissions** there without
> a form service. Easiest path for working forms is Netlify.

## Update social links
Search the project for `instagram.com/eatbowlna`, `tiktok.com/@eatbowlna`,
`linkedin.com/company/bowlna`, `facebook.com/eatbowlna` and replace with your real handles.

## Update the contact email
Search for `hello@bowlna.com` and `partners@bowlna.com` and replace as needed.
