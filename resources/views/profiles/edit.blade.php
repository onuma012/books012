@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-lg-10 col-lg-offset-1">
            <div class="card mt-3">
                <div class="card-header h3">
                    แก้ไขข้อมูลส่วนตัว {{ $users->name }}
                </div>
                <div class="card-body">
                    @if (count($errors) > 0)
                    <div class="alert alert-warning">
                        <ul>
                            @foreach($errors->all() as $error)
                                <li>{{ $error }}</li>
                            @endforeach
                        </ul>
                    </div>
                    @endif
                    <?= Form::model($users, array('url' => 'profiles/'.$users->id, 'method' => 'put', 'files' => true)) ?>

                    <div class="form-group">
                        <?= Form::label('name', 'ชื่อ-สกุล'); ?>
                        <?= Form::text('name', null, ['class' => 'form-control', 'placeholder' => 'ชื่อ-สกุล']); ?>
                    </div>
                    <div class="form-group">
                        {!! Form::label('email', 'อีเมล');  !!}
                        {!! Form::text('email', null, ['class' => 'form-control', 'placeholder' => 'a@a.com']); !!}
                    </div>
                    <div class="form-group">
                        {!! Form::label('tel', 'เบอร์โทรศัพท์');  !!}
                        {!! Form::text('tel', isset($users->profiles->tel)?$users->profiles->tel: null, ['class' => 'form-control', 'placeholder' => 'เบอร์โทรศัพท์']); !!}
                    </div>
                    <div class="form-group">
                        {!! Form::label('status', 'สถานะ');  !!}
                        {!! Form::text('status', isset($users->profiles->status)?$users->profiles->status:null, ['class' => 'form-control', 'placeholder' => 'status']); !!}
                    </div>

                    <div class="form-group">
                        <?= Form::submit('แก้ไขข้อมูล', ['class' => 'btn btn-primary']); ?>
                    </div>
                    {!! Form::close() !!}
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
