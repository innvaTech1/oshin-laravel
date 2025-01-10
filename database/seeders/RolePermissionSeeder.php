<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;

class RolePermissionSeeder extends Seeder
{
    public function run()
    {
        // Clear cache
        app()[\Spatie\Permission\PermissionRegistrar::class]->forgetCachedPermissions();

        // Define permissions
        $permissions = [
            // Product management
            'create products',
            'view products',
            'update products',
            'delete products',
            'manage product inventory',
            'upload product images',

            // Order management
            'create orders',
            'view orders',
            'update orders',
            'cancel orders',
            'process refunds',

            // User management
            'create users',
            'view users',
            'update users',
            'delete users',

            // Role and Permission management
            'create roles',
            'view roles',
            'update roles',
            'delete roles',
            'assign roles',

            // Permission management
            'create permissions',
            'view permissions',
            'update permissions',
            'delete permissions',
            'assign permissions',

            // Category management
            'create categories',
            'view categories',
            'update categories',
            'delete categories',

            // Payment management
            'process payments',
            'view payments',
            'refund payments',

            // Reports
            'view sales reports',
            'view product reports',

            // Seller-specific
            'manage own products',
            'view own orders',

            // Customer-specific
            'place orders',
            'view own orders',
            'write reviews',
        ];

        // Create permissions
        foreach ($permissions as $permission) {
            Permission::firstOrCreate(['name' => $permission]);
        }

        // Define roles and assign permissions
        $roles = [
            'dev' => Permission::all(), // Dev has all permissions
            'super admin' => Permission::all(),
            'admin' => [
                'view users',
                'update users',
                'view orders',
                'process refunds',
                'create categories',
                'view categories',
                'update categories',
                'delete categories',
                'view sales reports',
                'view product reports',
            ],
            'seller' => [
                'create products',
                'view own orders',
                'manage own products',
                'update products',
                'delete products',
                'upload product images',
                'manage product inventory',
            ],
            'customer' => [
                'place orders',
                'view own orders',
                'write reviews',
            ],
        ];

        foreach ($roles as $role => $rolePermissions) {
            $roleModel = Role::firstOrCreate(['name' => $role]);
            $roleModel->syncPermissions($rolePermissions);
        }

        $this->command->info('Roles and permissions seeded successfully!');
    }
}

// To run
// php artisan db:seed --class=RolePermissionSeeder
// php artisan permission:cache-reset
