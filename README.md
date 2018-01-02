# BasicApp using Adsum

### Features

This BasicApp Shows code examples of :

- ADSMapDelegate
- AdsumCoreView
- ADSDataManager
	- ADSOptions

This BasicApp Example shows the bare integration of our SDK.
It will show the map of the default floor.

### Basic Info

Swift Version: 3.2

### Prerequisites

You need to run your project on a physical device

### Installing

Download our latest SDK from https://github.com/AdactiveSAS/adsum-mobile-sdk.git
Include it on your Xcode Project
Import Adsum in swift's files where you want to use Adsum

## Running the tests

- Your ViewController should be a subclass of ADSMapDelegate

- Declare "mapView : AdsumCoreView?"

In viewDidLoad :
Create an ADSOption with your apiKey, site, and device

## Screenshot

<div align="left" style="border:1px solid black">
     <img width="45%" src="/BasicSwiftExampleScreenshot.jpeg" alt="iOS Screenshot" title="iOS Screenshot"</img>
</div>

