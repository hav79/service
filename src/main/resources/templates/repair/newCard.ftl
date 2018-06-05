<#import "../parts/common.ftl" as c>

<@c.page "New repair card">
<form method="post" action="/repair/new">
    <div class="form-row">
        <div class="form-group col-sm-4">
            <label for="device" class="col-sm-2 col-form-label">Device:</label>
                <select class="form-control" id="device" name="device">
                            <#list devices as dev>
                                <option value="${dev.id}">${dev.deviceModel.originalName} ${dev.serialNumber}</option>
                            </#list>
                </select>
        </div>
        <div class="form-group col-sm-4">
            <label for="startDate" class="col-sm-4 col-form-label">Start date:</label>
        <#--<div class="col-sm-3">-->
                <input type="date" name="startDate" id="startDate" value="${.now?date}" class="form-control"/>
        <#--<script>-->
        <#--document.getElementById('startDate').value = new Date().toISOString().substring(0, 10);-->
        <#--</script>-->
        <#--</div>-->
        </div>
    </div>
    <div class="form-row">
        <div class="form-group col-sm-4">
            <label for="problem" class="col-sm-2 col-form-label">Problem:</label>
        <#--<div class="col-sm-4">-->
            <textarea cols="40" rows="3" name="problem" id="problem" class="form-control text-left" placeholder="Problem">
            </textarea>
        <#--</div>-->
        </div>
        <div class="form-group col-sm-2">
        </div>
    </div>
    <input type="hidden" name="_csrf" value="${_csrf.token}"/>
    <button class="btn btn-primary" type="submit">Save</button>
</form>
</@c.page>