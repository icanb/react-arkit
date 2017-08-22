# React ARKit Documentation

<br>

## ARScene

Parent object that represents object represents a three-dimensional scene and its contents. All the ARNodes must be wrapped around by an ARScene.

### Props

| Prop | Type | Default | Description |
|---|---|---|---|
| `debugEnabled` | `Boolean` | `false` | Debug modes show useful information such as the feature points.
| `run` | `Boolean` | `true` | Whether the session is running. Session can be paused by setting this property to false.


### Instance methods

| Method Name | Arguments | Notes
|---|---|---|
|`onPlaneDetected`| Object <br> <small>{ alignment\<string\>, center:{x,y,z}, extent: {x,y,z},node:{x,y,z}, target \<number\> } | Returns the details when a new plane is detected |
|`onPlaneUpdated`| Object <br> <small>{ alignment\<string\>, center:{x,y,z}, extent: {x,y,z},node:{x,y,z}, target \<number\> } | Returns the details when a detected plane is updated|


## ARNode

A structural element of in the 3D coordinate space, representing a position and transform in based on the parent node\scene. Can also represent custom 3d models as well as basic geometric shapes. 

### Props

| Prop | Type | Default | Description |
|---|---|---|---|
| `geoposition` | `Object` | _Required_ | Position of the object in 3D space. <br><small>e.g _{x: 0.1, y: 0.1, z: -0.1}_</small>
| `color` | `String` | `#FF0000` | Color of the object in HEX.
| `modelAssetPath` | `String` | _None_ | Path to the custom asset. [See details.](SETUP.md#adding-custom-models)


<br>

## ARBoxNode

A structural element with *box* geometry. Very similar to ARNode but with custom size/geometry.

### Props

| Prop | Type | Default | Description |
|---|---|---|---|
| `size` | `Object` | _Required_ | Geometry of the box node. <br><small>_{}_</small>
| `geoposition` | `Object` | _Required_ | Position of the object in 3D space. <br><small>e.g _{x: 0.1, y: 0.1, z: -0.1}_</small>
| `color` | `String` | `#FF0000` | Color of the object in HEX.

<br>

## ARSpherenode

A structural element with *sphere* geometry. Very similar to ARNode but with custom size/geometry.

### Props

| Prop | Type | Default | Description |
|---|---|---|---|
| `size` | `Object` | _Required_ | Geometry of the box node. <br><small> _{radius: 0.2}_ </small>
| `geoposition` | `Object` | _Required_ | Position of the object in 3D space. <br><small>e.g _{x: 0.1, y: 0.1, z: -0.1}_</small>
| `color` | `String` | `#FF0000` | Color of the object in HEX.


<br>

## ARTextNode

A structural element with Box geometry. Very similar to ARNode but with custom size/geometry.

### Props

| Prop | Type | Default | Description |
|---|---|---|---|
| `size` | `Object` | _Required_ | Geometry of text. <br><small> _{fontSize: 0.2, depth: 0.2}_ </small>
| `text` | `String` | _Required_ | Text to be displayed
| `geoposition` | `Object` | _Required_ | Position of the object in 3D space. <br><small>e.g _{x: 0.1, y: 0.1, z: -0.1}_</small>
| `color` | `String` | `#FF0000` | Color of the object in HEX.


