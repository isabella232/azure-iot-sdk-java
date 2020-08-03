#!/usr/bin/env bash


cd %build-root%\iot-e2e-tests\android
gradle wrapper
gradlew :clean :app:clean :app:assembleDebug
gradlew :app:assembleDebugAndroidTest -PIOTHUB_CONNECTION_STRING=%IOTHUB_CONNECTION_STRING% -PIOTHUB_CONN_STRING_INVALIDCERT=%IOTHUB_CONN_STRING_INVALIDCERT% -PIOT_DPS_CONNECTION_STRING=%IOT_DPS_CONNECTION_STRING% -PIOT_DPS_ID_SCOPE=%DEVICE_PROVISIONING_SERVICE_ID_SCOPE% -PDPS_GLOBALDEVICEENDPOINT_INVALIDCERT=%INVALID_DEVICE_PROVISIONING_SERVICE_GLOBAL_ENDPOINT% -PPROVISIONING_CONNECTION_STRING_INVALIDCERT=%INVALID_DEVICE_PROVISIONING_SERVICE_CONNECTION_STRING% -PFAR_AWAY_IOTHUB_CONNECTION_STRING=%FAR_AWAY_IOTHUB_CONNECTION_STRING% -PCUSTOM_ALLOCATION_POLICY_WEBHOOK=%CUSTOM_ALLOCATION_POLICY_WEBHOOK% -PIS_BASIC_TIER_HUB=%IS_BASIC_TIER_HUB% -PIS_PULL_REQUEST=%isPullRequestBuild%
