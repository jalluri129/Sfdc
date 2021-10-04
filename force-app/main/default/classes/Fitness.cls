public class Fitness{

public integer calculateBMI(integer weight, integer height){

integer BMI = (weight)/(height*height);

return BMI;
}
public integer calculatepace(integer distance, integer minutes){

integer tinmin= (distance)/(minutes);

integer tinhr = tinmin/60;

return tinhr;
}
}