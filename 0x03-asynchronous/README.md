# Dart - Asynchronous

### Learning Objectives:
*    Introduction to Dart asynch programming

--- 
## Notes
For the final task, i had to update the minimum sdk environment in the pubspec.yaml file.
`2.10.0 -> 2.12.0`

I also had to adjust the permissions in my dart pub cache, as it wasn't letting my project files acces some of them.
I did those by navigating to my `.pub-cache/hosted/` folder, and then running:
`find pub.dev -type d -exec chmod 755 {} \;`
`find pub.dev -type f -exec chmod 644 {} \;`
This allowed my files to access the packages correctly, though they still showed as red in my editor window.

--- 
## Author 
#### Paul S.