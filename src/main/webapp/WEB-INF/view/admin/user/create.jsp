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
          <meta name="description" content="Đinh Quang Đức - Dự án Mobileshop" />
          <meta name="author" content="Đinh Quang Đức" />
          <title>Thêm mới người dùng</title>
          <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
          <link href="/css/styles.css" rel="stylesheet" />
          <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
          <script>
            $(document).ready(() => {
              const avatarFile = $("#avatarFile");
              avatarFile.change(function (e) {
                const imgURL = URL.createObjectURL(e.target.files[0]);
                $("#avatarPreview").attr("src", imgURL);
                $("#avatarPreview").css({ "display": "block" });
              });
            }); 
          </script>
          <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
        </head>

        <body class="sb-nav-fixed">
          <jsp:include page="../layout/header.jsp"></jsp:include>
          <div id="layoutSidenav">
            <jsp:include page="../layout/sidebar.jsp"></jsp:include>
            <div id="layoutSidenav_content">
              <main>
                <div class="container-fluid px-4">
                  <h1 class="mt-4">Quản lý Users</h1>
                  <ol class="breadcrumb mb-4">
                    <li class="breadcrumb-item active"><a href="/admin">Dashboard</a></li>
                  </ol>
                  <div class="container mt-5">
                    <div class="row">
                      <div class="col-md-6 col-12 mx-auto">
                        <h4>Thêm mới người dùng</h4>
                        <hr />
                        <form:form method="post" action="/admin/user/create" modelAttribute="newUser" class="row"
                          enctype="multipart/form-data">
                          <div class="mb-3 col-12 col-md-6">
                            <label for="email" class="form-label">Email:</label>

                            <spring:bind path="newUser.email">
                              <form:input path="email" id="email" type="email"
                                class="form-control ${status.error ? 'is-invalid' : ''}" />

                              <c:if test="${status.error}">
                                <div class="invalid-feedback d-block">
                                  ${status.errorMessages[0]}
                                </div>
                              </c:if>
                            </spring:bind>
                          </div>

                          <div class="mb-3 col-12 col-md-6">
                            <label for="password" class="form-label">Mật khẩu:</label>

                            <spring:bind path="newUser.password">
                              <form:password path="password" id="password"
                                class="form-control ${status.error ? 'is-invalid' : ''}" />

                              <c:if test="${status.error}">
                                <div class="invalid-feedback d-block">
                                  ${status.errorMessages[0]}
                                </div>
                              </c:if>
                            </spring:bind>
                          </div>

                          <div class="mb-3 col-12 col-md-6">
                            <label for="phone" class="form-label">Số điện thoại:</label>

                            <spring:bind path="newUser.phone">
                              <form:input path="phone" id="phone" type="text"
                                class="form-control ${status.error ? 'is-invalid' : ''}" />

                              <c:if test="${status.error}">
                                <div class="invalid-feedback d-block">
                                  ${status.errorMessages[0]}
                                </div>
                              </c:if>
                            </spring:bind>
                          </div>

                          <div class="mb-3 col-12 col-md-6">
                            <label for="fullName" class="form-label">Họ và tên:</label>

                            <spring:bind path="newUser.fullName">
                              <form:input path="fullName" id="fullName" type="text"
                                class="form-control ${status.error ? 'is-invalid' : ''}" />

                              <c:if test="${status.error}">
                                <div class="invalid-feedback d-block">
                                  ${status.errorMessages[0]}
                                </div>
                              </c:if>
                            </spring:bind>
                          </div>

                          <div class="mb-3 col-12">
                            <label for="address" class="form-label">Địa chỉ:</label>

                            <spring:bind path="newUser.address">
                              <form:input path="address" id="address" type="text"
                                class="form-control ${status.error ? 'is-invalid' : ''}" />

                              <c:if test="${status.error}">
                                <div class="invalid-feedback d-block">
                                  ${status.errorMessages[0]}
                                </div>
                              </c:if>
                            </spring:bind>
                          </div>
                          <div class="mb-3 col-12 col-md-6">
                            <label class="form-label">Vai trò:</label>
                            <form:select class="form-select" path="role.name">
                              <form:option value="ADMIN">ADMIN</form:option>
                              <form:option value="USER">USER</form:option>
                            </form:select>
                          </div>
                          <div class="mb-3 col-12 col-md-6">
                            <label for="avatarFile" class="form-label">Ảnh đại diện:</label>
                            <input class="form-control" type="file" id="avatarFile" accept=".png, .jpg, .jpeg"
                              name="imagesFile" />
                          </div>
                          <div class="col-12 mb-3">
                            <img style="max-height: 250px; display: none;" alt="avatar preview" id="avatarPreview" />
                          </div>
                          <div class="d-flex justify-content-between">
                            <button type="submit" class="btn btn-primary">Thêm mới</button>
                            <a href="/admin/user" class="btn btn-success">Quay lại</a>
                          </div>
                        </form:form>
                      </div>
                    </div>
                  </div>

                </div>
              </main>
              <jsp:include page="../layout/footer.jsp"></jsp:include>
            </div>
          </div>
          <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
            crossorigin="anonymous"></script>
          <script src="/js/scripts.js"></script>
        </body>

        </html>