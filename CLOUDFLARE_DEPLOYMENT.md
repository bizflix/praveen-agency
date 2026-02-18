# Cloudflare Pages Deployment Guide

## ✅ Completed Steps

1. **Git Repository**: Initialized and configured
2. **GitHub Repository**: Created at `https://github.com/bizflix/praveen-agency`
3. **Code Pushed**: All files uploaded to GitHub

## 🚀 Next Steps: Connect to Cloudflare Pages

### Step 1: Log in to Cloudflare

1. Go to [Cloudflare Dashboard](https://dash.cloudflare.com/)
2. Log in with your Cloudflare account

### Step 2: Create Cloudflare Pages Project

1. In the Cloudflare Dashboard, click **"Workers & Pages"** in the left sidebar
2. Click **"Create application"**
3. Select the **"Pages"** tab
4. Click **"Connect to Git"**

### Step 3: Connect GitHub

1. Click **"Connect GitHub"**
2. Authorize Cloudflare to access your GitHub account
3. Select the **"bizflix"** organization (or your account)
4. Find and select the **"praveen-agency"** repository

### Step 4: Configure Build Settings

Since this is a static HTML site with no build process:

- **Project name**: `praveen-agency` (or your preferred name)
- **Production branch**: `main`
- **Build command**: Leave empty (no build needed)
- **Build output directory**: `/` (root directory)

Click **"Save and Deploy"**

### Step 5: Wait for Deployment

- Cloudflare will deploy your site automatically
- This usually takes 1-2 minutes
- You'll get a URL like: `praveen-agency.pages.dev`

### Step 6: Configure Custom Domain (Optional)

To use `praveenpartners.com`:

1. In your Cloudflare Pages project, go to **"Custom domains"**
2. Click **"Set up a custom domain"**
3. Enter `praveenpartners.com`
4. Follow the DNS configuration instructions
5. Cloudflare will automatically provision an SSL certificate

## 📋 Repository Information

- **GitHub URL**: https://github.com/bizflix/praveen-agency
- **Branch**: main
- **Files**: 21 files including all HTML pages, images, and assets

## ✨ What's Included

- ✅ Updated meta tags with proper Open Graph properties
- ✅ GoLang listed in Technologies (replaced Vercel)
- ✅ Image preview URL: `https://i.ibb.co/Ng39rZF2/PRAVEEN-3.png`
- ✅ All pages: index, services, insights, about, contact, etc.

## 🔍 After Deployment

Once deployed, verify:

1. Visit your Cloudflare Pages URL
2. Check that "GoLang" appears in the Technologies section (not "Vercel")
3. Test link preview on social media platforms
4. Verify all pages load correctly

## 📞 Need Help?

If you encounter any issues during the Cloudflare Pages setup, let me know and I can help troubleshoot!
