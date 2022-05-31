import React from 'react';
import { View, Text } from 'react-native';
import { globalStyles } from '../styles/global';

export default function Logout() {
  return (
    <View style={globalStyles.container}>
      <Text>Logout Screen</Text>
    </View>
  );
}