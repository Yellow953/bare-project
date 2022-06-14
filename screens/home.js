import React, {useState}  from 'react';
import { View, Modal, Text, StyleSheet, ScrollView } from 'react-native';
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

      <ScrollView>
        <View style={styles.section1}>
          <Text style={styles.primaryText}>
            Bare Project is a project management application for professionals 
            who need smart objective information without the data clutter.
          </Text>
          <Text style={styles.secondaryText}>
            And a calculated balance between individual project and cross-project 
            tracking.
          </Text>
        </View>
        
        <View style={styles.section2}>
          <Text style={styles.primaryText}>Clear Deliverables</Text>
          <Text style={styles.secondaryText}>Manage with the end in mind. Regardless with the number of 
            tasks carried, if they don't translate into clear tangible results,
            tracking them is time wasted. BareProject leads with deliverables 
            and allows owners to carry on the necessary activities to complete work,
            making it lean operation.
          </Text>
          {/* <Image></Image> */}
        </View>
      </ScrollView>

    </View>
  );
}

const styles = StyleSheet.create({
  innerContainer:{
    flex: 1,
  },
  close:{
    justifyContent: 'center',
    alignItems: 'center',
    marginBottom: 10,
    borderWidth: 1,
    borderColor: '#f2f2f2',
    padding: 10,
    borderRadius: 10,
    alignSelf: 'center',
  },
  section1:{
    backgroundColor: '#33ccff',
    paddingHorizontal: 20,
    paddingVertical: 100,
    margin: 0,
  },
  primaryText:{
    fontWeight: 'bold',
    fontSize: 30,
    textAlign: 'center',
  },
  secondaryText:{
    fontSize: 20,
    textAlign: 'center',
    marginVertical: 25,
  },
  section2:{
    backgroundColor: 'grey',
    paddingHorizontal: 20,
    paddingVertical: 100,
    margin: 0,
  },
});