<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Herd extends Model
{
    use HasFactory;

    protected $fillable = [
        'name',
    ];

    public function purchases()
    {
        return $this->hasMany(CattlePurchase::class);
    }

    public function vaccinationRecord()
    {
        return $this->hasMany(VaccinationRecord::class);
    }
}
