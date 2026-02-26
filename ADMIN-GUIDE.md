# CryptoVault Admin Guide

## Your Admin Dashboard

Once logged in as admin, you have full control over the platform.

---

## Daily Operations

### 1. Check Pending Withdrawals
- Go to **Admin Panel** → **Withdrawals** tab
- Review each withdrawal request
- Click ✓ to approve or ✗ to reject
- Approved withdrawals are processed automatically

### 2. Confirm Deposits
- Go to **Admin Panel** → **Deposits** tab
- See deposits waiting for confirmation
- Click ✓ to confirm and credit user balance

### 3. Monitor Users
- Go to **Admin Panel** → **Users** tab
- Search for specific users
- Click "View" to see user details
- Suspend users if needed

---

## How Profit Calculation Works

The system automatically calculates daily profits:

**Formula:**
```
Daily Profit = Investment Amount × (Daily Return % / 100)
```

Example:
- User invests $10,000 in Growth Plan (2% daily)
- Daily profit = $10,000 × 0.02 = $200
- After 60 days: $12,000 total ($10,000 + $2,000 profit)

---

## Managing the Database

### Where Data is Stored
All data is in: `cryptovault-api/database.json`

### Backup
Simply copy `database.json` to create a backup.

### Reset Everything
1. Stop the backend server
2. Delete `database.json`
3. Restart - fresh database with new admin account

---

## Customization Guide

### Change Investment Plans

Edit `cryptovault-api/server.js` around line 85:

```javascript
const INVESTMENT_PLANS = [
  {
    id: 'starter',
    name: 'Your Plan Name',
    minAmount: 100,      // Minimum investment
    maxAmount: 1000,     // Maximum investment
    dailyReturnPercent: 1.5,  // Daily % return
    duration: 30,        // Days
  },
  // ... more plans
];
```

### Change Bitcoin Deposit Address

Edit `cryptovault-api/server.js` around line 40:

```javascript
const PLATFORM_BTC_ADDRESS = 'your-bitcoin-address-here';
```

### Change Admin Credentials

1. Delete `database.json`
2. Edit `cryptovault-api/server.js` around line 48:

```javascript
const adminUser = {
  email: 'your-email@example.com',
  password: bcrypt.hashSync('your-password', 10),
  // ...
};
```

3. Restart the server

---

## Security Tips

1. **Change default admin password immediately**
2. **Don't share your JWT_SECRET** (change it in production)
3. **Backup database.json regularly**
4. **Monitor withdrawal requests carefully**

---

## Troubleshooting

### Users can't login
- Check if backend is running (port 5000)
- Check terminal for errors

### Deposits not showing
- Verify user sent to correct BTC address
- Check deposit status in Admin Panel

### Profits not calculating
- Restart backend (calculations happen on startup)
- Check database.json for corrupted data

---

## Making it Live (Production)

To make this available on the internet:

1. **Get a server** (AWS, DigitalOcean, etc.)
2. **Install Node.js** on the server
3. **Upload the `cryptovault-api` folder**
4. **Run `npm install` and `npm start`**
5. **Update frontend API URL** in `app/src/services/api.ts`
6. **Build and deploy frontend**

For a beginner, I recommend using a service like:
- **Render.com** (free backend hosting)
- **Vercel** (free frontend hosting)

---

## Need More Help?

The code is well-commented. Check `cryptovault-api/server.js` for all API endpoints and logic.
