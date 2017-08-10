
# react-native-react-arkit

## Getting started

`$ npm install react-native-react-arkit --save`

### Mostly automatic installation

`$ react-native link react-native-react-arkit`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-react-arkit` and add `RNReactArkit.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNReactArkit.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<


## Configuring iOS Platform

ie. How to deal with Xcode stuff...

### Camera Permissions

For our app to be able to launch the AR Scene, we need to ask the user for the permission to the phone camera. Before starting the following steps, launch your project on Xcode.

You can do this by, doing the following within the root of your project directory
```bash
open ios/<ProjectName>.xcodeproj/
```

Once the project is open on Xcode, find the `Info.plist` file:

<img src="https://user-images.githubusercontent.com/803072/29158860-67ba3a40-7d61-11e7-83dd-0222384274c8.png" height="48">

Click on one of the `+` signs that appear when you hover over a row. Add `Privacy - Camera Usage Description` as the key, and `This application will use the camera for Augmented Reality.` as the value.

<img src="https://user-images.githubusercontent.com/803072/29158861-67ecfce6-7d61-11e7-8a00-b5b116d57c26.png" height="48">

You should be good to go!

### Making the project Swift compatible

