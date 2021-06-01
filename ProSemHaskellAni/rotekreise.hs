#!/usr/bin/env stack
-- stack runghc --package reanimate
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE QuasiQuotes       #-}
module Main (main) where

import Reanimate
import Reanimate.Scene
import Reanimate.Animation
import Reanimate.Builtin.Documentation
import Reanimate.ColorComponents

main :: IO ()
main = reanimate $  docEnv $ scene $  do
  --s <- fork $ newSpriteA drawCircle 
 -- spriteTween s 1 $ \val -> translate (screenWidth*0.3*val) 0
  newSpriteSVG $  mkBackground  "blue"  
  a <- newSpriteSVG $ withFillOpacity 1 $  translate (-2) (-2) $ withFillColor "red" $ mkCircle 1
  spriteTween a 1 $ \val -> translate (screenWidth*0.3*val) (0)
  spriteTween a 1 $ \val -> translate (-(screenWidth*0.3*val)) (0)
