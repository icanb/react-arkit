# React ARKit

AR library for React-Native, based on ARKit. Makes it super easy to use all the augmented reality features of iOS 11. 

#####  [Check out the example app using react-arkit](https://github.com/icanb/react-arkit-example)

<img src="https://user-images.githubusercontent.com/803072/29694758-684de644-88f3-11e7-8c6d-bf7b55de44a3.PNG" style="display:inline';" width="200" alt="Custom model with plane detection">


_iOS Only, until Android comes up with their version of ARKit_

[![npm version](https://img.shields.io/npm/v/react-arkit.svg?style=flat)](https://www.npmjs.com/package/react-arkit)
[![npm downloads](https://img.shields.io/npm/dm/react-arkit.svg?style=flat)](https://www.npmjs.com/package/react-arkit)

Library for create augmented reality applications with JavaScript, using declarative UI components in ReactJS. Allows for any geometric shape, as well as custom 3D models.


## Install

Install the package, inside your React-Native app:

```bash
$ npm install react-arkit --save
```

Link the package to the existing app

```bash
react-native link react-native-arkit
```

Make sure that your app allows camera usage. ([How?](https://github.com/icanb/react-arkit/blob/master/SETUP.md#camera-permissions))
Make sure that your app supports Swift runtime. ([How?](https://github.com/icanb/react-arkit/blob/master/SETUP.md#making-the-project-swift-compatible))

Or just clone the [example app](https://github.com/icanb/react-arkit-example) and make edits on it.

## Usage

Import the ``ARScene`` component, and other node types that you need:

```javascript
import ARScene, { ARBoxNode, ARTextNode, ARNode } from 'react-arkit';
```

Define a scene:

```javascript
<ARScene style={{ height: 400, width: 300 }}>
{`Other AR nodes`}
</ARScene>
```

Add any node in it and manipulate freely:

```javascript
<ARScene style={{ height: 400, width: 300 }}
    debugEnabled
    onPlaneDetected={({id, alignment, node, center, extent}) => {
        console.log("Detected plane:", id);
    }}
    onPlaneUpdated={({id, alignment, node, center, extent}) => {
        console.log("Updated plane:", id);
    }}>
    <ARBoxNode
        geoposition={{x: -0.5, y: 0.1, z:-1.0}}
        size={{ height: 0.05,
                width: 0.05,
                length: 0.05,
                chamferRadius: 0.01 }}
        color='#00F'/>
    <ARNode
        modelAssetPath={'Art.scnassets/billboard.dae:Billboard'}
        geoposition={{x: 0, y: 0.1, z:-1.0}}/>
    <ARTextNode
      text={'AR is Awesome'}
        color='#FF0'
        size={{ fontSize: 0.2, depth: 0.2 }}
        geoposition={{x: 0.5, y: 0.1, z:-1.0}}/>
</ARScene>
```

Refer to the [example app](https://github.com/icanb/react-arkit-example/blob/master/index.ios.js) for more detailed sample implementations.

## [Documentation](DOCUMENTATION.md)


* #### [ARScene](DOCUMENTATION.md#arscene)
    Parent object that represents object represents a three-dimensional scene and its contents. (Props: `debugEnabled`, `run`)

* #### [ARNode](DOCUMENTATION.md#arnode)
    A structural element of in the 3D coordinate space, representing a position and transform in based on the parent node\scene. Can also represent custom 3d models as well as basic geometric shapes. (Props: `geoposition`, `size`, `color`, `modelAssetPath`)

    * ##### [ARBoxNode](DOCUMENTATION.md#arboxnode)
        Node that has the box geometry. Subclass of ARNode.

    * ##### [ARSphereNode](DOCUMENTATION.md#arspherenode)
        Node that has the sphere geometry. Subclass of ARNode.

    * ##### [ARTextNode](DOCUMENTATION.md#artextnode)
        Node that has the shape of a given text. Subclass of ARNode. (Additional prop: `text`)


## Contributing

Any kind of contributions are very welcome. This library is still very bare-bones and has a lot of room for improvement. Please make sure to read the [Contributing Guide](CONTRIBUTING.md) and feel free to make pull-requests!

For issues or feedback, please create an [Issue](https://github.com/icanb/react-arkit/issues/new). For questions, or help, please get in touch with @icanb.
