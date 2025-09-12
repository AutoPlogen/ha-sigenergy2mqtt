#!/usr/bin/env bash
set -e

# Install Python dependencies
pip3 install --no-cache-dir sigenergy2mqtt

# Start sigenergy2mqtt
exec sigenergy2mqtt \
  --mqtt-broker "${MQTT_BROKER}" \
  --mqtt-port "${MQTT_PORT}" \
  --mqtt-username "${MQTT_USER}" \
  --mqtt-password "${MQTT_PASSWORD}" \
  --modbus-host "${MODBUS_HOST}" \
  --modbus-port "${MODBUS_PORT}" \
  --modbus-inverter-device-id "${MODBUS_DEVICE_ID}" \
  --home-assistant-enabled

