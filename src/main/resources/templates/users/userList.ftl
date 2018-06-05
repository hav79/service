<#import "../parts/common.ftl" as c>

<@c.page title="Users list">
    List of users:

<table class="table table-striped table-hover mt-5">
    <thead>
    <tr>
        <th scope="col">Name</th>
        <th scope="col">Role</th>
        <th scope="col"></th>
    </tr>
    </thead>
    <tbody>
    <#list users as user>
<tr>
    <td>${user.username}</td>
    <td><#list user.roles as role>${role}<#sep>, </#list></td>
    <td><a href="/user/${user.id}">Edit</a> </td>
</tr>
</#list>
    </tbody>
</table>

</@c.page>