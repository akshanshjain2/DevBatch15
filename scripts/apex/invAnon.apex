InventoryManager inv1 = new InventoryManager();
inv1.setCostPrice(100);
inv1.setSellingPrice(150);
inv1.productDisplay();

InventoryManager inv2 = new InventoryManager();
inv2.setCostPrice(200);
inv2.setSellingPrice(210);
inv2.productDisplay();

InventoryManager inv3 = new InventoryManager('Product 1', 'P123');
inv3.setCostPrice(500);
inv3.setSellingPrice(520);
inv3.productDisplay();

InventoryManager inv4 = new InventoryManager('Product 2', 'P456');
inv4.setCostPrice(40);
inv4.setSellingPrice(48);
inv4.productDisplay();

InventoryManager inv5 = new InventoryManager('Product 3', 'P789');
inv5.setCostPrice(80);
inv5.setSellingPrice(65);
inv5.productDisplay();

System.debug('Product Count : ' + InventoryManager.productCount);