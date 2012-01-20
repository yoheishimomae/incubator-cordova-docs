<link rel="stylesheet" type="text/css" href="guides/style/style.css"/>
<script src="guides/jquery-1.5.1.min.js" type="text/javascript"></script>
	
<div class="tooltip bottom" style="display:none">
	<div class="inner">Text</div>
</div>

<ul class="guide stick">		
	<li class="top"></li>
	<li class="bottom"></li>
	<li><h3>Pick your platform</h3>			
		<ul class="button-picker">
			<li class="edge bottom"></li>
			<li class="edge top"></li>
			<li class="edge top-left"></li>
			<li class="edge top-right"></li>
			<li class="edge bottom-left"></li>
			<li class="edge bottom-right"></li>
			<li><a class="ios first selected" href="#ios-x4"><span></span>iOS</a></li>
			<li><a class="android" href="#android"><span></span>Android</a></li>
			<li><a class="blackberry" href="#blackberry"><span></span>Blackberry</a></li>
			<li><a class="windows" href="#wp"><span></span>Windows Phone</a></li>
			<li><a class="webos" href="#webos"><span></span>WebOS</a></li>
			<li><a class="symbian" href="#symbian"><span></span>Symbian</a></li>
		</ul>
	</li>
</ul>

<!-- android guide start-->
<ul id="guide-android" class="guide" style="display:none">		
<li class="top"></li>
<li class="bottom"></li>

<li class="video-guide"><h3>Video Tutorials:</h3>
	<div class="video-container">
		<img title="video_image" src="guides/images/v_android.jpeg" alt="" />
		<div>
			<a rel="#voverlay" href="http://www.youtube.com/v/MzcIcyBYJMA?autoplay=1" title="PhoneGap and Android quick start video using eclipse" onclick="pageTracker._trackEvent('Video', 'Play');" data-title="PhoneGap and Android quick start video using ecliplse"></a>
		</div>
		<div class="video-frame vf-top"></div><div class="video-frame vf-bottom"></div>
		<div class="video-frame vf-left"></div><div class="video-frame vf-right"></div>
	</div>
</li>

<li><h3>1. Requirements</h3>
	<ul>
		<li>Eclipse 3.4+</li>
	</ul>
	<p>There is also a <a href="http://wiki.phonegap.com/w/page/30864168/phonegap-android-terminal-quickstart">Terminal</a> version of this tutorial that doesn't use Eclipse.</p>
</li>

<li><h3>2. Install SDK + PhoneGap</h3>
	<div class="sdk-img"><img src="guides/images/sdk_eclipse.png" alt=""/></div>
	<p class="sdk-p">Download and install <a href="http://www.eclipse.org/downloads/">Eclipse Classic</a></p>
	<br/>
	<div class="sdk-img"><img src="guides/images/os_android.png" alt=""/></div>
	<p class="sdk-p">Download and install <a href="http://developer.android.com/sdk/index.html">Android SDK</a></p>
	<br/>
	<div class="sdk-img"><img src="guides/images/os_android.png" alt=""/></div>
	<p class="sdk-p">Download and install <a href="http://developer.android.com/sdk/eclipse-adt.html#installing">ADT Plugin</a></p>
	<br/>
	<div class="sdk-img"><img src="guides/images/sdk_phonegap.png" alt=""/></div>
	<p style="display:table-cell;vertical-align:middle"><a href="/download">Download</a> the latest copy of PhoneGap and extract its contents. We will be working with the Android directory.</p>
</li>

<li><h3>3. Setup New Project</h3>
	<ul>
		<li>Launch Eclipse, then under the File menu select <strong>New > Android Project</strong></li>
	</ul>
	<img src="guides/images/New Android Project.jpeg" alt="" style="margin-top:12px"/>
	<ul>
		<li>In the root directory of the project, create two new directories:
			<ul>
				<li>/libs</li>
				<li>guides/images/www</li>
			</ul>
		</li>
		<li>Copy phonegap.js from your PhoneGap download earlier to guides/images/www</li>
		<li>Copy phonegap.jar from your PhoneGap download earlier to /libs </li>
		<li>Copy xml folder from your PhoneGap download earlier to /res </li>
		<li>Make a few adjustments too the project's main Java file found in the src folder in Eclipse: (view image below)
			<ul>
				<li>Change the class's extend from <strong>Activity</strong> to <strong>DroidGap</strong></li>
				<li>Replace the <strong>setContentView()</strong> line with <strong>super.loadUrl("file:///android_asset/www/index.html");</strong></li>
				<li>Add <strong>import com.phonegap.*;</strong> </li>
				<li>Remove <strong>import android.app.Activity;</strong> </li>
			</ul>
			<br/>
			<img src="guides/images/javaSrc.jpg" alt="javaSrc"/>
		</li>
		
		<li>You might experience an error here, where Eclipse can't find phonegap-1.0.0.jar. In this case, right click on the /libs folder and go to Build Paths/ > Configure Build Paths. Then, in the Libraries tab, add phonegap-1.0.0.jar to the Project. If Eclipse is being temperamental, you might need to refresh (F5) the project once again.</li>
		<li>Right click on AndroidManifest.xml and select <strong>Open With > Text Editor</strong></li>
		<li>Paste the following permissions under versionName: (view image below) <br/>
			<div class="code-wrapper">
			<code>&lt;supports-screens<br/>
			        android:largeScreens="true"<br/>
			        android:normalScreens="true"<br/>
			        android:smallScreens="true"<br/>
			        android:resizeable="true"<br/>
			        android:anyDensity="true"<br/>
			        /&gt;<br/>
			        &lt;uses-permission android:name="android.permission.CAMERA" /&gt;<br/>
			        &lt;uses-permission android:name="android.permission.VIBRATE" /&gt;<br/>
			        &lt;uses-permission android:name="android.permission.ACCESS_COARSE_LOCATION" /&gt;<br/>
			        &lt;uses-permission android:name="android.permission.ACCESS_FINE_LOCATION" /&gt;<br/>
			        &lt;uses-permission android:name="android.permission.ACCESS_LOCATION_EXTRA_COMMANDS" /&gt;<br/>
			        &lt;uses-permission android:name="android.permission.READ_PHONE_STATE" /&gt;<br/>
			        &lt;uses-permission android:name="android.permission.INTERNET" /&gt;<br/>
			        &lt;uses-permission android:name="android.permission.RECEIVE_SMS" /&gt;<br/>
			        &lt;uses-permission android:name="android.permission.RECORD_AUDIO" /&gt;<br/>
			        &lt;uses-permission android:name="android.permission.MODIFY_AUDIO_SETTINGS" /&gt;<br/>
			        &lt;uses-permission android:name="android.permission.READ_CONTACTS" /&gt;<br/>
			        &lt;uses-permission android:name="android.permission.WRITE_CONTACTS" /&gt;<br/>   
			        &lt;uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE" /&gt;<br/>   
			        &lt;uses-permission android:name="android.permission.ACCESS_NETWORK_STATE" /&gt;
			        &lt;uses-permission android:name="android.permission.GET_ACCOUNTS" /&gt;<br/>
			        &lt;uses-permission android:name="android.permission.BROADCAST_STICKY" /&gt;</code></div></li>
		<li>Add <code>android:configChanges="orientation|keyboardHidden"</code> to the activity tag in AndroidManifest. (view image below)</li>
		<li>Add a second activity under you appliction tag in AndroidManifest. (view image below)<br/>
			<div class="code-wrapper">
				<code>
					 &lt;activity android:name="com.phonegap.DroidGap" android:label="@string/app_name" android:configChanges="orientation|keyboardHidden"&gt;
       					&lt;intent-filter&gt;
			            &lt;/intent-filter&gt;
			        &lt;/activity&gt;
				</code>
			</div>
		<img src="guides/images/manifest.jpg"  height="810" width="790" alt="manifest"/>
		</li>
	</ul>
</li>

<li><h3>4. Hello World</h3>
	<p>Now create and open a new file named <strong>index.html</strong> in the <strong>guides/images/www</strong> directory. Paste the following code:
	<br/></p>
	<div class="code-wrapper"><code>
		&lt;!DOCTYPE HTML&gt;<br/>
		&lt;html&gt;<br/>

		  &lt;head&gt;<br/>
		    &lt;title&gt;PhoneGap&lt;/title&gt;<br/>
			&lt;script type="text/javascript" charset="utf-8" src="phonegap.js"&gt;&lt;/script&gt;<br/>
		  &lt;/head&gt;<br/>

		  &lt;body&gt;<br/>
		  &lt;h1&gt;Hello World&lt;/h1&gt;<br/>

		  &lt;/body&gt;<br/>

		&lt;/html&gt;<br/>
	</code></div>
	<br/>
	*phonegap.js might need to be replaced with phonegap.&lt;VERSION NUMER&gt;.js
</li>

<li><h3>5A. Deploy to Simulator</h3>
	<ul>
		<li>Right click the project and go to <strong>Run As</strong> and click <strong>Android Application</strong></li>
		<li>Eclipse will ask you to select an appropriate AVD. If there isn't one, then you'll need to create it.</li>
	</ul>
</li>

<li><h3>5B. Deploy to Device</h3>
	<ul>
		<li>Make sure USB debugging is enabled on your device and plug it into your system. (Settings > Applications > Development)</li>
		<li>Right click the project and go to <strong>Run As</strong> and click <strong>Android Application</strong></li>
	</ul>
</li>		

<li><h3>Done!</h3>
	<p>You can also checkout more detailed version of this guide <a href="http://wiki.phonegap.com/w/page/30862722/phonegap-android-eclipse-quickstart">here</a>.</p>
</li>
</ul> 
<!-- android guide end-->

<!-- blackberry guide start-->
<ul id="guide-blackberry" class="guide" style="display:none">		
<li class="top"></li>
<li class="bottom"></li>

<li class="video-guide"><h3>Video Tutorials:</h3>
	<div class="video-container">
		<img title="video_image" src="guides/images/v_bb.jpeg" alt="" />
		<div>
			<a rel="#voverlay" href="http://www.youtube.com/v/eF0h0K0OLwI?autoplay=1" title="PhoneGap and BlackBerry Widgets quick start video" onclick="pageTracker._trackEvent('Video', 'Play');" data-title="PhoneGap and BlackBerry Widgets quick start video"></a>
		</div>
		<div class="video-frame vf-top"></div><div class="video-frame vf-bottom"></div>
		<div class="video-frame vf-left"></div><div class="video-frame vf-right"></div>
	</div>
</li>

<li><h3>1. Requirements</h3>
	<ul>
		<li>Windows XP (32-bit) or Windows 7 (32-bit and 64-bit) or Mac OSX 10.6.4+</li>
	</ul>
	<p>For 4.x devices check out <a href="http://wiki.phonegap.com/w/page/25653281/Getting%20Started%20with%20PhoneGap-BlackBerry%20with%20the%20Latest%20Environment">this guide</a>.</p>
</li>

<li><h3>2. Install SDK + PhoneGap</h3>

	<div class="sdk-img"><img src="guides/images/sdk_java.png" alt=""/></div>
	<p class="sdk-p">(Windows Only) Download and install <a href="http://www.oracle.com/technetwork/java/javase/downloads/index.html#jdk">Sun JDK</a> (32-Bit Version). Add it to your PATH variable.</p>
	<br/>
	<div class="sdk-img"><img src="guides/images/sdk_apache-ant.png" alt=""/></div>
	<p class="sdk-p">(Windows Only) Download and extract <a href="http://ant.apache.org/bindownload.cgi">Apache Ant</a>. Add it to your PATH variable.</p>
	<br/>
	<div class="sdk-img"><img src="guides/images/os_bb.png" alt=""/></div>
	<p class="sdk-p">Download <a href="https://bdsc.webapps.blackberry.com/html5/download/sdk">BlackBerry WebWorks Smartphone SDK</a> for BlackBerry development and/or <a href="https://bdsc.webapps.blackberry.com/html5/download/sdk">BlackBerry WebWorks Tablet OS SDK</a> for Playbook development. Keep note of the directories you install these SDKs.</p>
	<br/>
	<div class="sdk-img"><img src="guides/images/sdk_phonegap.png" alt=""/></div>
	<p style="display:table-cell;vertical-align:middle"><a href="/download">Download</a> the latest copy of PhoneGap and extract its contents to a location of your choice.</p>
</li>

<li><h3>3. Setup New Project</h3>
	<ul>
		<li>Open up a command prompt/terminal and navigate to where you extracted PhoneGap. CD into the PhoneGapBlackBerry directory.</li>
		<li>Create a PhoneGap BlackBerry and PlayBook project. Type <code>ant create -Dproject.path=</code>followed by the location you wish to create your project into the command prompt/terminal.</li>
		<li>Change to the newly created directory located at <code>C:\Dev\bbw\sample</code>.</li>
		<li>Open up the project.properties file with your favourite editor and change the lines <code>BlackBerry.bbwp.dir=</code> and <code>PlayBook.bbwp.dir=</code> to equal the respective install locations of the SDKs you downloaded earlier.</li>
	</ul>
</li>

<li><h3>4. Hello World</h3>
	<p>Build the PhoneGap sample project by typing <code>ant <strong>target</strong> build</code> in your command prompt/terminal while you are in your project's directory. Replace the target with either blackberry or playbook. Note this is the sample PhoneGap project and not a basic hello world application. You can go edit the index.html file located in the www directory of your project to make it say Hello World if you wish.</p>
</li>

<li><h3>5A. Deploy to Simulator (Windows Only)</h3>
	<ul>
		<li>While in your project directory, in command prompt/terminal type <code>ant <strong>target</strong> load-simulator</code>. Replace the target with either blackberry or playbook.</li>
		<li>Press the BlackBerry button on the simulator, go to downloads and you should see your app loaded there.</li>
	</ul>
</li>

<li><h3>5B. Deploy to Device (Windows and Mac)</h3>
	<ul>
		<li>You have to have your signing keys from RIM by filling out this <a href="https://www.blackberry.com/SignedKeys/">form</a>.</li>
		<li>While in your project directory, in command prompt/terminal type <code>ant <strong>target</strong> load-device</code>. Replace the target with either blackberry or playbook.</li>
		<li>Press the BlackBerry button on the simulator, go to downloads and you should see your app loaded there.</li>
	</ul>
</li>		

<li><h3>Done!</h3>
	<p>You can also checkout more detailed version of this guide <a href="http://wiki.phonegap.com/w/page/31930982/Getting-Started-with-PhoneGap-BlackBerry-WebWorks">here</a>.</p>
</li>
</ul> 
<!-- blackberry guide end-->

<!-- ios guide start-->
<ul id="guide-ios-x4" class="guide">		
<li class="top"></li>
<li class="bottom"></li>

<li class="video-guide"><h3>Video Tutorials:</h3>
	<div class="video-container">
		<img title="video_image" src="guides/images/v_ios.jpeg" alt="" />
		<div>
			<a rel="#voverlay" href="http://www.youtube.com/v/R9zktJUN7AI?autoplay=1" title="PhoneGap Installer - Xcode 4 Template" onclick="pageTracker._trackEvent('Video', 'Play');" data-title="PhoneGap Installer - Xcode 4 Template"></a>
		</div>
		<div class="video-frame vf-top"></div>
		<div class="video-frame vf-bottom"></div>
		<div class="video-frame vf-left"></div>
		<div class="video-frame vf-right"></div>
	</div>
</li>


<li><h3>1. Requirements</h3>
	<ul>
		<li>Intel-based computer with Mac OS X Snow Leopard (10.6)</li>
	</ul>
	<p>Necessary for Installing on Device:</p>
	<ul>
		<li>An Apple iOS device (iPhone, iPad, iPod Touch)</li>
		<li>iOS developer certification</li>
	</ul>
</li>

<li><h3>2. Install SDK + PhoneGap</h3>
	<div class="sdk-img"><img src="guides/images/sdk_xcode.png" alt=""/></div>
	<p class="sdk-p">Download and install Xcode from <a href="http://developer.apple.com">Apple Developer Portal</a> (Membership required)</p>
	<br/>
	<div class="sdk-img"><img src="guides/images/sdk_phonegap.png" alt=""/></div>
	<p style="display:table-cell;vertical-align:middle"><a href="/download">Download</a> the latest copy of PhoneGap and extract its contents. Navigate to the iOS directory and run the installer until completion.</p>
</li>

<li><h3>3. Setup New Project</h3>
	<ul>
		<li>Launch Xcode, then under the File menu select <strong>New</strong> and then <strong>New Project...</strong></li>
		<li>Select <strong>PhoneGap-based Application</strong> from the list of templates</li>
	
	</ul>
	<img src="guides/images/XCode4-templates.png" width="569" height="473" alt=""/>
	<ul>
		<li>Select the <strong>Next</strong> button, Fill in the "Product Name" &amp; "Company Identifier" for your app</li>
	</ul>
	<img src="guides/images/xcode4-name your app.png" width="569" height="473" alt=""/>
	<ul>
		<li>Choose a directory to store your app</li>
		<li>You should see your project in Xcode 4 now. Press the <strong>Run</strong> button in the top left corner. Your build should succeed and launch in the simulator</li>
		<li>You should see a error in your simulator informing you index.html was not found</li>
		<li>To fix this, we need to copy the <strong>www</strong> directory into the project. Right click on the project in the left navigation window and click show in finder</li>
		<li>In Finder, you should see the <strong>www</strong> directory beside your project</li>
		<li>Next step is <strong>IMPORTANT</strong>! Drag the <strong>www</strong> folder into Xcode 4. You can't just drag the www folder into your app's folder. It needs to be dragged into Xcode 4!! In my case I would drag it and drop it on HiWorld shown below.<br/><img src="guides/images/project.jpg" alt=""/></li>
		<li>After you drag, you should see a prompt with a few options. Make sure to select <strong>Create folder references for any added folders</strong>. Click Finish</li>
	</ul>

</li>

<li><h3>4. Hello World</h3>
	<p>Open the folder named <strong>www</strong> and type <code>&lt;h1&gt;Hello World&lt;/h1&gt;</code> after the <code>&lt;body&gt;</code> tag in <strong>index.html</strong>. You can also add any associated Javascript and CSS files there as well.</p>
</li>

<li><h3>5A. Deploy to Simulator</h3>
	<ul>
		<li>Make sure to change the Active SDK in the top left menu to <strong>Simulator+version#</strong>.</li>
		<li>Hit <strong>Run</strong> in your project window header.</li>
	</ul>
</li>

<li><h3>5B. Deploy to Device</h3>
	<ul>
		<li>Open [AppName]-Info.plist and change <strong>BundleIdentifier</strong> to the identifier provided by Apple. If you have a developer license, you can access and run the Assistant at <a href="http://developer.apple.com/iphone/manage/overview/index.action">here</a> and register your App.</li>
		<li>Make sure to change the Active SDK in the top left menu to <strong>Device+version#</strong>.</li>
		<li>Hit <strong>Run</strong> in your project window header.</li>
	</ul>	
	<img src="guides/images/HelloWorldiPhone4.png" alt=""/>
</li>		

<li><h3>Done!</h3>
	<p>You can also checkout more detailed version of this guide <a href="http://wiki.phonegap.com/w/page/39991939/Getting-Started-with-PhoneGap-iOS-using-Xcode-4-%28Template-Version%29">here</a>.</p>
</li>
</ul> 
<!-- ios Xcode4 guide end-->

<!-- symbian guide start-->
<ul id="guide-symbian" class="guide" style="display:none">		
<li class="top"></li>
<li class="bottom"></li>

<li><h3>1. Requirements</h3>
	<ul>
		<li>Windows, OS X, or Linux</li>
	</ul>
	<p>There are also <a href="http://wiki.phonegap.com/w/page/16494811/PhoneGap-Symbian-%28Qt%29">QT for Symbian</a> and <a href="http://wiki.phonegap.com/w/page/16494782/Getting-Started-with-PhoneGap-Symbian-(WRT-on-Sony-Ericsson)">Symbian with Sony Ericsson</a> guides.</p>
</li>

<li><h3>2. Install SDK + PhoneGap</h3>
	<div class="sdk-img"><img src="guides/images/sdk_cygwin.png" alt=""/></div>
	<p class="sdk-p">Download and install <a href="http://www.cygwin.com/setup.exe">cygwin</a> (Windows only). Make sure you select "make" as it is not included by default</p>
	<br/>
	<div class="sdk-img"><img src="guides/images/sdk_phonegap.png" alt=""/></div>
	<p style="display:table-cell;vertical-align:middle"><a href="/download">Download</a> the latest copy of PhoneGap and extract its contents</p>
</li>

<li><h3>3. Setup New Project</h3>
	<ul>
		<li>In cygwin, navigate to where you extracted PhoneGap and go into the Symbian directory</li>
	</ul>
</li>

<li><h3>4. Hello World</h3>
	<p>Open up index.html located in phonegap/symbian/framework/www with your favourite editor. In the <code>body</code> tag, remove the line
		<code> "Build your phonegap app here! Dude!"</code> and add the line <code>&lt;h1&gt;Hello World&lt;/h1&gt;</code><br />
		In cygwin/terminal, type make. This will produce phonegap-symbian.wrt/app.wgz. 
	</p>
</li>

<li><h3>5A. Deploy to Simulator</h3>
	<ul>
		<li>For Mac or Linux you should install <a href="http://www.aptana.org/products/studio2/download">Aptana Studio</a> and <a href="http://www.forum.nokia.com/info/sw.nokia.com/id/00d62bd8-4214-4c86-b608-5f11b94dad54/Nokia_WRT_Plug_in_for_Aptana_Studio.html">Nokia WRT Plug-in for Aptana Studio</a>. This has a browser-based javascript emulator</li>
		<li>For Windows you can download the <a href="http://www.forum.nokia.com/info/sw.nokia.com/id/ec866fab-4b76-49f6-b5a5-af0631419e9c/S60_All_in_One_SDKs.html">S60 SDK</a> which includes the S60 Emulator</li>
		<li>Load the phonegap-symbian.wrt/app.wgz file into the emulator.</li>
	</ul>
</li>

<li><h3>5B. Deploy to Device</h3>
	<ul>
		<li>Load the phonegap-symbian.wrt/app.wgz file into the device using bluetooth or email.</li>
	</ul>
</li>		

<li><h3>Done!</h3>
	<p>You can also checkout more detailed version of this guide <a href="http://wiki.phonegap.com/w/page/16494780/Getting-Started-with-Phonegap-Nokia-WRT">here</a>.</p>
</li>
</ul> 
<!-- symbian guide end-->

<!-- webos guide start-->
<ul id="guide-webos" class="guide" style="display:none">		
<li class="top"></li>
<li class="bottom"></li>

<li class="video-guide"><h3>Video Tutorials:</h3>
	<div class="video-container">
		<img title="video_image" src="guides/images/v_palm.jpeg" alt="" />
		<div>
			<a rel="#voverlay" href="http://www.youtube.com/v/XEnAUbDRZfw?autoplay=1" title="PhoneGap and HP Palm webOS quick start video" onclick="pageTracker._trackEvent('Video', 'Play');" data-title="PhoneGap and HP Palm webOS quick start video"></a>
		</div>
		<div class="video-frame vf-top"></div><div class="video-frame vf-bottom"></div>
		<div class="video-frame vf-left"></div><div class="video-frame vf-right"></div>
	</div>
	<div class="video-container">
		<img title="video_image" src="guides/images/v_palm2.jpeg" alt="" />
		<div>
			<a rel="#voverlay" href="http://www.youtube.com/v/wWoJfQw79XI?autoplay=1" title="How to convert iPhone app to a Palm" onclick="pageTracker._trackEvent('Video', 'Play');" data-title="How to convert iPhone app to a Palm"></a>
		</div>
		<div class="video-frame vf-top"></div><div class="video-frame vf-bottom"></div>
		<div class="video-frame vf-left"></div><div class="video-frame vf-right"></div>
	</div>
</li>

<li><h3>1. Requirements</h3>
	<ul>
		<li>Windows, OS X, or Linux</li>
	</ul>
</li>

<li><h3>2. Install SDK + PhoneGap</h3>
	<div class="sdk-img"><img src="guides/images/sdk_virtualbox.png" alt=""/></div>
	<p class="sdk-p">Download and install <a href="http://www.virtualbox.org/">Virtual Box</a></p>
	<br/>
	<div class="sdk-img"><img src="guides/images/os_palm.png" alt=""/></div>
	<p class="sdk-p">Download and install <a href="http://developer.palm.com/index.php?option=com_content&view=article&layout=page&id=1788&Itemid=321">webOS SDK</a></p>
	<br/>
	<div class="sdk-img"><img src="guides/images/sdk_cygwin.png" alt=""/></div>
	<p class="sdk-p">Download and install <a href="http://www.cygwin.com/setup.exe">cygwin</a> (Windows only). Make sure you select "make" as it is not included by default</p>
	<br/>
	<div class="sdk-img"><img src="guides/images/sdk_phonegap.png" alt=""/></div>
	<p style="display:table-cell;vertical-align:middle"><a href="/download">Download</a> the latest copy of PhoneGap and extract its contents</p>
</li>

<li><h3>3. Setup New Project</h3>
	<ul>
		<li>Open up terminal/cygwin and navigate to where you extracted your PhoneGap Download. Go into the webOS directory.</li>
	</ul>
</li>

<li><h3>4. Hello World</h3>
	<p>In phonegap/webOS/framework/www, open up index.html with your favourite editor. After the body tag add <code>&lt;h1&gt;Hello World&lt;/h1&gt;</code></p>
</li>

<li><h3>5A. Deploy to Simulator</h3>
	<ul>
		<li>Open up your Palm Emulator from your applications folder/start menu.</li>
		<li>Type <code>make</code> in your terminal/cygwin while in the webOS directory.</li>
	</ul>
</li>

<li><h3>5B. Deploy to Device</h3>
	<ul>
		<li>Make sure your device is in <a href="http://developer.palm.com/index.php?option=com_content&view=article&id=1552&Itemid=59#dev_mode">Developer Mode and plug it in.</a></li>
		<li>Type <code>make</code> in your terminal/cygwin while in the webOS directory.</li>
	</ul>
</li>		

<li><h3>Done!</h3>
	<p>You can also checkout more detailed version of this guide <a href="http://wiki.phonegap.com/w/page/16494781/Getting-Started-with-PhoneGap-webOS">here</a>.</p>
</li>
</ul> 
<!-- webos guide end-->

<!-- windows phone guide start-->
<ul id="guide-wp" class="guide" style="display:none">		
<li class="top"></li>
<li class="bottom"></li>

<li class="video-guide"><h3>Video Tutorials:</h3>
	<div class="video-container">
		<img title="video_image" src="guides/images/v_android.jpeg" alt="" />
		<div>
			<a rel="#voverlay" href="https://www.youtube.com/v/wO9xdRcNHIM?autoplay=1" title="PhoneGap and Windows Phone quick setup video" onclick="pageTracker._trackEvent('Video', 'Play');" data-title="PhoneGap and Windows Phone quick setup video"></a>
		</div>
		<div class="video-frame vf-top"></div>
		<div class="video-frame vf-bottom"></div>
		<div class="video-frame vf-left"></div>
		<div class="video-frame vf-right"></div>
	</div>
	<div class="video-container">
		<img title="video_image" src="guides/images/v_android.jpeg" alt="" />
		<div>
			<a rel="#voverlay" href="http://www.youtube.com/v/BJFX1GRUXj8?autoplay=1" title="PhoneGap and Windows Phone deep dive" onclick="pageTracker._trackEvent('Video', 'Play');" data-title="PhoneGap and Windows Phone deep dive video"></a>
		</div>
		<div class="video-frame vf-top"></div>
		<div class="video-frame vf-bottom"></div>
		<div class="video-frame vf-left"></div>
		<div class="video-frame vf-right"></div>
	</div>
</li>

	
<li><h3>1. Requirements</h3>
	<ul>
		<li>Windows 7 or Windows Vista with SP2</li>
	</ul>
	<p>Note: Running in VM has issues, if you are on a Mac, you will need to setup a bootcamp partition with Windows 7 or Vista</p>
	<p>Necessary for Installing on Device and Submitting to Market Place:</p>
	<ul>
		<li>Become an <a href="http://create.msdn.com/en-US/home/membership">App Hub member</a>.</li>
	</ul>
</li>

<li><h3>2. Install SDK + PhoneGap</h3>
	<div class="sdk-img"><img src="guides/images/sdk_wp.png" alt=""/></div>
	<p class="sdk-p">Download and install the <a href="http://www.microsoft.com/download/en/details.aspx?displaylang=en&id=27570">Windows Phone  SDK.</a>
	</p>
	<br/>
	<div class="sdk-img"><img src="guides/images/sdk_phonegap.png" alt=""/></div>
	<p style="display:table-cell;vertical-align:middle"><a href="http://phonegap.com/download">Download</a> the latest copy of PhoneGap and extract its contents. Navigate to the Windows Phone directory and copy the file <strong>PhoneGapStarter.zip</strong> to your templates folder located at <strong>C:\Users\[USERNAME]\Documents\Visual Studio 2010\Templates\ProjectTemplates\Silverlight for Windows Phone</strong></p>
</li>

<li><h3>3. Setup New Project</h3>
	<ul>
		<li>Open Visual Studio Express for Windows Phone and choose <strong>New Project</strong>.</li>
		<li>Select <strong>PhoneGapStarter</strong>.</li>
		<li>Give your project a name, and select OK.</li>
	</ul>
	<img src="guides/images/wpnewproj.PNG" alt=""/>
</li>

<li><h3>4. Review the project structure</h3>
	<ul>
		<li>The 'www' folder contains your PhoneGap html/js/css and any other resources included in your app.</li>
		<li>Any content that you add here needs to be a part of the Visual Studio project, and it must be set as content. </li>
	</ul>
	<img src="guides/images/wp7projectstructure.PNG" alt=""/>
</li>

<li><h3>5. Build and Deploy to Emulator</h3>
	<ul>
		<li>Make sure to have <strong>Windows Phone Emulator</strong> selected in the top drop-down menu.</li>
		<li>Hit the green <strong>play button</strong> beside the Windows Phone Emulator drop-down menu to start debugging or press F5.</li>
	</ul>
	<img src="guides/images/wprun.png" alt=""/>
	<p> </p>
	<img src="guides/images/wpfirstrun.PNG" alt=""/>
</li>

<li><h3>6. Build your project for the device</h3>
	<p>In order to test your application on a device, the device must be registered. Click <a href="http://msdn.microsoft.com/en-us/library/gg588378(v=VS.92).aspx">here</a> to read documentation on deploying and testing on your Windows Phone.</p>
	<ul>
		<li>Make sure your phone is connected, and the screen is unlocked</li>
		<li>In Visual Studio, select 'Windows Phone Device' from the top drop-down menu.</li>
		<li>Hit the green <strong>play button</strong> beside the drop-down menu to start debugging or press F5.</li>
	</ul>
	<img src="guides/images/wpd.png" alt=""/>
</li>
	

<li><h3>Done!</h3>
	<p>You can also checkout the wiki version of this guide <a href="http://wiki.phonegap.com/w/page/48672055/Getting%20Started%20with%20PhoneGap%20Windows%20Phone%207">here</a>.</p>
</li>
</ul>
<!-- windows phone guide end-->		


<script type="text/javascript">
function showTab(os) {
	$('.guide').css('display', 'none');
	$('#guide-'+os+ ', .stick').css('display', 'block');
	$('.button-picker li a').removeClass('selected');
	$('.button-picker li a[href="#' + os + '"]').addClass('selected');
}

if (document.location.hash && document.location.hash.length > 1)
{
	var split = document.location.hash.split('#');
	if (split && split[1] && $('#guide-'+split[1]).length > 0)
		showTab(split[1]);
}

$('.button-picker li a').click(function(){
	var item = $(this);
	var tag = item[0].href.split('#')[1];
	showTab(tag);
	//console.log(tag)
});

function initTooltip() {
	var tp = $('.tooltip');
	var opts = {duration:150, queue:false};
	$('.video-guide a').each(function(i){
		$(this).hover(function() {
			if ($(this)[0].className && $(this)[0].className.indexOf('unavailable') != -1) return;
			var pos = $(this).position();
			var parent = $($(this)[0].parentNode.parentNode).position();
			var x = pos.left+parent.left+50;
			var y = pos.top+parent.top+252+145;
			tp.css('left', x+'px');
			tp.css('top', y+'px');
			var msg = $(this).attr('data-title');
			setTimeout(function(){
				tp.css('display', 'block')
				$('.tooltip .inner').html(msg);
			}, 0);
		}, function() {
			tp.css('display', 'none');
		});
	});
}

initTooltip();

</script>