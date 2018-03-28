#!/bin/bash

composer transaction submit --card grower1@iot-perishable-network -d '{"$class": "org.acme.shipping.perishable.ShipmentPacked", "shipment": "resource:org.acme.shipping.perishable.Shipment#SHIP_001"}'

composer transaction submit --card shipper1@iot-perishable-network -d '{"$class": "org.acme.shipping.perishable.ShipmentPacked", "shipment": "resource:org.acme.shipping.perishable.Shipment#SHIP_001"}'

composer transaction submit --card shipper1@iot-perishable-network -d '{"$class": "org.acme.shipping.perishable.ShipmentPickup", "shipment": "resource:org.acme.shipping.perishable.Shipment#SHIP_001"}'

composer transaction submit --card shipper1@iot-perishable-network -d '{"$class": "org.acme.shipping.perishable.ShipmentLoaded", "shipment": "resource:org.acme.shipping.perishable.Shipment#SHIP_001"}'

composer transaction submit --card sensor_temp1@iot-perishable-network -d '{ "$class": "org.acme.shipping.perishable.TemperatureReading", "centigrade": 2, "shipment": "resource:org.acme.shipping.perishable.Shipment#SHIP_001"}'

composer transaction submit --card sensor_temp1@iot-perishable-network -d '{ "$class": "org.acme.shipping.perishable.TemperatureReading", "centigrade": 3, "shipment": "resource:org.acme.shipping.perishable.Shipment#SHIP_001"}'

composer transaction submit --card sensor_temp1@iot-perishable-network -d '{ "$class": "org.acme.shipping.perishable.TemperatureReading", "centigrade": 11, "shipment": "resource:org.acme.shipping.perishable.Shipment#SHIP_001"}'

composer transaction submit --card sensor_gps1@iot-perishable-network -d '{"$class": "org.acme.shipping.perishable.GpsReading", "readingTime": "2200", "readingDate": "20171118", "latitude": "40.6840", "latitudeDir": "N", "longitude": "74.0062", "longitudeDir": "W", "shipment": "resource:org.acme.shipping.perishable.Shipment#SHIP_001"}' 

composer transaction submit --card importer1@iot-perishable-network -d '{"$class": "org.acme.shipping.perishable.ShipmentReceived", "shipment": "resource:org.acme.shipping.perishable.Shipment#SHIP_001"}'


