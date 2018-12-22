<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Category;
use App\Ticket;

class FaqsController extends Controller
{
    //
    public function index()
    {
        $tickets = Ticket::where('status', 'open')->paginate(20);
        $categories = Category::all();

        return view('tickets.faq', compact('tickets', 'categories'));
    }
}
