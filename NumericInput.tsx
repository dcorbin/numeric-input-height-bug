import {requireNativeComponent} from 'react-native';
import React, { HTMLAttributes, SyntheticEvent } from "react";

export interface NumericInputProps extends HTMLAttributes<SyntheticEvent>{}

export function NumericInput(props: NumericInputProps) {
  return <PGLNumericInput {...props} />;
}
const PGLNumericInput = requireNativeComponent('PGLNumericInput');
