# CryptoVault - Full-Stack Crypto Investment Platform

## What You Have

A **fully functional** crypto investment platform with:

### Features
- **User Registration & Login** - Real accounts with secure passwords
- **Personal Dashboard** - View balance, investments, and earnings
- **Bitcoin Deposits** - QR code generation for deposits
- **Investment Plans** - 4 different plans with daily returns
- **Withdrawal System** - Request withdrawals to your BTC address
- **Admin Panel** - Manage all users, deposits, and withdrawals
- **Automated Profit Calculation** - Daily returns added automatically

### Default Admin Account
- **Email:** admin@cryptovault.com
- **Password:** admin123

---

## How to Run (Simple Steps)

### Option 1: Windows
1. Double-click `START.bat`
2. Wait for both windows to open
3. Open http://localhost:5173 in your browser

### Option 2: Mac/Linux
1. Open Terminal in this folder
2. Run: `bash START.sh`
3. Open http://localhost:5173 in your browser

### Option 3: Manual Start
**Terminal 1 (Backend):**
```bash
cd cryptovault-api
npm start
```

**Terminal 2 (Frontend):**
```bash
cd app
npm run dev
```

Then open http://localhost:5173

---

## How to Use

### As Admin
1. Login with `admin@cryptovault.com` / `admin123`
2. Go to **Admin Panel**
3. You can:
   - See all users and their balances
   - Approve/reject withdrawal requests
   - Confirm deposits
   - View platform statistics

### As a Client
1. Register a new account
2. Go to **Deposit** to add funds
3. Go to **Investments** to start investing
4. Watch your earnings grow daily
5. Go to **Withdraw** to request payouts

---

## Investment Plans

| Plan | Min | Max | Daily Return | Duration |
|------|-----|-----|--------------|----------|
| Starter | $100 | $1,000 | 1.5% | 30 days |
| Growth | $1,000 | $10,000 | 2.0% | 60 days |
| Pro | $10,000 | $50,000 | 2.5% | 90 days |
| Elite | $50,000 | $100,000 | 3.5% | 120 days |

---

## Important Files

- `cryptovault-api/server.js` - Backend API (Node.js/Express)
- `cryptovault-api/database.json` - Database (users, investments, transactions)
- `app/` - Frontend (React + TypeScript)

---

## Customization

### Change Admin Password
1. Stop the backend server
2. Delete `cryptovault-api/database.json`
3. Restart - new admin will be created with default password

### Change Investment Plans
Edit the plans in `cryptovault-api/server.js` (around line 50)

### Change Bitcoin Deposit Address
Edit the BTC address in `cryptovault-api/server.js` (around line 40)

---

## Deployed Version

Your frontend is deployed at:
**https://dltfnh75jkf2k.ok.kimi.link**

**Note:** The deployed version needs the backend running locally to work fully.

---

## Need Help?

If something doesn't work:
1. Make sure both servers are running (2 terminal windows)
2. Check that ports 5000 and 5173 are free
3. Try refreshing the page
4. Check the terminal for error messages
