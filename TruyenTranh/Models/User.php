<?php

namespace TruyenTranh\Models;

use TruyenTranh\Base;

class User extends Base
{
    protected $table = "users";
    
    /**
     * Create user 
     * @param string $username
     * @param string $password
     * @param array $other
     * @return bool
     */
    public function create(string $username, string $password, array $other = [
        'first_name',
        'middle_name',
        'last_name',
        'role_id' => 0
    ])
    {

        $hashedPassword = password_hash($password, PASSWORD_DEFAULT);
        return $this->insert($this->table, 
            [
                'username',
                'hashed_password',
                'first_name',
                'middle_name',
                'last_name'
            ],
            [
                $username,
                $hashedPassword,
                $other['first_name'],
                $other['middle_name'],
                $other['last_name'],
            ]
        );
    }
}