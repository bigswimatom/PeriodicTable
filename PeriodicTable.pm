# ****************************************************
#  * file  : PeriodicTable.pm
#  * author: nakai<bigswim.atom@gmail.com>
#  * create day  : Mon Nov 17 10:05:32 2014
#  * last updated: Mon Jul 10 10:11:46 2017
#
# ****************************************************

package PeriodicTable;
use strict;

our @PeriodicTable = qw(D H He Li Be B C N O F Ne Na Mg Al Si P S Cl Ar K Ca Sc Ti V Cr Mn Fe Co Ni Cu Zn Ga Ge As Se Br Kr Rb Sr Y Zr Nb Mo Tc Ru Rh Pd Ag Cd In Sn Sb Te I Xe Cs Ba La Ce Pr Nd Pm Sm Eu Gd Tb Dy Ho Er Tm Yb Lu Hf Ta W Re Os Ir Pt Au Hg Tl Pb Bi Po At Rn Fr Ra Ac Th Pa U Np Pu Am Cm Bk Cf Es Fm Md No Lr Rf Db Sg Bh Hs Mt Ds Rg Cn Nh Fl Mc Lv Ts Og);

our %ANum2Name;
our %AName2Num;
our %AName2Ncha;
my $i = 0;
foreach (@PeriodicTable){
  $ANum2Name{$i} = $_;
  $AName2Num{$_} = $i;
  $AName2Ncha{$_} = $i;
  $i++;
}
$AName2Ncha{"D"} = 1;

our @mass = ( 2.014, # D
              1.008, # H
              4.003, # He
              6.941, # Li
              9.012, # Be
             10.81,  # B
             12.01,  # C
             14.01,  # N
             16.00,  # O
             19.00,  # F
             20.18,  # Ne
             22.99,  # Na
             24.31,  # Mg
             26.98,  # Al
             28.09,  # Si
             30.97,  # P
             32.07,  # S
             35.45,  # Cl
             39.95,  # Ar
             39.10,  # K
             40.08,  # Ca
             44.96,  # Sc
             47.87,  # Ti
             50.94,  # V
             52.00,  # Cr
             54.94,  # Mn
             55.85,  # Fe
             58.93,  # Co
             58.69,  # Ni
             63.55,  # Cu
             65.38,  # Zn
             69.72,  # Ga
             72.63,  # Ge
             74,92,  # As
             78.96,  # Se
             79.90,  # Br
             83.80,  # Kr
            );
# amu to a.u.
foreach (@mass) {
  $_ *= 1822.9163246174103;
}

1;

