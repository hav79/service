<#macro login path isRegisterForm>
<form action="${path}" method="post">
    <div class="row justify-content-center">
        <img class="mb-4" src="/static/img/mk35.png" alt="" width="100" height="100">
    </div>
    <div class="row justify-content-center">
        <h1 class="h3 mb-3 font-weight-normal">
            <#if isRegisterForm>Add new user<#else>Please sign in</#if>
        </h1>
    </div>
    <div class="form-group row justify-content-center">
        <#--<label for="username" class="col-sm-2 col-form-label">User Name :</label>-->
        <div class="col-sm-3">
            <input type="text" name="username" id="username" value="<#if user??>${user.username}</#if>"
                   class="form-control ${(usernameError??)?string('is-invalid', '')}" placeholder="User name"/>
            <#if usernameError??>
                <div class="invalid-feedback">
                    ${usernameError}
                </div>
            </#if>
        </div>
    </div>
    <div class="form-group row justify-content-center">
        <#--<label for="password" class="col-sm-2 col-form-label">Password:</label>-->
        <div class="col-sm-3">
            <input type="password" name="password" id="password"
                   class="form-control ${(passwordError??)?string('is-invalid', '')}" placeholder="Password"/>
            <#if passwordError??>
                <div class="invalid-feedback">
                    ${passwordError}
                </div>
            </#if>
        </div>
    </div>
    <#if isRegisterForm>
    <div class="form-group row justify-content-center">
    <#--<label for="password" class="col-sm-2 col-form-label">Password:</label>-->
        <div class="col-sm-3">
            <input type="password" name="password2" id="password2"
                   class="form-control ${(password2Error??)?string('is-invalid', '')}" placeholder="Retype Password"/>
            <#if password2Error??>
                <div class="invalid-feedback">
                    ${password2Error}
                </div>
            </#if>
        </div>
    </div>
        <div class="form-group row justify-content-center">
            <#--<label for="email" class="col-sm-2 col-form-label">Email:</label>-->
            <div class="col-sm-3">
                <input type="email" name="email" id="email" value="<#if user??>${user.email}</#if>"
                       class="form-control ${(emailError??)?string('is-invalid', '')}" placeholder="some@some.com"/>
                <#if emailError??>
                <div class="invalid-feedback">
                    ${emailError}
                </div>
                </#if>
            </div>
        </div>
    </#if>
    <input type="hidden" name="_csrf" value="${_csrf.token}"/>
    <div class="row justify-content-center">
        <button class="btn btn-primary" type="submit"><#if isRegisterForm>Create<#else>Sign In</#if></button>
    </div>
    <#if !isRegisterForm>
        <div class="row mt-4 justify-content-center">
            <a href="/registration">Add new user</a>
        </div>
    </#if>
</form>
</#macro>

<#macro logout>
<form action="/logout" method="post">
    <input type="hidden" name="_csrf" value="${_csrf.token}"/>
    <button class="btn btn-primary" type="submit">Sign Out</button>
</form>
</#macro>