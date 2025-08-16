# 2025201064_Lab2
# Project: StreamingDB SQL Procedures

## Steps to Execute

1. Open MySQL Workbench (or any MySQL client).
2. Create and select the database by running the script.

   a) Copy the full SQL script file (project.sql) provided.  
   b) Paste into MySQL Workbench query editor.  
   c) Run the script. This will:  
      - Create database `StreamingDB`  
      - Create tables: Shows, Subscribers, WatchHistory  
      - Insert sample data  
      - Create stored procedures:
        * ListAllSubscribers()
        * GetWatchHistoryBySubscriber()
        * AddSubscriberIfNotExists()
        * SendWatchTimeReport()
        * PrintAllSubscribersWatchHistory()

3. To verify, run the following sample procedure calls:

   ```sql
   USE StreamingDB;
   CALL ListAllSubscribers();
   CALL GetWatchHistoryBySubscriber(1);
   CALL AddSubscriberIfNotExists('Test User');
   CALL SendWatchTimeReport();
   CALL PrintAllSubscribersWatchHistory();

