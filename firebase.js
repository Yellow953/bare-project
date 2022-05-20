import firebase from 'firebase/compat/app';
import 'firebase/compat/auth';
import 'firebase/compat/firestore';

// Your web app's Firebase configuration
const firebaseConfig = {
  apiKey: "AIzaSyCKijOCJLjZoIeLYXh3mL9vnbE3K_XhdLQ",
  authDomain: "bare-project-953.firebaseapp.com",
  projectId: "bare-project-953",
  storageBucket: "bare-project-953.appspot.com",
  messagingSenderId: "729032554938",
  appId: "1:729032554938:web:24acb6a4a67ae3ae810583"
};

// Initialize Firebase
let app;
if (firebase.apps.length === 0) {
  app = firebase.initializeApp(firebaseConfig);
} else {
  app = firebase.app()
}

const auth = firebase.auth()

export { auth };