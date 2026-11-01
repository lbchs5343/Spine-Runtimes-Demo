package g;

/* loaded from: classes3.dex */
public final class fhz implements ffh {

    /* renamed from: a, reason: collision with root package name */
    public final ffh[] f16821a;

    public fhz(ffh... ffhVarArr) {
        this.f16821a = ffhVarArr;
    }

    @Override // g.ffh
    public final eqc c(Class cls) {
        for (int i = 0; i < 2; i++) {
            ffh ffhVar = this.f16821a[i];
            if (ffhVar.d(cls)) {
                return ffhVar.c(cls);
            }
        }
        throw new UnsupportedOperationException("No factory is available for message type: ".concat(cls.getName()));
    }

    @Override // g.ffh
    public final boolean d(Class cls) {
        for (int i = 0; i < 2; i++) {
            if (this.f16821a[i].d(cls)) {
                return true;
            }
        }
        return false;
    }
}
