#/bin/bash
#/bin/bash -xv

TARGET="/hass/config"

#### For online Devices
zwave_js_health_template()
# ZWAVE Entity
# ENTITY_ID to monitor 
# TIMEOUT
# COMMAND_CLASS
# PROPERTY_NAME
# Output file
{
   sed "s/multisensor_1/$1/g" zwave_js_health_template_multisensor_1_package.yaml | 
   sed "s/ENTITY_ID/$2/g" | sed "s/TIMEOUT/$3/g" | sed "s/COMMAND_CLASS/$4/g" | sed "s/PROPERTY_NAME/$5/g" > $TARGET/packages/$6
}

# Temperature Sensors
zwave_js_health_template multisensor_1 sensor.multisensor_1_temperature 480 49 "Air temperature" zwave_js_health_template_multisensor_1_package.yaml
zwave_js_health_template basement_sensor sensor.basement_temperature 480 49 "Air temperature" zwave_js_health_template_basement_sensor_package.yaml
zwave_js_health_template bsmnt_bath sensor.bsmnt_bath_temperature 600 49 "Air temperature" zwave_js_health_template_bsmnt_bath_package.yaml
zwave_js_health_template garage_sensor sensor.garage_temperature 600 49 "Air temperature" zwave_js_health_template_garage_sensor_package.yaml

# Switches
zwave_js_health_template switch_1 switch.switch_1_switch 1200 37 currentValue zwave_js_health_template_switch_1_package.yaml
zwave_js_health_template switch_2 switch.switch_2_switch 1200 37 currentValue zwave_js_health_template_switch_2_package.yaml
zwave_js_health_template switch_3 switch.switch_3_switch 1200 37 currentValue zwave_js_health_template_switch_3_package.yaml
zwave_js_health_template oldwell switch.oldwell 1200 37 currentValue zwave_js_health_template_switch_oldwell_package.yaml
zwave_js_health_template newwell switch.newwell 1200 37 currentValue zwave_js_health_template_switch_newwell_package.yaml
zwave_js_health_template hvac_uv switch.hvac_uv 1200 37 currentValue zwave_js_health_template_switch_hvac_uv_package.yaml
zwave_js_health_template water_uv switch.water_uv 1200 37 currentValue zwave_js_health_template_switch_water_uv_package.yaml
zwave_js_health_template outdoor_switch switch.outdoor_switch 1200 37 currentValue zwave_js_health_template_outdoor_switch_package.yaml
zwave_js_health_template water_softener_switch switch.water_softener 1200 37 currentValue zwave_js_health_template_water_softener_switch_package.yaml
# Themostates
zwave_js_health_template bedroom_thermostat climate.bedroom_thermostat 1200 49 "Air temperature" zwave_js_health_template_bedroom_thermostat_package.yaml
zwave_js_health_template studio_thermostat climate.studio_thermostat 1200 49 "Air temperature" zwave_js_health_template_studio_thermostat_package.yaml

zwave_js_health_template bsmnt_bath sensor.bsmnt_bath_temperature 600 49 "Air temperature" zwave_js_health_template_bsmnt_bath_package.yaml
zwave_js_health_template garage_sensor sensor.garage_temperature 600 49 "Air temperature" zwave_js_health_template_garage_sensor_package.yaml

#### For battery devices
zwave_js_battery_health_template()
# ZWAVE Entity
# TIMEOUT
# Output file
{
   sed "s/multisensor_1/$1/g" zwave_js_health_battery_template_package.yaml | 
   sed "s/TIMEOUT/$2/g" > $TARGET/packages/$3
}

# 30240 = (2 * 14400) + 10%
zwave_js_battery_health_template garage_door_1  30240 zwave_js_health_template_garage_door_1_package.yaml
zwave_js_battery_health_template garage_door_2 30240 zwave_js_health_template_garage_door_2_package.yaml
zwave_js_battery_health_template water_sensor_1  800 zwave_js_health_template_water_sensor_1_package.yaml
zwave_js_battery_health_template basement_east_water_sensor  11000 zwave_js_health_template_basement_east_water_sensor_package.yaml
zwave_js_battery_health_template garage_sensor  30240 zwave_js_health_template_garage_sensor_package.yaml
zwave_js_battery_health_template workshop_door  30240 zwave_js_health_template_workshop_door_package.yaml
zwave_js_battery_health_template fire_alarm  30240 zwave_js_health_template_fire_alarm_package.yaml
