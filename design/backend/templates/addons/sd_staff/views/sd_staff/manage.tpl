{include file="common/subheader.tpl" title=__("staff") target="#s_extra"}
    <div class="control-group">
        <label for="product_description_material" class="control-label">{__("firstname")}:</label>
        <div class="controls">
            <input class="input-long" form="form" type="text" name="staff_firstname[firstname]" id="product_description_firstname" 
                                size="10" value="{$staff_firstname.firstname}" />
            {include file="buttons/update_for_all.tpl" display=$show_update_for_all object_id='firstname' name="update_all_vendors[firstname]"}
        </div>
 <label for="product_description_material" class="control-label">{__("lastname")}:</label>
        <div class="controls">
            <input class="input-long" form="form" type="text" name="staff_lastname[lastname]" id="product_description_lastname" 
                                size="10" value="{$staff_lastname.lastname}" />
            {include file="buttons/update_for_all.tpl" display=$show_update_for_all object_id='lastname' name="update_all_vendors[lastname]"}
        </div>
<label for="product_description_material" class="control-label">{__("position")}:</label>
        <div class="controls">
            <input class="input-long" form="form" type="text" name="staff_position[position]" id="product_description_position" 
                                size="10" value="{$staff_position.position}" />
            {include file="buttons/update_for_all.tpl" display=$show_update_for_all object_id='position' name="update_all_vendors[position]"}
        </div>
    <div class="control-group">
        <label for="creation_date" class="control-label">{__("creation_date")}:</label>
        <div class="controls">
            {include file="common/calendar.tpl" date_id="creation_date" 
                                        date_name="staff_creation_date'[creation_date]" date_val=$staff_creation_datecreation_date|default:""}
        </div>
    </div>
   <div class="control-group {$promo_class}">
                        <label class="control-label" for="elm_sd_condition">{__("status")}:</label>
                        <div class="controls">
                            <select class="span3" name="staff_staus[status]" id="staff_staus" {if $disable_selectors}disabled="disabled"{/if}>
                                <option value="P" {if $staff_staus.status == "P"}selected="selected"{/if}>{__("staff_staus.active")}</option>
                                <option value="S" {if $staff_staus.status == "S"}selected="selected"{/if}>{__("staff_stau.disable")}</option>
                            </select>