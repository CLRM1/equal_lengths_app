import ReactDOM from 'react-dom';
import AudioComponent from './components/AudioComponent';

document.addEventListener('DOMContentLoaded', () => {
  ReactDOM.render(
    <AudioComponent />,
    document.getElementById('react-container')
  );
});