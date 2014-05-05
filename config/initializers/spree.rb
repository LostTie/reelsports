# Configure Spree Preferences
#
# Note: Initializing preferences available within the Admin will overwrite any changes that were made through the user interface when you restart.
#       If you would like users to be able to update a setting with the Admin it should NOT be set here.
#
# In order to initialize a setting do:
# config.setting_name = 'new value'
Spree.config do |config|
  # Example:
  # Uncomment to override the default site name.
  # config.site_name = "Spree Demo Site"
  config.site_name = 'Reel Sportswear'
  config.logo = 'store/logo.png'
  config.admin_interface_logo = 'store/logo.png'
  config.use_s3 = ENV['USE_S3']
  config.s3_bucket = ENV['S3_BUCKET']
  config.s3_access_key = ENV['S3_ACCESS_KEY']
  config.s3_secret = ENV['S3_SECRET']
  config.s3_protocol = ENV['S3_PROTOCOL']
  config[:attachment_styles] =  "{\"mini\":\"48x48>\",\"small\":\"208x208>\",\"product\":\"500x500>\",\"large\":\"600x600>\",\"jumbo\":\"800x800>\"}"
end

Spree.user_class = "Spree::LegacyUser"
