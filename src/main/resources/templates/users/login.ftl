<#import "../parts/common.ftl" as c>
<#import "../parts/login_macro.ftl" as l>
<@c.page title="Login">
    <@l.login "/login" false />
    <#if Session?? && Session.SPRING_SECURITY_LAST_EXCEPTION??>
    <div class="row justify-content-center">
        <div class="alert alert-danger text-center col-sm-3" role="alert">
            ${Session.SPRING_SECURITY_LAST_EXCEPTION.message}
        </div>
    </div>
    </#if>
    <#if message??>
    <div class="row justify-content-center">
        <div class="alert alert-${messageType} text-center col-sm-3" role="alert">
            ${message}
        </div>
    </div>
    </#if>
</@c.page>