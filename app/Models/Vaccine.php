<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Vaccine extends Model
{
    use HasFactory;

    protected $fillable  = ['name', 'volume'];

    public function vaccinationRecord()
    {
        return $this->hasMany(VaccinationRecord::class);
    }
}
