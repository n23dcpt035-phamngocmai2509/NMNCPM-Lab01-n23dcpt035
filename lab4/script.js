document.getElementById("loginForm").addEventListener("submit", function(e) {
  e.preventDefault(); // Ngăn không cho reload trang

  let username = document.getElementById("username").value.trim();
  let password = document.getElementById("password").value.trim();
  let errorMsg = document.getElementById("error-message");

  if (username === "" || password === "") {
    errorMsg.textContent = "Vui lòng nhập đầy đủ tên đăng nhập và mật khẩu!";
  } else if (username === "admin" && password === "123456") {
    errorMsg.style.color = "green";
    errorMsg.textContent = "Đăng nhập thành công!";
  } else {
    errorMsg.textContent = "Tên đăng nhập hoặc mật khẩu không đúng!";
  }
});
