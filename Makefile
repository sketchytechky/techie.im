deploy:
	s3cmd sync . s3://$(BUCKET)/ --exclude '.git/*' --exclude-from .gitignore -c .s3cfg
	s3cmd setacl s3://$(BUCKET)/ --acl-public --recursive -c .s3cfg

server:
	http-server .