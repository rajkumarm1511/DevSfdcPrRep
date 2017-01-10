public class RenderedController {
    
    Public boolean ShowpageblockFlag{get; set;}
    Public Account accRec{get; set;}
    
    public RenderedController(){
        accRec = [select id,Name,AccountNumber from Account Limit 1];
        ShowpageblockFlag = false;
        }
        
    
    public void ShowBlockMethod() {
        ShowpageblockFlag = true;
    }

}