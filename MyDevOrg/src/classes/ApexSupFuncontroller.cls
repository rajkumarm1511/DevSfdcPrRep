public with sharing class ApexSupFuncontroller {

    Public string Display_This_String{get;set;}
    Public ApexSupFuncontroller()
    {
    Display_This_String = 'value set in constructor';
    }
    
    Public void actionFunMethod(){
      Display_This_String = 'value set in action function method';
    }
    
    Public void actionsupmethod(){
      Display_This_String = 'value set in action Support method';
    }
}