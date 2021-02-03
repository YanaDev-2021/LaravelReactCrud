<?php

namespace App\Models;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Passport\HasApiTokens;

class User extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable;

    public $first_name;
    public $last_name;
    public $email;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name',
        'email',
        'password',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    public function setFirstName($firstName)
    {    
        $this->first_name = trim($firstName);
    }

    public function getFirstName()
    {    
        return $this->first_name;
    }

    public function setLastName($lastName)
    {    
        $this->last_name = trim($lastName);
    }

    public function getLastName()
    {    
        return $this->last_name;
    }

    public function getFullName()
    {
        return $this->getFirstName().' '.$this->getLastName(); 
    }
    
    public function setEmailAddress($email)
    {
        $this->email = $email;
    }

    public function getEmailAddress()
    {
        return $this->email;
    }

    public function getEmailVariables()
    {
        return [
            'full_name' => $this->getFullName(),
            'email' => $this->getEmailAddress()
        ];
    }
}
