/*
 * Copyright (C) 2013 ENTERTAILION, LLC. All rights reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except
 * in compliance with the License. You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software distributed under the License
 * is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express
 * or implied. See the License for the specific language governing permissions and limitations under
 * the License.
 */
 
 // Original code: https://groups.google.com/forum/?fromgroups=#!searchin/simple-openni-discuss/XnVSwipeDetector/simple-openni-discuss/dDV8UZDpTgg/nTlOZOk9MMAJ

// see http://simple-openni.googlecode.com/svn/trunk/SimpleOpenNI/dist/all/SimpleOpenNI/documentation/SimpleOpenNI/XnVSwipeDetector.html
class SwipeDetector extends XnVSwipeDetector {
  
  SwipeDetector() {    
    RegisterSwipeRight(this);
    RegisterSwipeLeft(this);
    RegisterSwipeUp(this);
    RegisterSwipeDown(this);
    SetSteadyDuration(300);
    SetYAngleThreshold(0.1);
    SetMotionTime(500);
  }
  
  void onSwipe(float vel, float angle) {
    println("SWIPE v:"+vel+" a:"+angle); 
  }
  
  void onSwipeUp(float vel, float angle) {
    println("SWIPE UP v:"+vel+" a:"+angle);
    
   if (rightUp && leftUp) {
      if (rampClient!=null) {
        //rampClient.send("com.entertailion.android.kinect","\"command\":\"up\"");
        println("sent code");
      }
    } else {
      println("rightUp="+rightUp+" leftUp="+leftUp);
    }
  }
  
  void onSwipeDown(float vel, float angle) {
    println("SWIPE DOWN v:"+vel+" a:"+angle);
    if (rightUp && leftUp) {
      if (rampClient!=null) {
        //rampClient.send("com.entertailion.android.kinect","\"command\":\"down\"");
        println("sent code");
      }
    } else {
      println("rightUp="+rightUp+" leftUp="+leftUp);
    }
  }
  
  void onSwipeLeft(float vel, float angle) {
    println("SWIPE LEFT v:"+vel+" a:"+angle);
    if (rightUp && leftUp) {
      if (rampClient!=null) {
        ///anymoteSender.sendKeyPress(Code.KEYCODE_BACK);
         //rampClient.send("com.entertailion.android.kinect","\"command\":\"left\"");
        println("send code");
      }
    } else {
      println("rightUp="+rightUp+" leftUp="+leftUp);
    }
  }
  
  void onSwipeRight(float vel, float angle) {
    println("SWIPE RIGHT v:"+vel+" a:"+angle);
    
    if (rightUp && leftUp) {
      if (rampClient!=null) {
         //rampClient.send("com.entertailion.android.kinect","\"command\":\"right\"");
        println("send code");
      }
    } else {
      println("rightUp="+rightUp+" leftUp="+leftUp);
    }
  }
}

