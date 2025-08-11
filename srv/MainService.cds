using {EVA} from '../db/EVA_schema';

service MainService {

     // Audit mgmt Rolewise path
    @readonly
    entity h6ckq9e7rapy5z1k (INRGUID :String(20)) as select from EVA.M.ROLEWISEPATH (INRGUID : :INRGUID) {*};

}
