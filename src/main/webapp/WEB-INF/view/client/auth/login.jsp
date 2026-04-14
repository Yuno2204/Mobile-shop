<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
            <%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
                <!DOCTYPE html>
                <html lang="en">

                <head>
                    <meta charset="utf-8" />
                    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
                    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
                    <meta name="description" content="" />
                    <meta name="author" content="" />
                    <title>Login - SB Admin</title>
                    <link href="css/styles.css" rel="stylesheet" />
                    <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js"
                        crossorigin="anonymous"></script>
                </head>

                <body>

                    <div class="login-wrapper">
                        <div class="login-card">

                            <h3 class="text-center mb-4 fw-bold">Đăng nhập</h3>

                            <form:form method="post" action="/login" modelAttribute="loginUser">

                                <!-- EMAIL -->
                                <div class="mb-3">
                                    <spring:bind path="loginUser.email">
                                        <label class="form-label">Email</label>
                                        <form:input path="email"
                                            class="form-control ${status.error ? 'is-invalid' : ''}"
                                            placeholder="example@gmail.com" />

                                        <c:if test="${status.error}">
                                            <div class="invalid-feedback d-block">
                                                ${status.errorMessages[0]}
                                            </div>
                                        </c:if>
                                    </spring:bind>
                                </div>

                                <!-- PASSWORD -->
                                <div class="mb-3">
                                    <spring:bind path="loginUser.password">
                                        <label class="form-label">Mật khẩu</label>
                                        <form:password path="password"
                                            class="form-control ${status.error ? 'is-invalid' : ''}"
                                            placeholder="Nhập mật khẩu" />

                                        <c:if test="${status.error}">
                                            <div class="invalid-feedback d-block">
                                                ${status.errorMessages[0]}
                                            </div>
                                        </c:if>
                                    </spring:bind>
                                </div>

                                <!-- BUTTON -->
                                <div class="d-grid mt-4">
                                    <button type="submit" class="btn btn-login text-white">
                                        Đăng nhập
                                    </button>
                                </div>

                                <!-- LINK -->
                                <div class="text-center mt-3">
                                    Chưa có tài khoản?
                                    <a href="/register" class="text-primary fw-bold">Đăng ký</a>
                                </div>

                            </form:form>

                        </div>
                    </div>

                </body>

                </html>