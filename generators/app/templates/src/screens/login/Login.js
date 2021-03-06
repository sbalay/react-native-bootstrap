import React from 'react';
import { View, Text, TextInput, TouchableOpacity } from 'react-native';

import { transparent } from '../../utils/colors';
import styles from './Login.styles';

export default function Login({ onLogin }) {
  return (
    <View style={styles.container}>
      <View style={styles.formElementContainer}>
        <TextInput underlineColorAndroid={transparent} placeholder={'Username'} style={styles.formElement} />
      </View>
      <View style={styles.formElementContainer}>
        <TextInput underlineColorAndroid={transparent} placeholder={'Password'} style={styles.formElement} />
      </View>
      <TouchableOpacity onPress={onLogin} style={styles.formButton}>
        <Text>Login!</Text>
      </TouchableOpacity>
    </View>
  );
}

Login.propTypes = {
  onLogin: React.PropTypes.func.isRequired
};
