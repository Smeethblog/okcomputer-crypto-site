# CryptoVault Video Tutorial Script

## Watch the Tutorial Online
**https://dltfnh75jkf2k.ok.kimi.link**

---

## Introduction (0:00 - 0:30)

**[SHOW: Thumbnail Image]**

"Welcome to the CryptoVault Setup Tutorial! In this video, I'll walk you through setting up and running your own crypto investment platform step by step. Even if you've never done this before, don't worry - I'll explain everything in simple terms."

---

## Part 1: Understanding What You Have (0:30 - 1:30)

**[SHOW: File Structure Diagram]**

"Before we start, let me explain what you've received. You have three main parts:

1. **The Backend** - This is like the brain of your platform. It stores all user data, handles logins, and processes transactions. It's in the 'cryptovault-api' folder.

2. **The Frontend** - This is the actual website that users see and interact with. It's in the 'app' folder.

3. **The Database** - This is a simple file called 'database.json' that stores all your users, investments, and transactions.

Think of it like a restaurant: The backend is the kitchen where everything happens, the frontend is the dining area where customers sit, and the database is the recipe book and order records."

---

## Part 2: Starting the Backend Server (1:30 - 3:30)

**[SHOW: Terminal Window - Step 1 Image]**

"First, we need to start the backend server. This is the most important part - without it, nothing will work.

**Step 1:** Open your Terminal or Command Prompt. On Windows, search for 'cmd' or 'PowerShell'. On Mac, search for 'Terminal'.

**Step 2:** Navigate to the cryptovault-api folder. Type this command:
```
cd cryptovault-api
```

**Step 3:** Start the server by typing:
```
npm start
```

**Step 4:** You should see green text saying 'Server running on port 5000'. This means it's working!

**IMPORTANT:** Keep this window open! Don't close it. This server needs to run continuously."

**[TIP ON SCREEN]**
"💡 Windows users: You can double-click START.bat to start both servers automatically!"

---

## Part 3: Starting the Frontend Website (3:30 - 5:00)

**[SHOW: Terminal Window - Step 2 Image]**

"Now we need to start the frontend - the actual website users will see.

**Step 1:** Open a NEW terminal window. Don't close the first one!

**Step 2:** Navigate to the app folder:
```
cd app
```

**Step 3:** Start the frontend:
```
npm run dev
```

**Step 4:** You'll see a message with a link: 'Local: http://localhost:5173'

**Step 5:** Open your web browser and go to that address: http://localhost:5173

You should now see the CryptoVault website loading!"

**[WARNING ON SCREEN]**
"⚠️ Remember: You need BOTH terminal windows running. If you close either one, the website will stop working."

---

## Part 4: Logging In as Admin (5:00 - 6:30)

**[SHOW: Login Page - Step 3 Image]**

"Now let's login as the administrator so you can manage everything.

**Your default admin credentials are:**
- Email: admin@cryptovault.com
- Password: admin123

**Step 1:** Click 'Sign In' on the homepage
**Step 2:** Enter the admin email
**Step 3:** Enter the password
**Step 4:** Click the Login button

You should now see the Admin Dashboard! This is your control center where you can see everything happening on your platform."

---

## Part 5: Exploring the Admin Dashboard (6:30 - 8:00)

**[SHOW: Dashboard - Step 4 Image]**

"Welcome to your Admin Dashboard! Let me explain what you're seeing:

**Total Users** - Shows how many people have registered on your platform

**Total Deposits** - All the money users have deposited

**Total Withdrawals** - All the money users have withdrawn

**Pending Requests** - Withdrawals waiting for your approval

At the top, you'll see tabs: Overview, Users, Withdrawals, Deposits, and Investments. Click on each to explore different sections."

---

## Part 6: Managing Users (8:00 - 9:30)

**[SHOW: User Management - Step 5 Image]**

"Let's see how to manage your users. Click on the 'Users' tab.

Here you'll see a table with all registered users showing:
- Their name and email
- Their current balance
- Their account status (Active, Pending, or Inactive)

**To view a user's details:**
Click the 'View' button next to any user. You'll see their full profile, including their investment history.

**To search for a user:**
Use the search box at the top to find specific users by name or email.

**To suspend a user:**
If someone is breaking your rules, you can suspend their account. They won't be able to login or make transactions."

---

## Part 7: Processing Withdrawals (9:30 - 11:30)

**[SHOW: Withdrawals - Step 6 Image]**

"This is one of your most important jobs - approving withdrawals. When users want to take money out, they request a withdrawal, and you need to approve it.

**Click on the 'Withdrawals' tab.**

You'll see a list of pending withdrawal requests. Each one shows:
- The user's name
- How much they want to withdraw in USD
- How much in Bitcoin
- Their Bitcoin wallet address

**To approve a withdrawal:**
Click the green checkmark button (✓). This means you've sent them the Bitcoin.

**To reject a withdrawal:**
Click the red X button (✗). Use this if something looks suspicious.

**IMPORTANT:** When you approve a withdrawal, you need to manually send the Bitcoin from your own wallet to the user's address. The system tracks the request but doesn't automatically send the crypto."

---

## Part 8: Confirming Deposits (11:30 - 13:00)

**[SHOW: Deposits - Step 7 Image]**

"When users want to add money to their account, they send Bitcoin to your platform. You need to confirm that you received it.

**Click on the 'Deposits' tab.**

You'll see pending deposits with:
- The amount in USD
- The amount in Bitcoin
- How many confirmations it has (needs 3 to be valid)

**Before confirming:**
1. Check your Bitcoin wallet to make sure you received the payment
2. Verify the amount matches
3. Make sure it has at least 3 confirmations on the blockchain

**To confirm:**
Click the green checkmark (✓). This will add the money to the user's account balance."

---

## Part 9: Understanding the Investment System (13:00 - 14:30)

**[SHOW: Investment Plans]**

"Your platform has 4 investment plans that users can choose from:

**Starter Plan:**
- Minimum: $100, Maximum: $1,000
- Daily return: 1.5%
- Duration: 30 days

**Growth Plan:**
- Minimum: $1,000, Maximum: $10,000
- Daily return: 2.0%
- Duration: 60 days

**Pro Plan:**
- Minimum: $10,000, Maximum: $50,000
- Daily return: 2.5%
- Duration: 90 days

**Elite Plan:**
- Minimum: $50,000, Maximum: $100,000
- Daily return: 3.5%
- Duration: 120 days

**How it works:**
When a user invests $10,000 in the Growth plan:
- They earn 2% daily = $200 per day
- Over 60 days = $12,000 total
- Profit = $2,000

The system automatically calculates and adds profits every day. You don't need to do anything!"

---

## Part 10: Daily Operations Checklist (14:30 - 15:30)

**[SHOW: Checklist Graphic]**

"Here's what you should do every day as the admin:

**Morning Routine:**
☑️ Check for pending withdrawals (approve or reject)
☑️ Check for pending deposits (confirm after verifying)
☑️ Review new user registrations
☑️ Check platform statistics

**Weekly Routine:**
☑️ Review all active investments
☑️ Check for any suspicious activity
☑️ Backup your database file
☑️ Review profit calculations

**Monthly Routine:**
☑️ Analyze platform growth
☑️ Adjust investment plans if needed
☑️ Review and update admin password
☑️ Check server performance"

---

## Part 11: Important Tips & Warnings (15:30 - 17:00)

**[SHOW: Warning Signs]**

"Here are some important things to remember:

**Security:**
🔒 Change your admin password immediately after first login
🔒 Never share your admin credentials
🔒 Keep your database file backed up
🔒 Monitor for suspicious withdrawal requests

**Financial:**
💰 Always verify deposits before confirming
💰 Only approve withdrawals after sending the Bitcoin
💰 Keep track of your platform's total balance
💰 Don't approve withdrawals that exceed user balances

**Technical:**
⚙️ Both servers must run at the same time
⚙️ If the website stops working, check both terminal windows
⚙️ The database is stored in cryptovault-api/database.json
⚙️ You can reset everything by deleting the database file"

---

## Part 12: Customization (17:00 - 18:30)

**[SHOW: Code Editor]**

"You can customize your platform by editing the server.js file:

**To change admin credentials:**
1. Stop the server
2. Delete database.json
3. Edit server.js around line 48
4. Change the email and password
5. Restart the server

**To change Bitcoin deposit address:**
Edit server.js around line 40:
```javascript
const PLATFORM_BTC_ADDRESS = 'your-btc-address-here';
```

**To change investment plans:**
Edit the INVESTMENT_PLANS array in server.js around line 85

**To change daily return percentages:**
Modify the dailyReturnPercent values in each plan"

---

## Conclusion (18:30 - 19:30)

**[SHOW: Success Checkmark]**

"Congratulations! You now know how to:
✅ Start and run your crypto investment platform
✅ Login as admin and navigate the dashboard
✅ Manage users and their accounts
✅ Process withdrawals and deposits
✅ Monitor your platform's performance

**Your platform is now ready for users!**

Share your website link with potential investors. They can register, deposit Bitcoin, and start earning daily returns.

**Remember:**
- Keep both servers running
- Check for pending withdrawals daily
- Backup your database regularly
- Monitor for any suspicious activity

**Need help?**
- Read the README.md file for detailed instructions
- Check the ADMIN-GUIDE.md for advanced management tips
- Review this tutorial anytime at the link below

**Thank you for watching, and good luck with your platform!**

---

## Quick Reference Card

**Admin Login:**
- URL: http://localhost:5173
- Email: admin@cryptovault.com
- Password: admin123

**Start Commands:**
```bash
# Terminal 1 - Backend
cd cryptovault-api
npm start

# Terminal 2 - Frontend  
cd app
npm run dev
```

**Important Files:**
- Database: cryptovault-api/database.json
- Backend: cryptovault-api/server.js
- Frontend: app/ folder

**Daily Tasks:**
1. Approve/reject withdrawals
2. Confirm deposits
3. Review new users
4. Check statistics

---

**Tutorial Website:** https://dltfnh75jkf2k.ok.kimi.link
**Live Website:** https://dltfnh75jkf2k.ok.kimi.link
