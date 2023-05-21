import React, { useState, useEffect } from 'react';
import MeditationSound from './equal_breaths.mp3'

const AudioComponent = () => {
  const [audio, setAudio] = useState(null);

  useEffect(() => {
    const audioFile = new Audio(MeditationSound);
    setAudio(audioFile);
  }, []);

  const playAudio = () => {
    audio.play();
  };

  return (
    <div>
      <button className='buttons' onClick={playAudio}>▶</button>
    </div>
  );
};

export default AudioComponent;