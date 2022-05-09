import React from 'react';
import { StyleSheet, Text, View, Image } from 'react-native';
import { MaterialIcons } from '@expo/vector-icons';
import { FontAwesome } from '@expo/vector-icons';

export default function Header({ navigation }) {

  const openMenu = () => {
    navigation.openDrawer();
  }

  return (
    <View style={styles.header}>
      <MaterialIcons name='menu' size={30} onPress={openMenu} style={styles.icon} />
      <View style={styles.headerTitle}>
        <Image source={require('../assets/logo.png')} style={styles.headerImage} />
      </View>
      <FontAwesome name="search" size={30} color="black" style={styles.icon} />
    </View>
  );
}

const styles = StyleSheet.create({
  header: {
    flex:1,
    width: '100%',
    height: 60,
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'space-between',
  },
  headerTitle: {
    flexDirection: 'row'
  },
  headerImage: {
    width: 200,
    height: 50,
    marginTop: 15
  },
});