<#import "../parts/common.ftl" as c>

<@c.page "Repair cards">
<div class="row mb-3">
<#--<button class="btn btn-primary" formaction="/repair/new" formmethod="get">New repair card</button>-->
<a href="/repair/new">New repair card</a>
</div>
<#--<a class="btn btn-primary" data-toggle="collapse" href="#newCard" role="button" aria-expanded="false"-->
   <#--aria-controls="newCard">-->
    <#--New repair card-->
<#--</a>-->
<#--<div class="collapse" id="newCard">-->

<#--</div>-->
<div class="row">
    <table class="table table-striped table-hover mt-5">
        <thead>
        <tr>
            <th scope="col">Устройство</th>
            <th scope="col">Дата приема</th>
            <th scope="col">Дата выдачи</th>
            <th scope="col">Проблема</th>
            <th scope="col">Решение</th>
            <th scope="col"></th>
            <th scope="col"></th>
        </tr>
        </thead>
        <tbody>
    <#list repairCards as card>
    <tr>
        <td>${card.device.deviceModel.originalName} ${card.device.serialNumber}</td>
        <td>${card.startDate}</td>
        <td>${card.endDate!''}</td>
        <td>${card.problem!''}</td>
        <td>${card.solution!''}</td>
        <td>
            <div class="form-check">
                <input class="form-check-input" type="checkbox" name="isPrinted"
                       id="isPrinted" ${card.isPrinted()?then("checked", "")}>
                <label class="form-check-label" for="isPrinted">Распечатан</label>
            </div>
            <div class="form-check">
                <input class="form-check-input" type="checkbox" name="isSent"
                       id="isSent" ${card.isSent()?then("checked", "")}>
                <label class="form-check-label" for="isSent">Отправлен</label>
            </div>
            <div class="form-check">
                <input class="form-check-input" type="checkbox" name="isSigned"
                       id="isSigned" ${card.isSigned()?then("checked", "")}
                <label class="form-check-label" for="isSigned">Подписан</label>
            </div>
            <div class="form-check">
                <input class="form-check-input" type="checkbox" name="isClosed"
                       id="isClosed" ${card.isClosed()?then("checked", "")}
                <label class="form-check-label" for="isClosed">Закрыт</label>
            </div>
        </td>
        <td>
            <a href="/repair/${card.id}">Edit</a>
        </td>
    </tr>
    </#list>
        </tbody>
    </table>
</div>
</@c.page>