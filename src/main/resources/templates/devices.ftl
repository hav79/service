<#import "parts/common.ftl" as c>
<@c.page "Device list">
        <form class="mt-5" method="post" action="add">
            <div class="form-row">
                <div class="col">
                    <select class="form-control" id="deviceModel" name="deviceModel">
                        <#list models as m>
                            <option value="${m}">${m.getOriginalName()}</option>
                        </#list>
                    </select>
                </div>
                <div class="col">
                    <input class="form-control" type="text" name="serialNumber" placeholder="Номер">
                </div>
                <div class="col">
                    <input class="form-control" type="text" name="place" placeholder="Место">
                </div>
                <div class="col">
                    <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                    <button class="btn btn-primary" type="submit">Добавить</button>
                </div>
            </div>
        </form>
<table class="table table-striped table-hover mt-5">
    <thead>
    <tr>
        <th scope="col">Модель</th>
        <th scope="col">Номер</th>
        <th scope="col">Место</th>
    </tr>
    </thead>
    <tbody>
    <#list devices as device>
    <tr>
        <td>${device.deviceModel.originalName}</td>
        <td>${device.serialNumber}</td>
        <td>${device.place}</td>
    </tr>
    </#list>
    </tbody>
</table>
</@c.page>