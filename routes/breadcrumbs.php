<?php
Breadcrumbs::for('admin.index', function ($trail) {
    $trail->push('Admin', route('admin.index'));
});

Breadcrumbs::for('admin.create', function ($trail) {
    $trail->parent('admin.index');
    $trail->push('Add', route('admin.create'));
});

Breadcrumbs::for('admin.edit', function ($trail,  $admin) {
    $trail->parent('admin.index');
//    $trail->push($admin->fullname);
    $trail->push('Edit', route('admin.edit',$admin));
});


Breadcrumbs::for('provider.index', function ($trail) {
    $trail->push('Providers', route('provider.index'));
});

Breadcrumbs::for('home', function ($trail) {
    $trail->push('Businesses', route('home'));
});


Breadcrumbs::for('business.index', function ($trail) {
    $trail->push('Businesses', route('business.index'));
});

Breadcrumbs::for('business.create', function ($trail) {
    $trail->parent('business.index');
    $trail->push('Add');
});

Breadcrumbs::for('business.show', function ($trail, \App\Models\Business $business) {
    $trail->parent('business.index');
    $trail->push($business->name,route('business.show',$business));
});

Breadcrumbs::for('business.service.index', function ($trail, \App\Models\Business $business) {
    $trail->parent('business.index');
    $trail->push($business->name,route('business.service.index',$business));
    $trail->push('Services');
});

Breadcrumbs::for('business.service.show', function ($trail, \App\Models\Service $service) {
    $trail->parent( 'business.service.index', $service->business);
    $trail->push($service->name);
});

Breadcrumbs::for('business.edit', function ($trail, \App\Models\Business $business) {
    $trail->parent('business.show',$business);
    $trail->push('Edit');
});

Breadcrumbs::for('category.index', function ($trail) {
    $trail->push('Categories', route('admin.index'));
});

Breadcrumbs::for('category.create', function ($trail) {
    $trail->parent('category.index');
    $trail->push('Add', route('category.create'));
});

//Provider
Breadcrumbs::for('provider.business.show', function ($trail) {
    $trail->push(auth()->user()->business->name,route('business.show',auth()->user()->business));
});

Breadcrumbs::for('provider.business.service.show', function ($trail, \App\Models\Service $service) {
    $trail->parent( 'provider.business.service.index', $service->business);
    $trail->push($service->name);
});

Breadcrumbs::for('provider.business.service.index', function ($trail) {
    $business = auth()->user()->business;
    $trail->push($business->name,route('provider.business.service.index',$business));
    $trail->push('Services');
});
