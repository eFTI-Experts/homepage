---
layout: services
title: Our Services
subtitle: "Expert solutions for digital freight transport and eFTI implementation"
description: "eFTI Experts helps governments, authorities and organisations navigate the transition towards digital freight transport with independent, vendor-neutral expertise."
permalink: /services/
---

<div class="grid grid-cols-1 lg:grid-cols-3 gap-8 mt-8">
  <!-- Featured sidebar -->
  <div class="hidden lg:block lg:col-span-1">
    <div class="sticky top-24">
      <img class="rounded-xl w-full h-auto object-cover shadow-lg" src="/images/truck.avif" alt="Digital freight transport" loading="lazy">
      <div class="mt-6 bg-[#F1F5F9] p-6 rounded-xl shadow">
        <h3 class="text-xl font-semibold mb-3">Our Approach</h3>
        <p class="text-gray-700">We combine policy, technology and project delivery, enabling clients to implement eFTI and related digital transport solutions with confidence.</p>
      </div>
    </div>
  </div>

  <!-- Services grid -->
  <div class="lg:col-span-2">
    <!-- Intro text -->
    <div class="mb-8">
      <p class="text-gray-700 text-lg">At eFTI Experts, we help governments, public authorities, European institutions and private organisations navigate the transition towards digital freight transport. Whether supporting national implementation programmes, advising on EU-funded initiatives or guiding organisations through digital transformation, we provide independent, vendor-neutral expertise based on practical experience across Europe.</p>
    </div>

    <div class="grid grid-cols-1 md:grid-cols-2 gap-8" data-aos="fade-up">
      {% for service in site.data.services limit:4 %}
        {% include service-card.html icon=service.icon title=service.title description=service.description items=service.items %}
      {% endfor %}
    </div>

    <!-- Divider -->
    <div class="my-12 p-6 bg-gradient-to-r from-[#F1F5F9] to-gray-50 rounded-xl shadow-md flex items-center">
      <div class="flex-1">
        <h3 class="text-2xl font-bold mb-2">Interoperability &amp; Technical Advisory</h3>
        <p class="text-gray-700">Successful digital freight transport depends on interoperability between platforms, authorities and stakeholders.</p>
      </div>
      <img class="hidden sm:block w-32 h-32 rounded-lg object-cover" src="/images/digital-solution.avif" alt="Technical advisory" loading="lazy">
    </div>

    <div class="grid grid-cols-1 md:grid-cols-2 gap-8" data-aos="fade-up">
      {% for service in site.data.services offset:4 limit:4 %}
        {% include service-card.html icon=service.icon title=service.title description=service.description items=service.items %}
      {% endfor %}
    </div>
  </div>
</div>

<!-- Independent Advisory Block -->
<div class="mt-16 space-y-8">
  <div class="flex flex-col justify-between items-center md:flex-row gap-8 bg-[#F1F5F9] rounded-xl p-8 shadow-sm">
    <div class="md:w-2/3">
      <h3 class="text-2xl font-bold mb-4">Independent &amp; Vendor-Neutral Consulting</h3>
      <p class="text-gray-700 max-w-2xl">
        Unlike technology vendors, we do not promote specific software solutions. Our advice is fully
        independent, allowing organisations to make informed decisions based on regulatory requirements,
        operational needs and long-term sustainability rather than commercial interests.
      </p>
    </div>
    <img class="hidden sm:block w-64 h-48 rounded-lg object-cover" src="/images/advisory.avif" alt="Independent advisory" loading="lazy">
  </div>

  <!-- Why Choose Us Block -->
  <div class="flex flex-col justify-between items-center md:flex-row gap-8 bg-white rounded-xl p-8 shadow-md border border-gray-100">
    <img class="hidden sm:block w-64 h-48 rounded-lg object-cover" src="/images/tech-meeting.avif" alt="eFTI Experts team" loading="lazy">
    <div class="md:w-2/3">
      <h3 class="text-2xl font-bold mb-4">Why Choose eFTI Experts?</h3>
      <p class="text-gray-700 max-w-2xl">
        Our consultants have played leading roles in some of Europe's largest eFTI implementation
        initiatives. We combine strategic advisory with hands-on implementation experience gained
        through European Commission assignments, CEF-funded projects, Member State cooperation and
        practical deployment activities. We deliver independent, pragmatic and implementation-focused
        advice that helps clients move from strategy to execution.
      </p>
    </div>
  </div>

  <!-- Contact CTA -->
  <div class="relative overflow-hidden bg-gradient-to-r from-brand to-[#5A68B6] rounded-xl p-8 text-center text-white shadow-md">
    <div class="relative z-10">
      <h3 class="text-2xl font-bold mb-4">Ready to start your digital transformation?</h3>
      <p class="mb-8 max-w-2xl mx-auto opacity-90">Our team of experts is ready to help you navigate eFTI implementation and digital freight transport.</p>
      <a href="/contact/" class="inline-block bg-white text-brand font-bold py-3 px-8 rounded-lg transition duration-300 hover:bg-gray-100 hover:shadow-lg">Contact Us Today</a>
    </div>
    <div class="absolute top-0 right-0 w-64 h-64 bg-[#5A68B6] rounded-full -mr-32 -mt-32 opacity-50"></div>
    <div class="absolute bottom-0 left-0 w-48 h-48 bg-[#5A68B6] rounded-full -ml-24 -mb-24 opacity-50"></div>
  </div>
</div>
