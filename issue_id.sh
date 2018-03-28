#!/bin/bash

composer identity issue --card admin@iot-perishable-network --file grower1.card --newUserId grower1 --participantId 'resource:org.acme.shipping.perishable.Grower#farmer@email.com'
 
composer card import --file grower1.card

composer identity issue --card admin@iot-perishable-network --file shipper1.card --newUserId shipper1 --participantId 'resource:org.acme.shipping.perishable.Shipper#shipper@email.com'

composer card import --file shipper1.card

composer identity issue --card admin@iot-perishable-network --file importer1.card --newUserId importer1 --participantId 'resource:org.acme.shipping.perishable.Importer#supermarket@email.com'

composer card import --file importer1.card

composer identity issue --card admin@iot-perishable-network --file sensor_temp1.card --newUserId sensor_temp1 --participantId 'resource:org.acme.shipping.perishable.TemperatureSensor#SENSOR_TEMP001'

composer card import --file sensor_temp1.card

composer identity issue --card admin@iot-perishable-network --file sensor_gps1.card --newUserId sensor_gps1 --participantId 'resource:org.acme.shipping.perishable.GpsSensor#SENSOR_GPS001'

composer card import --file sensor_gps1.card

composer card list
