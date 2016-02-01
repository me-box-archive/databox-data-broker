require! twitter

client = new twitter do
  consumer_key: \e5Cu9LDfpxkYu1jcAOWRubBGX
  consumer_secret: \5QEXojGQ8gT6yznDbw5d0SUsNVYyELR6tDIfqKWuL8ts3SMRsn
  access_token_key: \14149787-txkLSHfMFZsdSV6wENDtPEw68YRzXX3ievzaZLpSO
  access_token_secret: \6HkhDw4lHnHcxYXFsB5euOiCdo0rSkXOtaIHYjptRABGV

export get = (url, callback) -> client.get url, callback
