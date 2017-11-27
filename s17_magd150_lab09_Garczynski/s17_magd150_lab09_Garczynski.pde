import processing.video.* ;
import processing.sound.* ;

Movie movie ;

SoundFile song ;
float volume = 0.5 ;
  
PImage photo ;

void setup() {
  size(2000, 1000) ;
  
  // Set the video
  movie = new Movie(this, "video.mp4") ;
  movie.loop() ;
  
  // set the sound
  song = new SoundFile(this, "owl.wav") ;
  song.loop() ;
  song.amp(1.5) ;
  
  // set the picture
  photo = loadImage("fairy.png") ;
} // end setup

void movieEvent(Movie movie) {
  movie.read();
} // end movieEvent

void draw() {
  // make the video purple (A superior color)
  tint(200, 0, 204);
  image(movie, 0, 0);
  
  // make the fairy dark to match the video
  tint(20);
  image(photo, 770, 475, 100, 200) ;
} // end draw

/*
  Okay so now I want to describe my thought process
  First, I chose the video of the lake because it reclected the tree like a mirror
  I chose not to have the fairy display in the water because Fey creatures are secretive
  and a mirror can by symbolic for openness, which a fiary would not be.
  I also chose the water to be a mirror to demonstrate a mirror to another dimension
*/