import React, {useState}  from 'react';
import { View, Modal, Text, StyleSheet, ScrollView, Image } from 'react-native';
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
          <Image 
            style={styles.image}
            source={require('../assets/images/img1.jpeg')}/>
        </View>

        <View style={styles.section3}>
          <Text style={styles.primaryText}>Simple Administration</Text>
          <Text style={styles.secondaryText}>BareProject will only ask you for less than a handful of
           data points and fills the gap with calculated objective information that makes most impact.
            We make a pledge that BareProject gives you more than you give it. Record maintenance and 
            administering is always a breeze.
          </Text>
          <Image 
            style={styles.image}
            source={require('../assets/images/img2.jpeg')}/>
        </View>

        <View style={styles.section4}>
          <Text style={styles.primaryText}>Transparent Ownership</Text>
          <Text style={styles.secondaryText}>Projects and deliverables are viewable by the whole team 
          for true collaboration and enforeced sense of support. You see your peer's assigned work. 
          If any is behind, you can nudge her to take a closer look before it is too late. And you 
          can expect the same from others.
          </Text>
          <Image 
            style={styles.image}
            source={require('../assets/images/img3.jpeg')}/>
        </View>

        <View style={styles.section5}>
          <Text style={styles.primaryText}>Smart Reporting</Text>
          <Text style={styles.secondaryText}>The most valuable insights are there and ready for 
          consumption without prior setup and customizations. Get quick access to velocity charts, 
          forecasted work, lead time, and activity measure across any combination of projects and owners.
          </Text>
          <Image 
            style={styles.image}
            source={require('../assets/images/img4.jpeg')}/>
        </View>

        <View style={styles.footer}>
          <Text style={styles.center}>{'\u00A9'} 2022 Fanooce LLC</Text>
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
  section3:{
    backgroundColor: 'lightgrey',
    paddingHorizontal: 20,
    paddingVertical: 100,
    margin: 0,
  },
  section4:{
    backgroundColor: 'grey',
    paddingHorizontal: 20,
    paddingVertical: 100,
    margin: 0,
  },
  section5:{
    backgroundColor: 'lightgrey',
    paddingHorizontal: 20,
    paddingVertical: 100,
    margin: 0,
  },
  footer:{
    backgroundColor: '#33ccff',
    paddingHorizontal: 20,
    paddingVertical: 20,
    margin: 0,
  },
  center:{
    textAlign:'center',
  },
  image:{
    width: '100%',
    height: 300,
    resizeMode: 'stretch',
    padding: 0,
    margin: 0,
  },
});