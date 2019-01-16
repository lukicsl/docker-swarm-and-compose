
# Influxdb

**create db**


      curl http://vevedock/influxdb/query --data-urlencode "q=CREATE DATABASE openhab_db"
    
      curl http://vevedock/influxdb/query --data-urlencode "q=CREATE USER admin WITH PASSWORD '.Techno.' WITH ALL PRIVILEGES"
    
      curl http://vevedock/influxdb/query --data-urlencode "q=CREATE USER openhab WITH PASSWORD 'openhab'"
    
      curl http://vevedock/influxdb/query --data-urlencode "q=CREATE USER grafana WITH PASSWORD 'grafana'"
    
      curl http://vevedock/influxdb/query --data-urlencode "q=GRANT ALL ON openhab_db TO openhab"
    
      curl http://vevedock/influxdb/query --data-urlencode "q=GRANT READ ON openhab_db TO grafana"

