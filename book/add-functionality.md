# Add Blog Functionality
What have we done so far -

1. Created a site
2. Added pages
3. Added posts

This has given you a medium to get your content to the world (and hopefully you've something to say to the world - unlike me). But, we are all human beings and want to have conversations, not monologues. Well, at least most of us.

Let us add functionality to your site to make it appealing to readers, and also enable them to create comments. Again, I hope you note that the tags selected here are for 'Beautiful Jekyll' theme. Refer your theme documentation to know the exact features of the theme, and how to enable/change them.


## Add Social Icons
There was a small one line instruction to enable social icons earlier. You can enable more, or disable existing icons. These icons allow user to quickly navigate to your social media sites - e.g. a Facebook page.

To change settings, let us follow a different route instead of editing the ___config.yml__ file. Head over to SiteLeaf | Go to Settings link displayed on the navigation bar at the left.

Find for __social-network-links__. Change existing names. 

![Social Media Icons in SiteLeaf](resources\images\site-leaf-settings-social-icons.jpg)

Next: change icons to enable users to share your posts. In the same __Settings__ page, find __share-links-active__. Enable or disable sharing by updating *true* or *false* values against the names.

![Social Media Share Icons](resources\images\siteleaf-social-share.jpg)

You can see the results on the website posts.

![Social Icons on Posts](resources\images\social-media-links-Jekyll-site.jpg)

You see all settings in Jekyll are basically a key (parameter name) and a value. The name makes sense for Jekyll - e.g. creating a link here will tell Jekyll to display Facebook icon, and allow user to share site when she clicks on the link. 

A lot of that functionality is enabled by the theme we used. If you add something new altogether (e.g. Skype), it would need additional configuration in the files to enable the functionality (e.g. call through Skype). We don't quite discuss that in detail here, but you could do that quite easily as well. Check out [one simple way to add more icons](https://sourabhbajaj.com/blog/2017/10/29/adding-social-media-share-icons-to-jekyll/).


## Enable Comments
Jekyll is a static site, but Comments are user-entered and dynamic. Fortunately, there are platforms that enable us to capture comments and interact with reader community at large.

One of those platforms is [Disqus](https://disqus.com/). 

### Disqus
Head over to Disqus and click on the 'Get Started' button. Sign up, or sign in.

![Disqus signup](resources\images\disqus-signup.jpg)

In the subsequent screen, click on 'I want to enable Disqus on my site', and follow instructions to provide the site details. You can provide the unique Disqus URL with site name prefix (e.g. somethingawesome123.disqus.com).

Copy the short name from Disqus. Go back to SiteLeaf settings, find for __disqus__ and set the value as the Disqus short name.

```
disqus: "somethingawesome123"
```

You can change themes, fonts, moderate comments, and do more on the Disqus Admin Page. Go back and explore that sometime.

### Facebook
You could also enable Facebook comments in a similar way to that of Disqus, but is requires a few more steps.

1. Go to https://developers.facebook.com/. Login with your Facebook id and password
2. Click on __My Apps__ at the top-right corner. Select __Add new app__.
   
   ![Facebook App for Comments](resources\images\facebook-add-new-app.jpg)
   
3. Copy the __APP ID__ displayed at the top of the page. 
4. You will see a Status__ toggle to the top-right corner. Toggle it to ready for production (follow instructions to set your privacy policy if prompted)
   
Get back to your ___config.yml__ file or __Settings__ in SiteLeaf, and provide the app id against a parameter called __fb_comment_id__. 

And, for Pete's sake: don't enable both Disqus or Facebook comments. This can cause solar flares and destroy the world.


## Add Google Analytics
In an ideal world, people who visit your website comment on how beautiful it is, and get you a coffee in appreciation of your work. 

This is real, and we live with that. So, you have to monitor what the users do on your website, how they came to the site, and when they leave. All this is done by Google Analytics - for free.

1. Head over to https://analytics.google.com. Login with your Google id.
2. Setup an account. Create property for your site. [Instructions here](https://support.google.com/analytics/answer/1042508).
3. You should see a __Tracking Info__ link. Click that and copy the tracking id
   
   ![Google Tracking Id](resources\images\google-analytics-setup.jpg)

4. Update the tracking id against __gtag__ attribute in your ___config.yml__ file . 

You are all set. Allow a couple of hours, and you should start seeing your website traffic in Google Analytics. If not for any deep insights, you will at least know that some poor sod somewhere is reading through your content, and needs to be kept happy as long as he is on the site.


## Change Post Structure in URL
One of the strange things you would have seen is the URL structure. Instead of a simple 

```https://somethingawesome123.github.io/blah-blah```

.. you get a 

```https://somethingawesome123.github.io/2018-12-31-blah-blah```

Annoying, I know. We will change that.

In ___config.yml__ file: find for the below __permalink__ attribute. The current value will be -

```permalink: "/:year-:month-:day-:title/"```

Change that to -

```permalink: "/:title/"```

Behold the new title for posts that has only the 'title' and nothing else. You have aligned to the almighty "mainstream human intelligence" God, celebrate.


## Create a 'Contact Us' Page
You would have seen the 'contact us' page lying about in every other website. I am not quite sure who in this galaxy actually clicks that in the era of social this & social that. But hey, everyone has that. So we will have that too.

We will use a component called FormSpree to enable contact form on the website. 

Click on 'New Page' button in SiteLeaf. Copy content from below and paste it in the new page.

```html
<form action="https://formspree.io/<your-email>@gmail.com" method="POST">
 <input type="text" name="name" placeholder="Your awesome name"><br>
 <input type="email" name="_replyto" placeholder="Your email"><br>
 <textarea name="message" placeholder="Your message or prayers"></textarea><br><br>
 
 <input type="text" name="_gotcha" style="display:none"><br>
 <input type="hidden" name="_subject" value="Message via http://somethingawesome123.com">
 <input type="submit" value="Send">
</form>
```

![Create Contact Us Page](resources\images\contact-us-page-edit.jpg)

Add the contact page to the page menu. Just like before navigate to __Settings__ in SiteLeaf. Find __navbar-links__. Click on __New key/value pair__ and add a pointer to the Contact page.

![Add Contact Page to Menu](resources\images\contact-us-page-menu.jpg)

Wait a minute for that to compile, and navigate to the glorious form through the menu.

![Contact Us Page](resources\images\contact-us-page.jpg)

Test this once - you will get an email to the mail id included in the form, which you need to verify. You are all set thereafter.

Be aware of the limit though - the free plan of FormSpree allows 50 form submissions. Alternatively, create a free account on [MailChimp](http://eepurl.com/KMiYn)(aff), [SendInBlue](https://sendinblue.com), or something similar. Collect information / emails through a form that you can design on their platform, get the embedded form code and paste that in your site's 'Contact Us' page.


## Other Changes
Depending on the functionality offered by your chosen theme, you may find some, all or more features than described above. My point of demonstration above is not to tell you about what you could change, but to convince you of the simplicity.

All you need to do is find out which attributes dictate what, and go change that in the ___config.yml__ file. You should be running with a site chock-full of standard Blog functions within no time.

By now, you should have a fully functional Blog or website that is taking you to web nirvana. 
Don't believe so? Here, ask Spongebob.

![Spongebob answers important question](resources\images\its-beautiful.jpg)




---
