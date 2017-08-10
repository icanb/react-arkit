
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

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.reactlibrary.RNReactArkitPackage;` to the imports at the top of the file
  - Add `new RNReactArkitPackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-react-arkit'
  	project(':react-native-react-arkit').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-react-arkit/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-react-arkit')
  	```

#### Windows
[Read it! :D](https://github.com/ReactWindows/react-native)

1. In Visual Studio add the `RNReactArkit.sln` in `node_modules/react-native-react-arkit/windows/RNReactArkit.sln` folder to their solution, reference from their app.
2. Open up your `MainPage.cs` app
  - Add `using Com.Reactlibrary.RNReactArkit;` to the usings at the top of the file
  - Add `new RNReactArkitPackage()` to the `List<IReactPackage>` returned by the `Packages` method


## Usage
```javascript
import RNReactArkit from 'react-native-react-arkit';

// TODO: What to do with the module?
RNReactArkit;
```
  