<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Cow extends Model
{
    use HasFactory;

    protected $fillable = [
        'tag',
        'weight',
        'age',
        'color',
        'gender',
        'breed_id',
        'cattle_purchase_id'
    ];

    public function purchase()
    {
        return $this->belongsTo(CattlePurchase::class);
    }

    public function breed()
    {
        return $this->belongsTo(Breed::class);
    }
}
