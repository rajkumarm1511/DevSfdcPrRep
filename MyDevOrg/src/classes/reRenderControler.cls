public class reRenderControler {

    public String OutputString { get; set; }
    
    Public reRenderControler()
    {
        OutputString = 'This is before ReRender Text';
    }

    public void reRenderBlock() {
        
        OutputString = 'This is After ReRender Text,A visualforce component in a VF page can be displayed or hidden by using rendered attribute. Rendered is bound to a Boolean variable in controller which can be switched between true and false making the vf component display or hide depending on Boolean value.';
        
    }

}