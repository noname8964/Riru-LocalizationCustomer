function copy_files {
  # /data/misc/riru/modules/template exists -> libriru_template.so will be loaded
  # Change "template" to your module name
  # You can also use this folder as your config folder
  NAME="localization_customer"
  mkdir -p $TMP_DIR_MAGISK/data/misc/riru/modules/$NAME
  cp $MODULE_NAME/template_override/riru_module.prop $TMP_DIR_MAGISK/data/misc/riru/modules/$NAME/module.prop

  cp $MODULE_NAME/template_override/config.sh $TMP_DIR_MAGISK
  cp $MODULE_NAME/template_override/module.prop $TMP_DIR_MAGISK

  mkdir $TMP_DIR_MAGISK/data/misc/riru/modules/$NAME/packages
  echo "en-US" | tee $TMP_DIR_MAGISK/data/misc/riru/modules/$NAME/packages/com.android.htmlviewer
}
