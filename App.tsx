/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 *
 * @format
 */

import React from 'react';
import {SafeAreaView, StyleSheet, Text, TextInput, View} from 'react-native';
import {NumericInput} from './NumericInput';

function App(): JSX.Element {
  return (
    <SafeAreaView>
      <View style={styles.row}>
        <Text style={styles.label}>Numeric Input</Text>
        <NumericInput style={styles.input} />
      </View>
      <View style={styles.row}>
        <Text style={styles.label}>TextInput</Text>
        <TextInput inputMode={'numeric'} style={styles.input} />
      </View>
    </SafeAreaView>
  );
}
const styles = StyleSheet.create({
  label: {flex: 2, fontSize: 24},
  input: {
    flex: 1,
    borderWidth: 1,
    fontSize: 24,
    // height: '100%',
  },
  row: {
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'space-evenly',
  },
});

export default App;
