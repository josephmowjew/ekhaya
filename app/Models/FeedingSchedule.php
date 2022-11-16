<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class FeedingSchedule extends Model
{
    use HasFactory;

    public function herd()
    {
        return $this->belongsTo(Herd::class);
    }

    public function feed()
    {
        return $this->belongsTo(Feed::class);
    }
    protected $fillable = [
        'herd_id',
        'feed_id',
        'amount',
        'feeding_times',
        'start-date',
        'gender',
        'duration'
    ];
}
