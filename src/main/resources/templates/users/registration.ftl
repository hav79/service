<#import "../parts/common.ftl" as c>
<#import "../parts/login_macro.ftl" as l>
<@c.page title="Registration">
    <@l.login "/registration" true />
    <#if message??>
    <div class="row justify-content-center">
        <div class="alert alert-danger text-center col-sm-3" role="alert">
            ${message}
        </div>
    </div>
    </#if>
</@c.page>