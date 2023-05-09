/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 *
 * @format
 */

import React from 'react';
import { SafeAreaView, StyleSheet, Text, TextInput, View } from "react-native";
import {NumericInput} from './NumericInput';

function App(): JSX.Element {
  return (
    <SafeAreaView>
      <View
        style={{
          flexDirection: 'row',
          alignItems: 'center',
          justifyContent: 'space-evenly',
        }}>
        <Text style={{flex: 2, fontSize: 24}}>Numeric Input</Text>
        <NumericInput style={styles.input} />
      </View>
      <View
        style={{
          flexDirection: 'row',
          alignItems: 'center',
          justifyContent: 'space-evenly',
        }}>
        <Text style={{flex: 2, fontSize: 24}}>TextInput</Text>
        <TextInput
          style={styles.input}
          onChange={e => {
            e.preventDefault();
            e.stopPropagation();
          }}
          onKeyPress={e => {
            e.preventDefault();
            e.stopPropagation();
            return false;
          }}
        />
      </View>
    </SafeAreaView>
  );
}
const styles = StyleSheet.create({
  input: {
    flex: 1, borderWidth: 1, fontSize: 24, height: 32
  },
});


export default App;
