drush pm:enable -y migrate_run,wbm3cm
drush migrate:import wbm3cm_step1:node
drush migrate:import wbm3cm_step2:node
drush php:eval 'Drupal\wbm3cm\Wbm3CmConfig::save()'
drush pm:uninstall -y workbench_moderation
drush pm:enable -y content_moderation
drush php:eval 'Drupal\wbm3cm\Wbm3CmConfig::restore()'
drush migrate:import wbm3cm_step3:node
