<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Collection;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Schema;
use TCG\Voyager\Models\Role;

class AdminUserSeeder extends Seeder
{
    /**
     * Seed a Voyager admin user that can log into /admin.
     */
    public function run(): void
    {
        $this->call([
            RolesTableSeeder::class,
            PermissionsTableSeeder::class,
            PermissionRoleTableSeeder::class,
        ]);

        $adminRole = Role::firstOrCreate(
            ['name' => 'admin'],
            ['display_name' => __('voyager::seeders.roles.admin')]
        );

        $data = [
            'name' => 'Admin',
            'email' => 'admin@admin.com',
            'password' => Hash::make('password'),
        ];

        if (Schema::hasColumn('users', 'role_id')) {
            $data['role_id'] = $adminRole->getKey();
        }

        if (Schema::hasColumn('users', 'avatar')) {
            $data['avatar'] = 'users/default.png';
        }

        if (Schema::hasColumn('users', 'settings')) {
            $data['settings'] = new Collection();
        }

        if (Schema::hasColumn('users', 'email_verified_at')) {
            $data['email_verified_at'] = now();
        }

        $user = User::updateOrCreate(
            ['email' => 'admin@admin.com'],
            $data
        );

        if (Schema::hasTable('user_roles')) {
            DB::table('user_roles')->updateOrInsert(
                ['user_id' => $user->getKey(), 'role_id' => $adminRole->getKey()],
                []
            );
        }
    }
}
