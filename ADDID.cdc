import PersonContract from 0x05

transaction(id: Int){
    prepare(acct: AuthAccount){
    }


    execute {
        PersonContract.addId(id: id)
    }
}