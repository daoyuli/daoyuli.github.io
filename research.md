---
layout: default
title: Research
permalink: /research/
---

<h1><i class="fas fa-pen-to-square"></i> Research</h1>

<!-- <p class="text-muted">Industry analysis, technical deep-dives, and research notes. Sorted by date (newest first).</p> -->

{% assign articles = site.research | sort: 'date' | reverse %}
{% if articles.size > 0 %}
<div class="mt-3">
    {% for article in articles %}
    <article class="mb-4 pb-3 border-bottom">
        <h3 class="mb-1">
            <a href="{{ article.url | relative_url }}">{{ article.title }}</a>
        </h3>
        <div class="text-muted small mb-2">
            <i class="far fa-calendar-alt"></i> {{ article.date | date: "%Y-%m-%d" }}
        </div>
        <p class="mb-0">{{ article.summary }}</p>
    </article>
    {% endfor %}
</div>
{% else %}
<div class="text-center py-5 text-muted">
    <i class="fas fa-pen-fancy fa-3x mb-3"></i>
    <p>Research articles coming soon. This is where I will share industry analysis and technical insights.</p>
</div>
{% endif %}
