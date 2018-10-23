# Additional Interesting Topics
The topic in this chapter is to explore how you could take the website to newer heights. Not all of them interest beginners, so proceed at your own peril.


## Map your Domain to GitHub Repository
In all the hoopla of setting your site, you may have forgotten about the domain mentioned in the __Setup__ section. You can add a domain at anytime during the development, or ten years after you start writing your posts.

If at all you want to buy a domain and set it up, here are steps that can help.

1. Head over to the friendly, neighbourhood domain registrar - [Name Silo](http://bit.ly/get-good-domains)(aff). Buy your domain name.

2. Go to GitHub repository | __Settings__. Scroll down to "Custom domain"
   
   ![Custom Domain on GitHub](resources\images\github-custom-domain.jpg)

   Enter the domain name that you bought in the box. Hit 'Save'.
   
3.  Go to __[Domain Manager]__(https://www.namesilo.com/account_domains.php) on NameSilo. Click on your domain link to go to the __Domain Console__. Find for the string __DNS Records:__ and click on __Update__ link against it. 
    
    In the next screen you will create what is known as an 'A' record. Click on __A__ link against __Select the resource record type you want to create__. The page will allow you to enter records. Create four records with IPV4 addresses as 185.199.108.153, 185.199.109.153, 185.199.110.153, and 185.199.111.153. Leave default values against other fields.

    ![Create A records](resources\images\create-a-record-namesilo.jpg)

4.  It can take anywhere between 5 minutes to 24 hours for the domain to start pointing to your website.


Type in your domain name in the browser bar, and rejoice.


## Mails Tailored for your Domain
This step makes sense if you have bought your own domain. 

You can continue using gmail, yahoo, hotmail as your mail service, or get an email with your domain attached. For e.g. human@somethingawesome123.com.

There are many paid service providers who offer this service - including Google, Yahoo, Outlook, and the like. If you are sending 5.5 emails a month, paying for a custom-built service does not make sense. However, we live in a day and age where many of the best things in life are free. Did I see you grimace a bit when I mentioned 'free', or was it my imagination?

One of those aforementioned best things is [Mailgun](https://mailgun.com). 

1. Sign up for Mailgun's free service
   
2. Go to the [Domain page](https://app.mailgun.com/app/domains). Click __Add New Domain__ to create a new domain

3. Follow instructions to add a new domain at mail.<yourdomain>.com

4. You can follow instructions from Mailgun to configure your domain (mainly, create MX records)

Next: make it easy on yourself to check emails rather than logging on to tens of different services. Go to the your favourite email - e.g Gmail. 

1. Click on your domain in Mailgun. The __Domain Information__ header displays a bunch of information that is required to configure a mail client. Make note of them.
   
2. Head over to Gmail. Click on the Gear icon at the top-right corner and go to settings - https://mail.google.com/mail/u/0/#settings/general
   
3. Click on __Accounts and Import__ tab - https://mail.google.com/mail/u/0/#settings/accounts

4. Add new entries against the following two options - __Send mail as:__ and __Check mail from other accounts:__. Follow Gmail instructions to add values that you had copied over from Mailgun.
   ![Configure Gmail for External Emails](resources\images\configure-gmail-for-ext-mail.jpg)

5. You can now use your Gmail inbox to check mails to and send mails from your tailored email id


## Content Delivery Network
I never get tired of saying this - the static website that you created is going to be faster than most commonly used shared hosting services. In fact, GitHub has been measured to be faster as compared to popular CDNs that claim to speed up your GitHub site.

But, that does not prevent us from improving ourselves to be better human beings.

A [Content Delivery Network](https://en.wikipedia.org/wiki/Content_delivery_network) ("CDN") can speed up your site even more (as if that was possible). You see "internet" is just a bunch of inter connected servers at one level. CDNs have servers in important locations across the globe, and cache data from your site.

If a user goes to your website, you can make that request hit the nearest server, and respond to the user **before** she hits the 'enter' key. While GitHub is fast, you make your site faster.

There are quite a few popular ways of doing this.

1. [Cloudflare](https://www.cloudflare.com/)
   
   Sign up for CloudFlare. Add a new site by following instructions provided on CloudFlare website when you sign-in. You may have to go back to your domain manager and change the 'A' record to point it to Cloudflare name servers instead of GitHub servers. 
   
   To sum up on this behaves - User request hits Cloudflare -> Cloudflare responds with data that is periodically fetched from your GitHub repository).

   You don't have to do a think other than configure about 5 attributes to get all the goodness.
   

2. [CloudFront](https://aws.amazon.com/cloudfront/)

   Amazon web services is a beast that does everything possible including playing Mario, the game. You can sign up for their free tier. It is also difficult to setup - so we exclude it from the scope of this book.


3. [Netlify](https://netlify.com)
   
   Netlify does not advertise itself as a CDN, but it uses its own and third party CDNs to host your site. Netlify provides powerful tooling to build site from code, and your website on GitHub repository is no different.
   
   Sign-up on Netlify. Click 'New site from Git' to connect to your repository. Netlify creates a site from your repository with a funny URL. Follow [step-by-step instructions to point your custom domain to Netlify](https://www.netlify.com/docs/custom-domains/).

 
## Additional Resources
Well, that's all I had to say and I said a lot - hopefully some of it useful. Hopefully Jekyll and this book has helped you to an extent in creating the website of your dreams.


### Refer More Content on How to Build Sites on Jekyll
Go ahead, break our hearts and refer excellent material on how to build websites on Jekyll. We have learnt to live with them - after all they were here before us. Don't forget to send brickbats our way.

 - https://www.smashingmagazine.com/2014/08/build-blog-jekyll-github-pages/
 - http://jmcglone.com/guides/github-pages/
  

### Developer Resources
Develop your own components, plugins, and create magic on Jekyll.

 - https://learn.cloudcannon.com/
 - https://jekyllrb.com/tutorials/home/ 



---
