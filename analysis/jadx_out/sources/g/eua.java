package g;

/* loaded from: classes3.dex */
public final class eua extends axr implements cvw {
    final /* synthetic */ cbm $address;
    final /* synthetic */ bws $certificatePinner;
    final /* synthetic */ czl $unverifiedHandshake;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public eua(bws bwsVar, czl czlVar, cbm cbmVar) {
        super(0);
        this.$certificatePinner = bwsVar;
        this.$unverifiedHandshake = czlVar;
        this.$address = cbmVar;
    }

    @Override // g.cvw
    public final Object invoke() {
        aky akyVar = this.$certificatePinner.f12338c;
        bff.d(akyVar);
        return akyVar.ap(this.$address.f12590a.f16373c, this.$unverifiedHandshake.e());
    }
}
