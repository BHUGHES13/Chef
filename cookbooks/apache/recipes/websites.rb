file '/var/www/html/index.html' do
	content '<!doctype html>
		 <html lang="en">
			<head>
				<meta charset="UTF-8">
				<title>Test Apache setup for Chef</title>
			</head>
			<body>
				<p>This is a test page for an apache server setup by chef</p>
			</body>
		 </html>'
	owner 'root'
	group 'root'
	mode '0755'
	action :create
end

service 'apache' do
	service_name 'apache2'
	action :restart
end
