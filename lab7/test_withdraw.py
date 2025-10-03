from withdraw_module import verify_pin, withdraw

print("Test PIN đúng:", verify_pin("1234567890", "1234"))   # True
print("Test PIN sai:", verify_pin("1234567890", "9999"))   # False

# Thử rút tiền
withdraw("1234567890", 500)
