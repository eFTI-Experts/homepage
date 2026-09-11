---
layout: services
title: Our Services
subtitle: "Expert solutions for logistics, compliance, and digital transformation"
description: "Expert solutions for logistics, compliance, and digital transformation. eFTI Experts offers consulting, funding support, IT solutions, and training."
permalink: /services/
---

<div class="grid grid-cols-1 lg:grid-cols-3 gap-8 mt-8">
  <!-- Featured sidebar -->
  <div class="hidden lg:block lg:col-span-1">
    <div class="sticky top-24">
      <img class="rounded-xl w-full h-auto object-cover shadow-lg" src="/images/truck.avif" alt="Logistics services" loading="lazy">
      <div class="mt-6 bg-[#F1F5F9] p-6 rounded-xl shadow">
        <h3 class="text-xl font-semibold mb-3">Why Choose Our Services?</h3>
        <p class="text-gray-700">With our expertise in logistics and compliance, we help businesses navigate complex regulatory frameworks while optimizing operations for efficiency and sustainability.</p>
      </div>
    </div>
  </div>

  <!-- Services grid -->
  <div class="lg:col-span-2">
    <div class="grid grid-cols-1 md:grid-cols-2 gap-8" data-aos="fade-up">
      {% for service in site.data.services limit:4 %}
        {% include service-card.html icon=service.icon title=service.title description=service.description %}
      {% endfor %}
    </div>

    <!-- Divider -->
    <div class="my-12 p-6 bg-gradient-to-r from-[#F1F5F9] to-gray-50 rounded-xl shadow-md flex items-center">
      <div class="flex-1">
        <h3 class="text-2xl font-bold mb-2">Digital Transformation</h3>
        <p class="text-gray-700">Modernize your logistics operations with our cutting-edge digital solutions.</p>
      </div>
      <img class="hidden sm:block w-32 h-32 rounded-lg object-cover" src="/images/digital-solution.avif" alt="Digital transformation" loading="lazy">
    </div>

    <div class="grid grid-cols-1 md:grid-cols-2 gap-8" data-aos="fade-up">
      {% for service in site.data.services offset:4 limit:4 %}
        {% include service-card.html icon=service.icon title=service.title description=service.description %}
      {% endfor %}
    </div>

    <!-- Divider -->
    <div class="my-12 p-6 bg-gradient-to-r from-gray-50 to-[#F1F5F9] rounded-xl shadow-md flex items-center">
      <img class="hidden sm:block w-32 h-32 rounded-lg object-cover" src="/images/sustainability.avif" alt="Sustainability" loading="lazy">
      <div class="flex-1 sm:ml-6">
        <h3 class="text-2xl font-bold mb-2">Sustainability Solutions</h3>
        <p class="text-gray-700">Optimize your logistics operations while reducing environmental impact.</p>
      </div>
    </div>

    <div class="grid grid-cols-1 md:grid-cols-2 gap-8" data-aos="fade-up">
      {% for service in site.data.services offset:8 %}
        {% include service-card.html icon=service.icon title=service.title description=service.description %}
      {% endfor %}
    </div>
  </div>
</div>

<!-- Independent Advisory Block -->
<div class="mt-16 space-y-8">
  <div class="flex flex-col justify-between items-center md:flex-row gap-8 bg-[#F1F5F9] rounded-xl p-8 shadow-sm">
    <div class="md:w-2/3">
      <h3 class="text-2xl font-bold mb-4">Independent &amp; Neutral Advisory</h3>
      <p class="text-gray-700 max-w-2xl">
        At eFTI Experts, we provide impartial and vendor-neutral consulting. Our approach ensures
        that businesses and authorities receive objective guidance without promoting specific
        solutions, technologies, or providers. We focus on helping clients make informed decisions
        based on their unique needs, regulatory requirements, and operational goals.
      </p>
    </div>
    <img class="hidden sm:block w-64 h-48 rounded-lg object-cover" src="/images/advisory.avif" alt="Advisory" loading="lazy">
  </div>

  <!-- Contact CTA -->
  <div class="relative overflow-hidden bg-gradient-to-r from-brand to-[#5A68B6] rounded-xl p-8 text-center text-white shadow-md">
    <div class="relative z-10">
      <h3 class="text-2xl font-bold mb-4">Ready to transform your logistics operations?</h3>
      <p class="mb-8 max-w-2xl mx-auto opacity-90">Our team of experts is ready to help you navigate the complexities of modern logistics and regulatory compliance.</p>
      <a href="/contact/" class="inline-block bg-white text-brand font-bold py-3 px-8 rounded-lg transition duration-300 hover:bg-gray-100 hover:shadow-lg">Contact Us Today</a>
    </div>
    <div class="absolute top-0 right-0 w-64 h-64 bg-[#5A68B6] rounded-full -mr-32 -mt-32 opacity-50"></div>
    <div class="absolute bottom-0 left-0 w-48 h-48 bg-[#5A68B6] rounded-full -ml-24 -mb-24 opacity-50"></div>
  </div>
</div>
