---
title: "Built to Be Found. Built to Be Defended."
slug: "built-to-be-found-built-to-be-defended"
date: 2026-06-22
description: "How DMX Digital helps small organizations build public websites that are easy for people and search engines to find, while remaining resilient against the ordinary hostility of the public internet."
tags:
  - website security
  - Cloudflare
  - Hugo
  - static websites
  - DMX Digital
draft: false
---

# Built to Be Found. Built to Be Defended.

A good public website should be easy for the right people to discover.

It should be readable by residents, customers, search engines, accessibility tools, and the AI systems increasingly helping people find local information. But being visible on the open web also means accepting a simple reality: automated scanners, bots, and opportunistic attackers will find you too.

That is not a sign that a website has done something wrong. It is simply the background noise of the modern internet.

At DMX Digital, we build with both truths in mind.

## Visibility is valuable

For local organizations, being discoverable is no longer just about appearing in a search result. It is about creating a useful, structured, public presence that can be understood by people and by the systems they use to search for answers.

That means websites should have:

- clear page titles and descriptions
- well-organized content
- useful local information
- accessible navigation
- structured data for search engines
- clean URLs and reliable sitemaps
- content that can be indexed without relying on a social-media feed

This is part of the strategy behind projects such as [**Your Good News**](https://www.yourgood.news). The goal is not merely to publish a page and hope someone sees it that day. The goal is to create a lasting local knowledge base that becomes easier to find, understand, and trust over time.

## Openness does not mean carelessness

Recently, [**Your Good News**](https://www.yourgood.news) received more than 5,000 rapid-fire requests from a single foreign IP address. The requests were not from readers and they were not from a legitimate AI crawler. They were automated probes looking for common weaknesses in technologies the site does not even use:

- vulnerable PHP PHPUnit paths
- WordPress login and XML-RPC endpoints
- generic API endpoints
- Next.js and React server paths
- exposed environment files and framework-specific routes

The scanner was essentially asking, “Is there an easy door here?”

There was not.

The site is built as a static Hugo website and protected behind Cloudflare. It does not run WordPress, PHP, Yii, Next.js, or an exposed application API. Those particular probes led nowhere. Once the pattern was identified, we added focused edge protections to make future requests of that kind even less consequential.

That is the kind of result we like: nothing dramatic, nothing broken, and no customer emergency to clean up afterward.

## The practical security advantage of simple architecture

Many website compromises happen because a public website has more moving parts than it needs:

- a database exposed through an application
- outdated plugins
- abandoned themes
- administrative login pages
- a server-side runtime that has not been patched
- an API or integration nobody remembers exists

There are times when those tools are necessary. But an informational business site, or service website often does not need all of them.

A thoughtfully built static site can reduce the attack surface dramatically. With fewer server-side components, there are fewer places for an automated scanner to find a foothold.

That is not magic, and it is not a substitute for good operations. Domains still need to be managed. DNS needs to be protected. Forms and integrations need to be evaluated. Backups still matter. Cloudflare rules, logging, updates, and sensible access controls still matter.

But simple, intentional architecture is one of the best security decisions a small organization can make.

## What DMX Digital builds for

Our work is designed around a practical balance:

**Be easy to find.**  
Search engines, legitimate crawlers, local residents, and modern AI tools should be able to understand what your organization does and why it matters.

**Be difficult to exploit.**  
Commodity scans, outdated exploit attempts, and random bot traffic should have as little opportunity as possible to become a real problem.

**Be maintainable.**  
A site should not require a full-time technical staff just to stay healthy.

**Be yours.**  
Your organization should understand where its content lives, how it is published, and what infrastructure is supporting it.

## Security is part of good digital stewardship

For many small organizations, security sounds like an expensive, mysterious specialty reserved for large companies. In reality, a great deal of protection comes from making good foundational choices early:

- choose technologies you can maintain
- remove components you do not need
- use a reputable edge network and DNS provider
- keep administrative access tightly controlled
- monitor unusual traffic
- protect email and domain records
- build public content in a format that remains useful and portable

The internet will always have noise. The point is not to make a site invisible. The point is to make it visible to the people and systems you want to reach—and uninteresting to the systems looking for an easy way in.

That is what we mean when we say a website should be **built to be found and built to be defended.**

---

## Need a site that is visible, useful, and resilient?

DMX Digital builds privacy-conscious, locally grounded digital systems for small businesses, nonprofits, and community organizations on the Mid-Shore and beyond.

[Talk with DMX Digital](/contact/)
