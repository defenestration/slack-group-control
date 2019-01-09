# slack-group-control

This repo is setup to run on a heroku container.  It requires environment variables from the slack app inteface:
 - token : standard slack token "xoxo-long string", for integration with slack api for usergroup actions.
 - web_token : short slack 'web token' for slash command auth.

Create heroku container with those environment variables.

Some work currently needs to be done to complete as I need a slack paid plan to test group integration.
