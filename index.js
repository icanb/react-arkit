import React from 'react';
import PropTypes from 'prop-types';
import { requireNativeComponent } from 'react-native';

var ARSceneView = requireNativeComponent('ARSceneView', ARSceneView);
var ARNodeView = requireNativeComponent('ARNodeView', ARNode);
var ARBoxNodeVew = requireNativeComponent('ARBoxNodeView', ARBoxNodeVew);
var ARSphereNodeView = requireNativeComponent('ARSphereNodeView', ARSphereNodeView);

class ARScene extends React.Component {
  render() {
    return <ARSceneView {...this.props} />;
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

ARScene.propTypes = {
  debugEnabled: PropTypes.bool,
};

ARNode.propTypes = {
  modelUrl: PropTypes.string,
  size: PropTypes.object,
  geoposition: PropTypes.object
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

export default ARScene;
export { ARNode, ARBoxNode, ARSphereNode };
