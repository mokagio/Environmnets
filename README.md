# Automating the Project Management

> "Everything that can be automated must be automated" <br/>
- I don't remember how the guy was called

### What do we want?

We want to automate the app build, deploy, run on Simulator and device, and the execution of tests as much as possible. All coding as little as possible.

### How can we do this?

Everything starts with some Googling…

#### Using the Terminal

_Write about the_ `xcodebuild` _tool._ [Apple Documentation](https://developer.apple.com/library/mac/#documentation/Darwin/Reference/ManPages/man1/xcodebuild.1.html)

[This blog post](http://www.stewgleadow.com/blog/2011/11/05/installing-ios-apps-on-the-device-from-the-command-line/) shows how to run an app on a device using the terminal and a tool called [Fruitstrap](https://github.com/ghughes/fruitstrap).

It's also worth taking a look, and maybe forking, [this](https://github.com/ciryon/xcodebuild-script/blob/master/xbuild.sh) github project, with a set of scripts to buil and run the app, and also run the tests from the terminal.

#### Application Environments

If you're familiar with the awesomeness of developing for the web with [Ruby of Rails](http://rubyonrails.org/), you'll be familiar with the concept of environment.

_An environment is…_

Xcode "Project > Info > Configurations" are a sort of environment. 

##### The manual way

[This answer](http://stackoverflow.com/questions/10497552/how-to-configure-independent-sets-of-runtime-settings-in-xcode#10498308) on Stackoverflow covers in a well detailed way how to manually add enviromnents and parameters using the Xcode project editor GUI.

The possibilities are unlimited, but there's a lot of manual work to do. Too many clicks!

##### The too-much-coding way

In [this blog post](http://blog.carbonfive.com/2011/06/20/managing-ios-configurations-per-environment-in-xcode-4/) one of the developers ad [Carbon Five](http://www.carbonfive.com/) introduces the approach he uses to have multiple environments for their apps.

It's all done it 4 easy steps:

1. Add a _Configuration_ parameter to the `Info.plist` file.
2. Create an `Environments.plist` file where to store all the enviromnent based configurations.
3. Implement a **singelton class** that will load the envirnoment specific configurations.
4. Add additional "Build Configurations" to the project, one per environment.

Xcode command line build tool has a parameter named “configuration”. This will allow us to build our application per environment. I.e. `xcodebuild -configuration Debug`.

Everything's really sweet, except for the step 3. We don't want to add a class to our project, we want to code as little as possible.

##### Is there another way?

Well apparently there is! Scrolling down the Carbon Five post there's a link to a [blog post](http://respectthecode.tumblr.com/post/16167385557/xcode-4-and-xcconfig-files) about the `.xcconfig` files.

Configuring this guys is tricky in the beginning, but we don't get scared so easily!

This is the approach that I explore in this project
