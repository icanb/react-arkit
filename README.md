# React ARKit

AR library for React-Native, based on ARKit. (_iOS Only - Implemented in Swift_)

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

Make sure that your app allows camera usage. (How?)
Make sure that your app supports Swift runtime. (How?)


## Usage

Import the ``ARScene`` component, and other node types that you need:

```javascript
import ARScene, { ARBoxNode } from 'ARReactiveTwo';
```

Define a scene:

```javascript
<ARScene style={{ height: 400, width: 300 }}>

</ARScene>
```

Add any node in it and manipulate freely:

```javascript
<ARScene style={{ height: 400, width: 300 }}>
    <ARBoxNode
        geoposition={{x: 0.2, y: 0.1, z:-1.0}}
        size={boxSize}
        color='#00F'/>
    <ARNode
        modelAssetPath={'Art.scnassets/billboard.dae:Billboard'}
        geoposition={{x: -1, y: -1, z:-1}}/>
</ARScene>
```

## Documentation

| Component | Description |
|------|-------------|
| ``ARScene`` |  Parent object that represents object represents a three-dimensional scene and its contents.. |
| _Props_ | `run` |
| ``ARNode`` | A structural element of in the 3D coordinate space, representing a position and transform in based on the parent node\scene. |
|  _Props_ | `geoposition`, `size`, `color`, `modelAssetPath`|
| ``ARBoxNode`` | Node that has the box geometry. |
| ``ARSphereNode`` | Node that has the sphere geometry. |

[Detailed Documentation](DOCUMENTATION.MD)

## Contributing

Any kind of contributions are very welcome. This library is still very bare-bones and has a lot of room for improvement. Please make sure to read the [Contributing Guide](CONTRIBUTING.MD) and feel free to make pull-requests!

For issues or feedback, please create an [Issue](https://github.com/icanb/react-arkit/issues/new). For questions, or help, please get in touch with @icanb.




