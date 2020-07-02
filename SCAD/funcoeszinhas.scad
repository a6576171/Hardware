a = 20;

detalhe = $preview ? 32 : 128;


// linear_extrude(2)
//   text("Text");


minkowski()
{
    cube([20, 20, 20], center=true);
    sphere(d=10);
}


// cylinder(d1=20, d2=5, h=30);

// arco();

module arco ()
{
    intersection()
    { 
        cylinder(d=100, h=15, $fn=detalhe);

        translate([0, 0, -0.001])
            cube([60, 60, a]);
    }
}
