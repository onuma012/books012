<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\TypeBooks;  //นำเอาโมเดล TypeBooks เข้ามาใช้งาน

class TypeBooksController extends Controller
{
    //
    public function index(){
        //$typebooks = TypeBooks::all();  //แสดงข้อมูลทั้งหมด
        //$typebooks = TypeBooks::orderBy('id', 'desc')->get(); //  แสดงข้อมูลทั้งหมดเรียงจากมากไปน้อยโดยใช้ id
        $count = TypeBooks::count();  //นับจำนวนแถวทั้งหมด
        //แบ่งหน้า
        //$typebooks = TypeBooks::simplePaginate(3);
        $typebooks = TypeBooks::paginate(3);
        return view('typebooks.index',[
            'typebooks' => $typebooks,
            'count' => $count
        ]);  // ส่งไปที่ views โฟลเดอร์ typebooks ไฟล์ <index class="blade php"></index>
    }

    public function destroy($id){
        //TypeBooks::find($id)->delete();
        TypeBooks::destroy($id);
        return back();
    }
}
