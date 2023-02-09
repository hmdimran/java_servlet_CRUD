<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <title>Student List</title>
  <%@ include file="all_css.jsp"%>
</head>
<body>
  <section class="gradient-form" style="background-color: #eee;">
    <div class="container py-5">
      <div class="row d-flex justify-content-center align-items-center h-100">
        <div class="col-xl-10">
          <div class="card rounded-3 text-black">
            <div class="row g-0">
              <div class="col-lg-6">
                <div class="card-body p-md-5 mx-md-4">

                  <div class="text-center">
                    <img src="Assets/images/logo.png"
                         style="width: 100px;" alt="logo">
                  </div>

                  <form>
                    <p>Please login to your account</p>

                    <div class="form-outline mb-4">
                      <input type="email" class="form-control"
                             placeholder="Phone number or email address" />
                    </div>

                    <div class="form-outline mb-4">
                      <input type="password"class="form-control" placeholder="Password"/>
                    </div>

                    <div class="text-center pt-1 mb-5 pb-1 d-flex align-items-center justify-content-center">
                      <button class="btn btn-primary btn-block fa-lg gradient-custom-2 me-3" type="button">Log
                        in</button>
                      <a class="text-muted" href="forgot.jsp">Forgot password?</a>
                    </div>

                    <div class="d-flex align-items-center justify-content-center pb-4">
                      <p class="mb-0 me-2">Don't have an account?</p>
                      <a href="signup.jsp" class="btn btn-outline-success">Create new</a>
                    </div>

                  </form>

                </div>
              </div>
              <div class="col-lg-6 d-flex align-items-center gradient-custom-2">
                <div class="text-white px-3 py-4 p-md-5 mx-md-4">
                  <h4 class="mb-4">We are more than just a company</h4>
                  <p class="small mb-0">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                    tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
                    exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
</body>
</html>