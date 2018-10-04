SPARK_HOME=/usr/local/spark
export PATH=$SPARK_HOME/bin:$PATH
source ~/.bashrc

cd /etc/profile.d
echo 'export M2_HOME=/opt/maven' >> maven.sh
echo 'export PATH=${M2_HOME}/bin:${PATH}' >> maven.sh
chmod +x maven.sh
source /etc/profile.d/maven.sh