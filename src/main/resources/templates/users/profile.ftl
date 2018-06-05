<#import "../parts/common.ftl" as c>
<#import "../parts/login_macro.ftl" as l>
<@c.page title="Login">
    <div class="row justify-content-center mb-4">
        <h5>${username}</h5>
    </div>
<#--<div class="row justify-content-center">-->
    <form method="post">
    <#--<div class="row justify-content-center">-->
    <#--<h1 class="h3 mb-3 font-weight-normal">-->
    <#--<#if isRegisterForm>Add new user<#else>Please sign in</#if>-->
    <#--</h1>-->
    <#--</div>-->
        <div class="form-group row justify-content-center">
            <#--<label for="password" class="col-sm-2 col-form-label">Password:</label>-->
            <div class="col-sm-3">
                <input type="password" name="password" id="password" class="form-control" placeholder="Password"/>
            </div>
        </div>
        <div class="form-group row justify-content-center">
            <#--<label for="email" class="col-sm-2 col-form-label">Email:</label>-->
            <div class="col-sm-3">
                <input type="email" name="email" id="email" class="form-control" placeholder="some@some.com"
                       value="${email!''}"/>
            </div>
        </div>
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <div class="row justify-content-center">
            <button class="btn btn-primary" type="submit">Save</button>
        </div>
    </form>
<#--</div>-->
    <#if message??>
    <div class="row justify-content-center">
        <div class="alert alert-info text-center col-sm-3" role="alert">
            ${message}
        </div>
    </div>
    </#if>
</@c.page>