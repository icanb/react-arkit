import { requireNativeComponent } from 'react-native';
import React, { PropTypes } from 'react';

var ARSceneView = requireNativeComponent('ARSceneView', ARSceneView);
var ARNodeView = requireNativeComponent('ARNodeView', ARNode);
var ARBoxNodeVew = requireNativeComponent('ARBoxNodeView', ARBoxNodeVew);
var ARSphereNodeView = requireNativeComponent('ARSphereNodeView', ARSphereNodeView);
var ARTextNodeView = requireNativeComponent('ARTextNodeView', ARTextNodeView);


class ARScene extends React.Component {
  constructor(props) {
    super(props)
    this._onPlaneDetected = this._onPlaneDetected.bind(this);
    this._onPlaneUpdated = this._onPlaneUpdated.bind(this);
  }
  
  _onPlaneDetected(event) {
    if (!this.props.onPlaneDetected) { return; }  
    this.props.onPlaneDetected(event.nativeEvent);
  }
  
  _onPlaneUpdated(event) {
    if (!this.props.onPlaneUpdated) { return; }  
    this.props.onPlaneUpdated(event.nativeEvent);
  }

  render() {
    return <ARSceneView
              {...this.props}
              onPlaneDetected={this._onPlaneDetected}
              onPlaneUpdated={this._onPlaneUpdated} />;
  }
}

class ARNode extends React.Component {
  render() {
    return <ARNodeView {...this.props} />;
  }
}

class ARBoxNode extends React.Component {
  render() {
    return <ARBoxNodeVew {...this.props} />;
  }
}

class ARSphereNode extends React.Component {
  render() {
    return <ARSphereNodeView {...this.props} />;
  }
}

class ARTextNode extends React.Component {
  render() {
    return <ARTextNodeView {...this.props} />;
  }
}


ARScene.propTypes = {
  debugEnabled: PropTypes.bool,
  run: PropTypes.bool,
  onPlaneDetected: PropTypes.func,
  onPlaneUpdated: PropTypes.func
};

ARNode.propTypes = {
  modelUrl: PropTypes.string,
  size: PropTypes.object,
  geoposition: PropTypes.object,
  color: PropTypes.string
}

ARBoxNode.propTypes = {
  size: PropTypes.object,
  color: PropTypes.string,
  geoposition: PropTypes.object
}

ARSphereNode.propTypes = {
  size: PropTypes.object,
  color: PropTypes.string,
  geoposition: PropTypes.object
}

ARTextNode.propTypes = {
  size: PropTypes.object,
  color: PropTypes.string,
  geoposition: PropTypes.object,
  text: PropTypes.string.isRequired,
  font: PropTypes.string
}


export default ARScene;
export { ARNode, ARBoxNode, ARSphereNode, ARTextNode };
