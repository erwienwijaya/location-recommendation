<!DOCTYPE html>
<html>
    <head>
        @yield('head')
    </head>
    <body>
        <!-- container section start -->
        <section id="container" class="">
            @yield('header')
            @yield('aside')
            @yield('main')
        </section>
        <!-- container section end-->
        @yield('gmap')
        @yield('js')
    </body>
</html>