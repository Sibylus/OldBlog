---
published: 
  - true
  - "true"
layout: post
title: Security Update - Heartbleed Bug
comments: "true"
categories: "website security, heartbleed, ssl,"
---

Dear Rentobo Users,

Late Monday night (Apr 7), a major website security vulnerability was announced in the open source library OpenSSL. OpenSSL powers SSL encryption (the secure HTTPS you sometimes see in your address bar) on more than two-thirds of all websites on the internet. To read more information about this vulnerability, now known as the “Heartbleed bug,” click [here](http://gizmodo.com/heartbleed-why-the-internets-gaping-security-hole-is-1560812671).

**Rentobo is now secure.** As of Tuesday night (Apr 8), Rentobo and our underlying service providers have performed all necessary updates to ensure secure communication.

What does this mean for Rentobo users?

While there is no evidence that Rentobo specifically has been compromised by the Heartbleed bug, the severe and relatively undetectable nature of this bug encourages us to be very cautious. We strongly recommend that all users change their passwords for Rentobo, as well as any other website where sensitive information is stored.

For our tech-savvy users:

- As of 6:08pm Pacific, April 8th 2014, Rentobo’s hosting provider Heroku is reporting that all SSL endpoints have been updated to a secure, patched version of OpenSSL.
- Rentobo has updated the SSL private keys for all of our servers to protect against the possibility that existing keys were compromised.
- The [heartbleed FAQ](http://www.heartbleed.com) provides a more in-depth and technical explanation of this incident.

Moving forward, we want to assure our users that Rentobo continues to be a tool that landlords and brokers can feel confident using as a safe technology to help navigate the rental process. Security and transparency is our highest priority, and we will keep you informed on any future updates.
