`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Mr.Moliya
// id no: 201501062. 
// Design Name:find invarse of 5 X 5 matrix
// Module Name:    inverse-of-matrix 
// Target Devices: FPGA
//////////////////////////////////////////////////////////////////////////////////
module inverseofmatrix(a11,a12,a13,a14,a15,a21,a22,a23,a24,a25,a31,a32,a33,a34,a35,a41,a42,a43,a44,a45,a51,a52,a53,a54,a55,b11,b12,b13,b14,b15,b21,b22,b23,b24,b25,b31,b32,b33,b34,b35,b41,b42,b43,b44,b45,b51,b52,b53,b54,b55);
input [7:0]a11,a12,a13,a14,a15,
a21,a22,a23,a24,a25,
a31,a32,a33,a34,a35,
a41,a42,a43,a44,a45,
a51,a52,a53,a54,a55;

output [7:0]b11,b12,b13,b14,b15,
b21,b22,b23,b24,b25,
b31,b32,b33,b34,b35,
b41,b42,b43,b44,b45,
b51,b52,b53,b54,b55;

//wire for identity matrix
wire [7:0]i11,i12,i13,i14,i15,
i21,i22,i23,i24,i25,
i31,i32,i33,i34,i35,
i41,i42,i43,i44,i45,
i51,i52,i53,i54,i55;
//for matrix after 1st pivot created
wire [7:0]t11,t12,t13,t14,t15;
wire [7:0]t16,t17,t18,t19,t20;
wire [7:0]t21,t22,t23,t24,t25;
wire [7:0]t26,t27,t28,t29,t30;
wire [7:0]t31,t32,t33,t34,t35;
wire [7:0]t36,t37,t38,t39,t40;
wire [7:0]t41,t42,t43,t44,t45;
wire [7:0]t46,t47,t48,t49,t50;
wire [7:0]t51,t52,t53,t54,t55;
wire [7:0]t56,t57,t58,t59,t60;

//for matrix after 2nd pivot created
wire [7:0]s21,s22,s23,s24,s25;
wire [7:0]s26,s27,s28,s29,s30;
wire [7:0]s31,s32,s33,s34,s35;
wire [7:0]s36,s37,s38,s39,s40;
wire [7:0]s41,s42,s43,s44,s45;
wire [7:0]s46,s47,s48,s49,s50;
wire [7:0]s51,s52,s53,s54,s55;
wire [7:0]s56,s57,s58,s59,s60;

//for matrix after 3nd pivot created
wire [7:0]r31,r32,r33,r34,r35;
wire [7:0]r36,r37,r38,r39,r40;
wire [7:0]r41,r42,r43,r44,r45;
wire [7:0]r46,r47,r48,r49,r50;
wire [7:0]r51,r52,r53,r54,r55;
wire [7:0]r56,r57,r58,r59,r60;

//for matrix after 4nd pivot created
wire [7:0]q41,q42,q43,q44,q45;
wire [7:0]q46,q47,q48,q49,q50;
wire [7:0]q51,q52,q53,q54,q55;
wire [7:0]q56,q57,q58,q59,q60;

//for matrix after e.f. created
wire [7:0]p11,p12,p13,p14,p15;
wire [7:0]p16,p17,p18,p19,p20;
wire [7:0]p21,p22,p23,p24,p25;
wire [7:0]p26,p27,p28,p29,p30;
wire [7:0]p31,p32,p33,p34,p35;
wire [7:0]p36,p37,p38,p39,p40;
wire [7:0]p41,p42,p43,p44,p45;
wire [7:0]p46,p47,p48,p49,p50;
wire [7:0]p51,p52,p53,p54,p55;
wire [7:0]p56,p57,p58,p59,p60;

//for upper element of fifth pivot
wire [7:0]f11,f12,f13,f14,f15;
wire [7:0]f16,f17,f18,f19,f20;
wire [7:0]f21,f22,f23,f24,f25;
wire [7:0]f26,f27,f28,f29,f30;
wire [7:0]f31,f32,f33,f34,f35;
wire [7:0]f36,f37,f38,f39,f40;
wire [7:0]f41,f42,f43,f44,f45;
wire [7:0]f46,f47,f48,f49,f50;

//for upper element of fourth pivot
wire [7:0]e11,e12,e13,e14,e15;
wire [7:0]e16,e17,e18,e19,e20;
wire [7:0]e21,e22,e23,e24,e25;
wire [7:0]e26,e27,e28,e29,e30;
wire [7:0]e31,e32,e33,e34,e35;
wire [7:0]e36,e37,e38,e39,e40;

//for upper element of third pivot
wire [7:0]d11,d12,d13,d14,d15;
wire [7:0]d16,d17,d18,d19,d20;
wire [7:0]d21,d22,d23,d24,d25;
wire [7:0]d26,d27,d28,d29,d30;

//for upper element of second pivot
wire [7:0]c11,c12,c13,c14,c15;
wire [7:0]c16,c17,c18,c19,c20;

//define identity matrix
assign i11=8'b1;
assign i22=8'b1;
assign i33=8'b1;
assign i44=8'b1;
assign i55=8'b1;
assign i12=8'b0;
assign i13=8'b0;
assign i14=8'b0;
assign i15=8'b0;
assign i21=8'b0;
assign i23=8'b0;
assign i24=8'b0;
assign i25=8'b0;
assign i31=8'b0;
assign i32=8'b0;
assign i34=8'b0;
assign i35=8'b0;
assign i41=8'b0;
assign i42=8'b0;
assign i43=8'b0;
assign i45=8'b0;
assign i51=8'b0;
assign i52=8'b0;
assign i53=8'b0;
assign i54=8'b0;

//make first pivot position 1.
assign t11=1'b1;
assign t12=a12/a11;
assign t13=a13/a11;
assign t14=a14/a11;
assign t15=a15/a11;
//opretion on identity matrix 
assign t16=i11/a11;
assign t17=i12;
assign t18=i13;
assign t19=i14;
assign t20=i15;
//for make a21 =0
assign t21=a21*t11-a21*t11;
assign t22=a22*t11-a21*t12;
assign t23=a23*t11-a21*t13;
assign t24=a24*t11-a21*t14;
assign t25=a25*t11-a21*t15;

assign t26=i21*t11-a21*t16;
assign t27=i22;
assign t28=i23;
assign t29=i24;
assign t30=i25;

//for make a31=0.
assign t31=a31*t11-a31*t11;
assign t32=a32*t11-a31*t12;
assign t33=a33*t11-a31*t13;
assign t34=a34*t11-a31*t14;
assign t35=a35*t11-a31*t15;

assign t36=i31*t11-a31*t16;
assign t37=i32;
assign t38=i33;
assign t39=i34;
assign t40=i35;

//for make a41=0.
assign t41=a41*t11-a41*t11;
assign t42=a42*t11-a41*t12;
assign t43=a43*t11-a41*t13;
assign t44=a44*t11-a41*t14;
assign t45=a45*t11-a41*t15;

assign t46=i41*t11-a41*t16;
assign t47=i42;
assign t48=i43;
assign t49=i44;
assign t50=i45;

//for make a51=0.
assign t51=a51*t11-a51*t11;
assign t52=a52*t11-a51*t12;
assign t53=a53*t11-a51*t13;
assign t54=a54*t11-a51*t14;
assign t55=a55*t11-a51*t15;

assign t56=i51-a51*t16;
assign t57=i52;
assign t58=i53;
assign t59=i54;
assign t60=i55;

//for make a22=1(for second pivot position)
assign s21=t21;
assign s22=t22/t22;
assign s23=t23/t22;
assign s24=t24/t22;
assign s25=t25/t22;

assign s26=t26/t22;
assign s27=t27/t22;
assign s28=t28;
assign s29=t29;
assign s30=t30;

//for make a32 =0
assign s31=t31;
assign s32=t32*s22-t32*s22;
assign s33=t33*s22-t32*s23;
assign s34=t34*s22-t32*s24;
assign s35=t35*s22-t32*s25;

assign s36=t36*s22-t33*s26;
assign s37=t37*s22-t32*s27;
assign s38=t38;
assign s39=t39;
assign s40=t40;

//for make a42 =0
assign s41=t41;
assign s42=t42*s22-t42*s22;
assign s43=t43*s22-t42*s23;
assign s44=t44*s22-t42*s24;
assign s45=t45*s22-t42*s25;

assign s46=t46*s22-t42*s26;
assign s47=t47*s22-t42*s27;
assign s48=t48;
assign s49=t49;
assign s50=t50;

//for make a52 =0
assign s51=t51;
assign s52=t52*s22-t52*s22;
assign s53=t53*s22-t52*s23;
assign s54=t54*s22-t52*s24;
assign s55=t55*s22-t52*s25;

assign s56=t56*s22-t52*s26;
assign s57=t57*s22-t52*s27;
assign s58=t58;
assign s59=t59;
assign s60=t60;

//for make a33=1(for third pivot position)
assign r31=s31;
assign r32=s32;
assign r33=8'b1;
assign r34=s34/s33;
assign r35=s35/s33;

assign r36=s36/s33;
assign r37=s37/s33;
assign r38=s38/s33;
assign r39=s39/s33;
assign r40=s40/s33;

assign r41=s41;
assign r42=s42;
assign r43=s43*r33-s43*r33;
assign r44=s44*r33-s43*r34;
assign r45=s45*r33-s43*r35;

assign r46=s46*r33-s43*r36;
assign r47=s47*r33-s43*r37;
assign r48=s48*r33-s43*r38;
assign r49=s49;
assign r50=s50;

assign r51=s51;
assign r52=s52;
assign r53=s53*r33-s53*r33;
assign r54=s54*r33-s53*r34;
assign r55=s55*r33-s53*r35;

assign r56=s56*r33-s53*r36;
assign r57=s57*r33-s53*r37;
assign r58=s58*r33-s53*r38;
assign r59=s59;
assign r60=s60;

//for make a44=1(for fourth pivot position)
assign q41=r41;
assign q42=r42;
assign q43=r43;
assign q44=r44/r44;
assign q45=r45/r44;

assign q46=r46/r44;
assign q47=r47/r44;
assign q48=r48/r44;
assign q49=r49/r44;
assign q50=r50/r44;

assign q51=r51;
assign q52=r52;
assign q53=r53;
assign q54=r54*q44-r54*q44;
assign q55=r55*q44-r54*q45;

assign q56=r56*q44-r54*q46;
assign q57=r57*q44-r54*q47;
assign q58=r58*q44-r54*q48;
assign q59=r59*q44-r54*q49;
assign q60=r60;

//final matrix p after e.f. created.
assign p11=t11;
assign p12=t12;
assign p13=t13;
assign p14=t14;
assign p15=t15;
assign p16=t16;
assign p17=t17;
assign p18=t18;
assign p19=t19;
assign p20=t20;

assign p21=s21;
assign p22=s22;
assign p23=s23;
assign p24=s24;
assign p25=s25;
assign p26=s26;
assign p27=s27;
assign p28=s28;
assign p29=s29;
assign p30=s30;

assign p31=r31;
assign p32=r32;
assign p33=r33;
assign p34=r34;
assign p35=r35;
assign p36=r36;
assign p37=r37;
assign p38=r38;
assign p39=r39;
assign p40=r40;

assign p41=q41;
assign p42=q42;
assign p43=q43;
assign p44=q44;
assign p45=q45;
assign p46=q46;
assign p47=q47;
assign p48=q48;
assign p49=q49;
assign p50=q50;

//for make a55=1(for fifth pivot position)
assign p51=q51;
assign p52=q52;
assign p53=q53;
assign p54=q54;
assign p55=q55/q55;

assign p56=q56/q55;
assign p57=q57/q55;
assign p58=q58/q55;
assign p59=q59/q55;
assign p60=q60/q55;
//e.f. form created...
//now, step to find rref...

//for making f45=0
assign f41=p41;
assign f42=p42;
assign f43=p43;
assign f44=p44;
assign f45=p45*p55-p45*p55;
assign f46=p46*p55-p45*p56;
assign f47=p47*p55-p45*p57;
assign f48=p48*p55-p45*p58;
assign f49=p49*p55-p45*p59;
assign f50=p50*p55-p45*p60;

//for making f35=0
assign f31=p31;
assign f32=p32;
assign f33=p33;
assign f34=p34;
assign f35=p35*p55-p35*p55;
assign f36=p36*p55-p35*p56;
assign f37=p37*p55-p35*p57;
assign f38=p38*p55-p35*p58;
assign f39=p39*p55-p35*p59;
assign f40=p40*p55-p35*p60;

//for making f25=0
assign f21=p21;
assign f22=p22;
assign f23=p23;
assign f24=p24;
assign f25=p25*p55-p25*p55;
assign f26=p26*p55-p25*p56;
assign f27=p27*p55-p25*p57;
assign f28=p28*p55-p25*p58;
assign f29=p29*p55-p25*p59;
assign f30=p30*p55-p25*p60;

//for making f15=0
assign f11=p11;
assign f12=p12;
assign f13=p13;
assign f14=p14;
assign f15=p15*p55-p15*p55;
assign f16=p16*p55-p15*p56;
assign f17=p17*p55-p15*p57;
assign f18=p18*p55-p15*p58;
assign f19=p19*p55-p15*p59;
assign f20=p20*p55-p15*p60;

//for making e34=0
assign e31=f31;
assign e32=f32;
assign e33=f33;
assign e34=f34*f44-f34*f44;
assign e35=f35*f44-f34*f45;
assign e36=f36*f44-f34*f46;
assign e37=f37*f44-f34*f47;
assign e38=f38*f44-f34*f48;
assign e39=f39*f44-f34*f49;
assign e40=f40*f44-f34*f50;

//for making e24=0
assign e21=f21;
assign e22=f22;
assign e23=f23;
assign e24=f24*f44-f24*f44;
assign e25=f25*f44-f24*f45;
assign e26=f26*f44-f24*f46;
assign e27=f27*f44-f24*f47;
assign e28=f28*f44-f24*f48;
assign e29=f29*f44-f24*f49;
assign e30=f30*f44-f24*f50;

//for making e14=0
assign e11=f11;
assign e12=f12;
assign e13=f13;
assign e14=f14*f44-f14*f44;
assign e15=f15*f44-f14*f45;
assign e16=f16*f44-f14*f46;
assign e17=f17*f44-f14*f47;
assign e18=f18*f44-f14*f48;
assign e19=f19*f44-f14*f49;
assign e20=f20*f44-f14*f50;

//for making d23=0
assign d21=e21;
assign d22=e22;
assign d23=e23*e33-e23*e33;
assign d24=e24*e33-e23*e34;
assign d25=e25*e33-e23*e35;
assign d26=e26*e33-e23*e36;
assign d27=e27*e33-e23*e37;
assign d28=e28*e33-e23*e38;
assign d29=e29*e33-e23*e39;
assign d30=e30*e33-e23*e40;

//for making d13=0
assign d11=e11;
assign d12=e12;
assign d13=e13*e33-e13*e33;
assign d14=e14*e33-e13*e34;
assign d15=e15*e33-e13*e35;
assign d16=e16*e33-e13*e36;
assign d17=e17*e33-e13*e37;
assign d18=e18*e33-e13*e38;
assign d19=e19*e33-e13*e39;
assign d20=e20*e33-e13*e40;

//for making c12=0
assign c11=d11;
assign c12=d12*d22-d12*d22;
assign c13=d13*d22-d12*d23;
assign c14=d14*d22-d12*d24;
assign c15=d15*d22-d12*d25;
assign c16=d16*d22-d12*d26;
assign c17=d17*d22-d12*d27;
assign c18=d18*d22-d12*d28;
assign c19=d19*d22-d12*d29;
assign c20=d20*d22-d12*d30;

//for show inverse (outputs)
assign b11=c16;
assign b12=c17;
assign b13=c18;
assign b14=c19;
assign b15=c20;

assign b21=d26;
assign b22=d27;
assign b23=d28;
assign b24=d29;
assign b25=d30;

assign b31=e36;
assign b32=e37;
assign b33=e38;
assign b34=e39;
assign b35=e40;

assign b41=f46;
assign b42=f47;
assign b43=f48;
assign b44=f49;
assign b45=f50;

assign b51=p56;
assign b52=p57;
assign b53=p58;
assign b54=p59;
assign b55=p60;

//for show rref...
//assign b11=c11;
//assign b12=c12;
//assign b13=c13;
//assign b14=c14;
//assign b15=c15;
//
//assign b21=d21;
//assign b22=d22;
//assign b23=d23;
//assign b24=d24;
//assign b25=d25;
//
//assign b31=e31;
//assign b32=e32;
//assign b33=e33;
//assign b34=e34;
//assign b35=e35;
//
//assign b41=f41;
//assign b42=f42;
//assign b43=f43;
//assign b44=f44;
//assign b45=f45;
//
//assign b51=p51;
//assign b52=p52;
//assign b53=p53;
//assign b54=p54;
//assign b55=p55;
 
 

endmodule
