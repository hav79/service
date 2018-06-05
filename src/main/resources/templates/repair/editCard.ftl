<#import "../parts/common.ftl" as c>

<@c.page "Repair card">
<form method="post" action="/repair/update">
    <div class="form-row">
        <div class="form-group col-sm-4">
            <label for="device" class="col-sm-2 col-form-label">Device:</label>
            <input class="form-control-plaintext" type="text" id="device" readonly
                   value="${repairCard.device.deviceModel.originalName} ${repairCard.device.serialNumber}">
        </div>
        <div class="form-group col-sm-4">
            <label for="startDate" class="col-sm-4 col-form-label">Start date:</label>
                <input type="date" name="startDate" id="startDate" value="${repairCard.startDate}"
                       class="form-control"/>
        </div>
    </div>
    <div class="form-row">
        <div class="form-group col-sm-4">
            <label for="problem" class="col-sm-2 col-form-label">Problem:</label>
        <#--<div class="col-sm-4">-->
            <textarea cols="40" rows="3" name="problem" id="problem" class="form-control text-left"
                      placeholder="Problem">${repairCard.problem}</textarea>
        <#--</div>-->
        </div>
        <div class="form-group col-sm-2">
        </div>
    </div>
    <input type="hidden" name="cardId" value="${repairCard.id}">
    <input type="hidden" name="_csrf" value="${_csrf.token}"/>
    <button class="btn btn-primary" type="submit">Save</button>
</form>
</@c.page>