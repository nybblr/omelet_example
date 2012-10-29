OmeletUi.setup do |config|
	# Address for the queue server
	config.server = "http://localhost:9292/"

	# Unique ID to identify app's reports on queue server
	config.app_id = "oss.nybblr.Omelet.Example"

	# Set the current_user method for User ID
	# config.current_user = :current_user

	# Set the identifier method for User ID
	# config.identifier = :identifer

	# Set the app name
	config.app_name = "Atari"

	# Set the app homepage
	config.home_path = "/"
end
