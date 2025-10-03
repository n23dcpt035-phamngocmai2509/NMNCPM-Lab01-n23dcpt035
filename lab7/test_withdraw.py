# file: test_withdraw.py

# 1. Import trực tiếp các hàm từ file withdraw.py
from withdraw import verify_pin, withdraw 

# Dữ liệu thử nghiệm
CARD_NO = "1234567890" 
PIN = "1234"      
AMOUNT = 500      # Số tiền muốn rút

# 2. Xử lý logic rút tiền
if verify_pin(CARD_NO, PIN):
    print("Xác thực PIN thành công. Đang tiến hành rút tiền...")
    
    # Gọi hàm withdraw trực tiếp
    # Hàm withdraw() sẽ in ra "Withdraw success" hoặc "Error"
    withdraw(CARD_NO, AMOUNT) 
    
else:
    print("Xác thực PIN thất bại. PIN không hợp lệ.")