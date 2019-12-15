#!/vendor/bin/sh

VENDOR_FINGERPRINT=$(echo $(grep -w ro.vendor.build.fingerprint /vendor/build.prop) | sed -e 's/ro.vendor.build.fingerprint=//;s/^[ \t]*//;s/[ \t].*//')

# For Russia Build
RU=`getprop ro.boot.vendor.lge.ru`
VENDOR_PRODUCT_NAME=$(echo $(grep -w ro.product.vendor.name /vendor/build.prop) | sed -e 's/ro.product.vendor.name=//;s/^[ \t]*//;s/[ \t].*//')

if [ $RU == "1" ]; then
    VENDOR_FINGERPRINT=$(echo ${VENDOR_FINGERPRINT} | sed -r 's/_com/_ru/')
    VENDOR_PRODUCT_NAME=$(echo ${VENDOR_PRODUCT_NAME} | sed -r 's/_com/_ru/')
fi

setprop ro.vendor.lge.build.fingerprint ${VENDOR_FINGERPRINT}

# For Product Name Variants
if [ $VENDOR_PRODUCT_NAME != "" ]; then
    setprop ro.vendor.lge.product.name ${VENDOR_PRODUCT_NAME}
fi

# For Product Model Variants
BOOT_PRODUCT_MODEL=`getprop ro.boot.vendor.lge.product.model`
VENDOR_PRODUCT_MODEL=$(echo $(grep -w ro.product.vendor.model /vendor/build.prop) | sed -e 's/ro.product.vendor.model=//;s/^[ \t]*//;s/[ \t].*//')

if [ $VENDOR_PRODUCT_MODEL != "" ]; then
    setprop ro.vendor.lge.product.model ${BOOT_PRODUCT_MODEL}
fi

exit 0
