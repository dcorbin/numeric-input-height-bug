import {requireNativeComponent} from 'react-native';
import React from 'react';

export interface NumericInputProps {}

export function NumericInput(props: NumericInputProps) {
  return <PGLNumericInput {...props} />;
}
const PGLNumericInput = requireNativeComponent('PGLNumericInput');
