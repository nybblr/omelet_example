OmeletUi.setup do |config|
	# Address for the queue server
	config.server = "http://localhost:9292/"

	# Unique ID to identify app's reports on queue server
	config.app_id = "oss.nybblr.Omelet.Example"
end
