sudo apt-get update

# LabelMe requirements
sudo apt-get install -y php5 libapache2-mod-php5 apache2 libapache2-mod-perl2 git make
a2enmod include
a2enmod rewrite
a2enmod cgi

# # Vagrant Synced folders requirements
cd ~
#sudo git clone https://github.com/CSAILVision/LabelMeAnnotationTool.git
sudo git clone https://github.com/alsoba13/LabelMeAnnotationTool.git

sudo rsync -a ~/LabelMeAnnotationTool/ /var/www/LabelMeAnnotationTool/
rm -rvf ~/LabelMeAnnotationTool/

cd /var/www/LabelMeAnnotationTool
make

sudo echo '<VirtualHost *:80>' > /etc/apache2/sites-available/default
sudo echo '	ServerAdmin webmaster@localhost' >> /etc/apache2/sites-available/default
sudo echo '	DocumentRoot /var/www/LabelMeAnnotationTool' >> /etc/apache2/sites-available/default
sudo echo '	ErrorLog ${APACHE_LOG_DIR}/error.log' >> /etc/apache2/sites-available/default
sudo echo '	LogLevel warn' >> /etc/apache2/sites-available/default
sudo echo '	CustomLog ${APACHE_LOG_DIR}/access.log combined' >> /etc/apache2/sites-available/default
sudo echo '	<Directory "REPLACE_WITH_YOUR_LOCATION">' >> /etc/apache2/sites-available/default
sudo echo '  		Options Indexes FollowSymLinks MultiViews +Includes' >> /etc/apache2/sites-available/default
sudo echo '   		AllowOverride all' >> /etc/apache2/sites-available/default
sudo echo '   		Order allow,deny' >> /etc/apache2/sites-available/default
sudo echo '   		allow from all' >> /etc/apache2/sites-available/default
sudo echo '   		AddType text/html .shtml' >> /etc/apache2/sites-available/default
sudo echo '   		AddOutputFilter INCLUDES .shtml' >> /etc/apache2/sites-available/default
sudo echo '  		DirectoryIndex index.shtml' >> /etc/apache2/sites-available/default
sudo echo '	</Directory>' >> /etc/apache2/sites-available/default
sudo echo '</VirtualHost>' >> /etc/apache2/sites-available/default

sudo service apache2 restart

