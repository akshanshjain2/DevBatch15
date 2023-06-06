public class InventoryManager {
    String productName;
    String productCode;
    Integer costPrice;
    Integer sellingPrice;
    public Static Integer productCount = 0;

    public InventoryManager() {
        productCount++;
    }

    public InventoryManager(String productName, String productCode) {
        this.productName = productName;
        this.productCode = productCode;
        productCount++;
    }

    public void setCostPrice(Integer costPrice){
        this.costPrice = costPrice;
    }

    public Integer getCostPrice(){
        return this.costPrice;
    }

    public void setSellingPrice(Integer sellingPrice){
        this.sellingPrice = sellingPrice;
    }

    public Integer getSellingPrice(){
        return this.sellingPrice;
    }
    
    public void productDisplay(){
        System.debug('Product Name : ' + this.productName);
        System.debug('Product Code : ' + this.productCode);
        System.debug('Cost Price : ' + this.costPrice);
        System.debug('Selling Price : ' + this.sellingPrice);
        Decimal profitMargin = ((this.sellingPrice - this.costPrice)*100/this.costPrice);
        System.debug('Profit Margin : ' + profitMargin);
        if(profitMargin >= 20){
            System.debug('Star Product');
        }
        else{
            System.debug('Average Product');
        }
    }
}