<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CattlePurchase extends Model
{
    use HasFactory;

    protected $fillable = [
        'total_price',
        'farmer_id',
        'herd_id',
        'total_calves'
    ];

    public function herd()
    {
        return $this->belongsTo(Herd::class);
    }

    public function farmer()
    {
        return $this->belongsTo(Farmer::class);
    }

    public function cows()
    {
        return $this->hasMany(Cow::class);
    }
}
