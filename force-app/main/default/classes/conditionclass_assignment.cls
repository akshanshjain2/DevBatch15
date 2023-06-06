public class conditionclass_assignment {
    public String Ifclassmethod(Integer month){
        String output_Month = 'Not a valid month';
        if(month == 1){
            output_Month = 'January';
        }
        else if(month == 2){
            output_Month = 'February';
        }
        return output_Month;
    }
    public String casemethod(String month){
        string output_Quarter = 'Enter a proper Month name';
        switch on month{
            when 'January','February','March'{
                output_Quarter = 'Quarter 1';
            }
            when else{
                output_Quarter = 'Not a valid Quarter';
            }
        }
        return output_Quarter;
    }
}