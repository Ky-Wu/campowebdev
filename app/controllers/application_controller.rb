class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  DISPLAY_TEXTS = ["We make websites and stuff.",
                   "Is this your favorite website?",
                   "We make stuff like websites.",
                   "Always recruiting.",
                   "Looking for anyone who has a good sense of color.",
                   "I met a spider once. He was a cool dude, wanted to be a web developer.",
                   "A user interface is like a joke. If you have to explain it, it's not that good.",
                   "Web development, black magic, what's the difference?",
                   "Either we feel like gods or we have no idea what we're doing. Sometimes both.",
                   "Half the struggle is figuring out why a box on the page won't center properly.",
                   "Never give up. Because then the bugs wins.",
                   "Web development for high schoolers.",
                   "We make people for websites. That came out wrong.",
                   "We offer free web development services for Campolindo.",
                   "In this club, you will learn that 'Inspect Element' isn't hacking."]
end
