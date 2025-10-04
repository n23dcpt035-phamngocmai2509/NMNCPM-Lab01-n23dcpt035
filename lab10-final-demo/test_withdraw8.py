import pytest
from atm import verify_pin, withdraw, accounts

def test_verify_pin():
    assert verify_pin("1234", "1111") == True  # PIN đúng
    assert verify_pin("1234", "0000") == False # PIN sai
    assert verify_pin("9999", "1111") == False # Account không tồn tại

def test_withdraw():
    # Reset balance để test
    accounts["1234"]["balance"] = 1000
    success, balance = withdraw("1234", 500)
    assert success == True
    assert balance == 500

    success, msg = withdraw("1234", 1000)
    assert success == False
    assert msg == "Insufficient funds"

    success, msg = withdraw("9999", 100)
    assert success == False
    assert msg == "Account not found"
