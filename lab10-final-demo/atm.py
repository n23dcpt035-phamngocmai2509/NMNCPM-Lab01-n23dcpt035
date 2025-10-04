# atm.py

accounts = {
    "1234": {"pin": "1111", "balance": 1000},
    "5678": {"pin": "2222", "balance": 500}
}

def verify_pin(account_id, pin):
    account = accounts.get(account_id)
    if account and account["pin"] == pin:
        return True
    return False

def withdraw(account_id, amount):
    account = accounts.get(account_id)
    if not account:
        return False, "Account not found"
    if account["balance"] >= amount:
        account["balance"] -= amount
        return True, account["balance"]
    return False, "Insufficient funds"
