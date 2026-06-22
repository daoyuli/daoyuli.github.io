---
layout: default
title: Repositories
permalink: /repo/
---

<h1><i class="fas fa-box-archive"></i> Repositories</h1>

<!-- <p class="text-muted">Selected open-source projects. Each repository is manually curated with a brief description.</p> -->

{% if site.data.repos %}
<div class="row g-4 mt-2">
    {% for repo in site.data.repos %}
    <div class="col-12">
        <div class="card">
            <div class="card-body">
                <h3 class="card-title mb-2">
                    <a href="{{ repo.url }}" target="_blank">{{ repo.name }}</a>
                </h3>
                <p class="card-text text-muted">{{ repo.description }}</p>
                <div class="d-flex justify-content-between align-items-center">
                    <div class="badge-group">
                        {% for tag in repo.tags %}
                        <span class="badge bg-secondary">{{ tag }}</span>
                        {% endfor %}
                    </div>
                    <a href="{{ repo.url }}" target="_blank" class="btn btn-outline-primary btn-sm" title="View on GitHub">
                        <i class="fab fa-github"></i>
                    </a>
                </div>
            </div>
        </div>
    </div>
    {% endfor %}
</div>
{% else %}
<div class="text-center py-5 text-muted">
    <i class="fas fa-box-open fa-3x mb-3"></i>
    <p>No repositories listed yet. Check back soon!</p>
</div>
{% endif %}
