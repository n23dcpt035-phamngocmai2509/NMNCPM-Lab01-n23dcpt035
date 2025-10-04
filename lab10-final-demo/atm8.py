# atm.py

# Simple ATM module for unit tests

# In-memory accounts registry: account_id -> { "pin": str, "balance": number }
accounts = {
    "1234": {"pin": "1111", "balance": 1000},
    # ... you can add more accounts if needed ...
}

def verify_pin(account_id: str, pin: str) -> bool:
    """
    Return True if account exists and pin matches, otherwise False.
    """
    acct = accounts.get(account_id)
    if not acct:
        return False
    return acct.get("pin") == pin

def withdraw(account_id: str, amount: float):
    """
    Attempt to withdraw amount from account.
    On success: return (True, new_balance)
    On failure: return (False, error_message)
    """
    acct = accounts.get(account_id)
    if not acct:
        return False, "Account not found"
    try:
        amount_val = float(amount)
    except (TypeError, ValueError):
        return False, "Invalid amount"
    if amount_val < 0:
        return False, "Invalid amount"
    if acct["balance"] < amount_val:
        return False, "Insufficient funds"
    acct["balance"] -= amount_val
    return True, acct["balance"]

# Append these git commands as a reference for linking & pushing to GitHub.
# Replace <branch> with your branch name (e.g., main) and authenticate with a PAT if required.

# Initialize git repo (if not already)
# git init

# Configure user (if not already)
# git config --global user.name "Your Name"
# git config --global user.email "you@example.com"

# Add or update remote (use this URL)
# git remote remove origin 2>/dev/null || true
# git remote add origin https://github.com/n23dcpt035-phamngocmai2509/NMNCPM-Lab01-n23dcpt035.git
# Or to update existing remote:
# git remote set-url origin https://github.com/n23dcpt035-phamngocmai2509/NMNCPM-Lab01-n23dcpt035.git

# Add, commit and push (set upstream on first push)
# git add .
# git commit -m "Add lab8 tests and atm module"
# git branch -M main
# git push -u origin main

# If your repository uses a different branch, replace 'main' with that branch name.
# If prompted for credentials, create a GitHub Personal Access Token (PAT) and use it as the password,
# or use the GitHub CLI: gh auth login
