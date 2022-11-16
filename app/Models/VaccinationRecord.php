<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class VaccinationRecord extends Model
{
    use HasFactory;

    protected $fillable = [
        'date-administered',
        'vaccine_id',
        'herd_id'

    ];

    public function herd()
    {
        return $this->belongsTo(Herd::class);
    }

    public function vaccine()
    {
        return $this->belongsTo(Vaccine::class);
    }
}
