import React, {useState}  from 'react';
import { View, Modal, Text, StyleSheet } from 'react-native';
import { globalStyles } from '../styles/global';
import { MaterialIcons } from '@expo/vector-icons';
import LoginScreen from './login'

export default function Home({ navigation }) {
  const [modalOpen, setModalOpen] = useState(true);
  return (
    <View style={globalStyles.container}>
      <Modal visible={modalOpen}  animationType='slide'>
        <MaterialIcons 
            name='close'
            size={30}
            style={styles.close}
            onPress={() => setModalOpen(false)} 
          />
        <LoginScreen/>
      </Modal>

      <Text>Home</Text>
    </View>
  );
}

const styles = StyleSheet.create({
  close:{
    justifyContent: 'center',
    alignItems: 'center',
    marginBottom: 10,
      borderWidth: 1,
      borderColor: '#f2f2f2',
      padding: 10,
      borderRadius: 10,
      alignSelf: 'center',
  }  
});