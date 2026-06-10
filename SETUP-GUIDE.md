# 🛍️ MAH E NOOR STORE — Complete Setup Guide

## What you have:
- `index.html` → Your main website (customers see this)
- `admin/index.html` → Your admin panel (only you use this)
- `supabase-setup.sql` → Database setup (run once)

---

## STEP 1 — Set up your database (5 minutes)

1. Go to https://supabase.com and open your project
2. Click **SQL Editor** in the left sidebar (looks like `</>`)
3. Click **New Query**
4. Open the file `supabase-setup.sql` and copy ALL of it
5. Paste it into the SQL editor
6. Click **Run** (green button)
7. You should see "Success. No rows returned"

✅ Your database is ready!

---

## STEP 2 — Add your WhatsApp number

Open `index.html` in any text editor (Notepad works).

Find this line:
```
const WA_NUMBER = '923XXXXXXXXX';
```

Replace with your actual number in this format (no + or spaces):
- If your number is 0300-1234567 → write `923001234567`
- If your number is 0321-9876543 → write `923219876543`

Also find the same in the footer:
```
href="https://wa.me/923XXXXXXXXX"
```
Replace with your number there too.

---

## STEP 3 — Change your Admin Password

Open `admin/index.html` in a text editor.

Find:
```
const ADMIN_PASS = 'admin123';
```

Change `admin123` to your own secret password.

---

## STEP 4 — Upload to GitHub (5 minutes)

1. Go to https://github.com and sign in as **Ridamahenoor-dot**
2. Click the **+** button (top right) → **New repository**
3. Name it: `rida-store` (or any name you like)
4. Keep it **Public**
5. Click **Create repository**
6. On the next page, click **uploading an existing file**
7. Drag and drop ALL your files:
   - `index.html`
   - `supabase-setup.sql`
   - The entire `admin` folder
8. Click **Commit changes**

✅ Your code is on GitHub!

---

## STEP 5 — Deploy on Netlify (3 minutes)

1. Go to https://netlify.com and sign in
2. Click **Add new site** → **Import an existing project**
3. Click **GitHub**
4. Find and select your `rida-store` repository
5. Leave all settings as default
6. Click **Deploy site**
7. Wait 1-2 minutes...
8. Netlify gives you a free link like: `https://your-name.netlify.app`

✅ Your website is LIVE!

---

## HOW TO USE YOUR ADMIN PANEL

Your admin panel is at: `https://your-name.netlify.app/admin`

**Default password:** admin123 (you should change this!)

From the admin panel you can:
- ➕ Add new products with photos
- ✏️ Edit existing products
- 🗑️ Delete products
- Toggle in stock / sold out
- Mark products as Featured

Everything updates on your website **instantly** — no refreshing needed!

---

## HOW TO UPLOAD A PRODUCT PHOTO

1. Open Admin Panel → Add Product
2. Click the photo area or drag and drop your image
3. Supported: JPG, PNG (max 5MB)
4. Fill in the name, price, description
5. Click Save Product
6. The photo uploads automatically and appears on your website!

---

## CHANGING YOUR WEBSITE NAME

To rename from "Mah e Noor" to just "Rida" or any other name, open `index.html` and search for "Mah e Noor" — change each one.

---

## NEED HELP?

WhatsApp is the easiest way for customers to order — every product has a "Order on WhatsApp" button that automatically sends you the product name and price in the message. You just confirm and arrange payment!

Good luck with your store! 🌸
