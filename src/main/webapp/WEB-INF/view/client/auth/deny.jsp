<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html lang="vi">

        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Không có quyền truy cập</title>
            <style>
                * {
                    box-sizing: border-box;
                    margin: 0;
                    padding: 0;
                    font-family: Arial, sans-serif;
                }

                body {
                    min-height: 100vh;
                    display: flex;
                    align-items: center;
                    justify-content: center;
                    background: linear-gradient(135deg, #f8f9fa, #e9ecef);
                    padding: 20px;
                }

                .access-denied-container {
                    background: #fff;
                    width: 100%;
                    max-width: 500px;
                    padding: 40px 30px;
                    border-radius: 20px;
                    box-shadow: 0 10px 30px rgba(0, 0, 0, 0.08);
                    text-align: center;
                }

                .icon {
                    width: 90px;
                    height: 90px;
                    margin: 0 auto 20px;
                    border-radius: 50%;
                    background: #ffe5e5;
                    display: flex;
                    align-items: center;
                    justify-content: center;
                    font-size: 42px;
                }

                h1 {
                    font-size: 32px;
                    color: #dc3545;
                    margin-bottom: 12px;
                }

                p {
                    font-size: 16px;
                    color: #6c757d;
                    line-height: 1.6;
                    margin-bottom: 30px;
                }

                .btn-group {
                    display: flex;
                    justify-content: center;
                    gap: 12px;
                    flex-wrap: wrap;
                }

                .btn {
                    text-decoration: none;
                    padding: 12px 22px;
                    border-radius: 10px;
                    font-size: 15px;
                    font-weight: bold;
                    transition: 0.3s;
                    display: inline-block;
                }

                .btn-home {
                    background: #0d6efd;
                    color: white;
                }

                .btn-home:hover {
                    background: #0b5ed7;
                }

                .btn-back {
                    background: #f1f3f5;
                    color: #212529;
                }

                .btn-back:hover {
                    background: #dee2e6;
                }
            </style>
        </head>

        <body>
            <div class="access-denied-container">
                <div class="icon">⛔</div>
                <h1>Access Denied</h1>
                <p>
                    Bạn không có quyền truy cập vào trang này.
                    Vui lòng quay lại trang chủ hoặc đăng nhập bằng tài khoản có quyền phù hợp.
                </p>

                <div class="btn-group">
                    <a href="/" class="btn btn-home">Về trang chủ</a>
                    <a href="javascript:history.back()" class="btn btn-back">Quay lại</a>
                </div>
            </div>
        </body>

        </html>