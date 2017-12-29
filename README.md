# Simple Calabash test for Android application

The demo Calabash test is presented in features/new_scroll_view.feature file.

To run the test:

- Checkout the project
- Build the application using AndroidStudio
- From the command line:
  - <code>cd path/to/app/home</code>
  - <code>bundle install</code>
  - <code>export ANDROID_HOME=~/Android/Sdk</code>
  - <code>export APPLITOOLS_API_KEY=YOUR_KEY</code>
  - <code>bundle exec calabash-android run ./app/build/outputs/apk/debug/app-debug.apk</code>
