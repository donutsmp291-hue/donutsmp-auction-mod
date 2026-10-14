#!/bin/sh
# Needs JDK 21 and Gradle on PATH.
gradle wrapper --gradle-version 8.12 && ./gradlew build && echo "Your jar: build/libs/donutauction-1.0.0.jar"
