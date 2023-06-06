@istest
public class AssetsTriggerHandlerTest {
    @istest
    static void assetHandlerUpdateTest(){
        account acc= new account();
        acc.name= 'test acc';
        insert acc;
        list<asset> assetList = new  list<asset> ();
        for (Integer i = 0; i < 200; i++) {
            asset a = new asset();
            a.name= 'test asset' + i;
            a.accountid=acc.id;
            if (i<100) {
                a.status='Installed';
                assetList.add(a);
            }else if (i<200) {
                a.status='Shipped';
                assetList.add(a);
        }
        insert assetList;
        //testing insert section:
        list<asset> assets = [select id, status from asset];
        assert.areEqual(200, assets.size());
        asset asset1 = [select id, name, status, description from asset where status='Shipped' limit 1];
        asset asset2 = [select id, name, status, description from asset where status='Shipped' limit 1];
        assert.isTrue(asset1.description.contains('Insatalled'));
        assert.isTrue(asset2.description.contains('Shipped'));
        }
    }
}