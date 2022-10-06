#/bin/bash -xv

TARGET="/hass/config"

generic_switch_template()
# ENTITY_ID to refresh
# Output file
{
   sed "s/switch.switch_1/$1/g" generic_switch_template_refresh_automation.yaml | sed "s/switch_1/$2/g" > $TARGET/automation/$3
}

generic_switch_template switch.hvac_uv hvac_uv generic_switch_template_refresh_hvac_uv_automation.yaml
generic_switch_template switch.newwell newwell generic_switch_template_refresh_newwell_automation.yaml
generic_switch_template switch.oldwell oldwell generic_switch_template_refresh_oldwell_automation.yaml
generic_switch_template switch.outdoor_switch outdoor_switch generic_switch_template_refresh_outdoor_switch_automation.yaml
generic_switch_template switch.switch_1_switch switch_1 generic_switch_template_refresh_switch_1_automation.yaml
generic_switch_template switch.switch_2_switch switch_2 generic_switch_template_refresh_switch_2_automation.yaml
generic_switch_template switch.switch_3_switch switch_3 generic_switch_template_refresh_switch_3_automation.yaml
generic_switch_template switch.water_softener water_softener generic_switch_template_refresh_water_softener_switch_automation.yaml
generic_switch_template switch.water_uv water_uv generic_switch_template_refresh_water_uv_switch_automation.yaml
