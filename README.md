# ActionScript 3 hitTestObject() Inconsistent Behavior

This repository demonstrates an uncommon issue with the `hitTestObject()` method in ActionScript 3.  Under certain conditions, `hitTestObject()` may return unexpected results, leading to incorrect collision detection.

## Problem
The provided `checkCollision` function appears simple.  However, `hitTestObject()`'s reliability hinges on several factors including object registration points and display object hierarchy. If objects aren't appropriately positioned, positioned offscreen or unexpectedly rotated, `hitTestObject()` might fail to detect collisions even when visually apparent.

## Solution
The solution involves using a more robust collision detection approach such as pixel-perfect collision detection. This involves checking the alpha values of individual pixels within the bounding boxes of the two objects.  While this is more computationally expensive, it significantly increases accuracy.

## How to reproduce the bug:
1. Create two MovieClip instances.
2. Position them on the stage so they appear to overlap.
3. If the results of hitTestObject are inconsistent with visual observation then the bug is present. 
