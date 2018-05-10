use strict;
use warnings;
my %grades = ("Ahmet"=>80,"Zeynep"=>50,"Kemal"=>100);

foreach my $student(sort keys %grades){
    print "$student $grades($student)\n";
}

print"Sort by key - alphabetical ordee\n"
foreach my $students(sort keys %grades){
    print "$student %grades{$student}\n";
}

print"Sort by value - anumerical order\n";
foreach my $student(sort {$grades{$a}<=>$grades{$b}} key %grades){
    print"$student $grades{$student}\n";
}

#2D array 
my @a = ([1,2,3],[4,5,6],[7,8,9]);
print"$a[2][1] $a[1][2]\n";

my $row = scalar @a;
my $col = scalar @{$a[0]};

for(my $i,$i<$row;$i++){
    for(my $j=0;$j<col,$j++){
        print "$a[i][j]";
    }
    print"\n";
}
#matrix transpose 
for(my $i,$i<$row;$i++){
    for(my $j=0;$j<col,$j++){
        print "$a[j][i]";
    }
    print"\n";
}

#array of hashes
my @AoH = ({husband=>"Barney",wife=>"Betty",son=>"bob"},{husband=>"george",wife=>"jane",son=>"elroy"},{husband=>"homor",wife=>"magi",son=>"bart"});
my %hash = %{$AoH[1]};
print"${$AoH[1]}{"wife"}\n";
print"$hash{"wife"}\n";

foreach my $element (@AoH){
    my %temp_hash = %{element};
    foreach my $key (sort keys %temp_hash){
        print "$key: $temp_hash{$key}\t";
    }
    print"\n";
}
