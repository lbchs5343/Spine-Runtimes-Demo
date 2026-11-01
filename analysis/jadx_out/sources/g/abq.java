package g;

/* loaded from: classes3.dex */
public final class abq implements gtx, fxn {

    /* renamed from: a, reason: collision with root package name */
    public final String f9934a;

    public abq(String str, int i) {
        switch (i) {
            case 1:
                bff.p(str, "query");
                this.f9934a = str;
                break;
            default:
                this.f9934a = str;
                break;
        }
    }

    @Override // g.fxn
    public String _co() {
        return this.f9934a;
    }

    @Override // g.fxn
    public void _cp(eob eobVar) {
    }

    @Override // g.gtx
    public Object ao() {
        throw new gyr(this.f9934a);
    }
}
