package g;

/* loaded from: classes.dex */
public final class ggy extends aov {
    public final Object n;
    public final czr o;
    public final fyw p;
    public final etn q;

    public ggy(fyw fywVar, etn etnVar, czr czrVar, Object obj) {
        this.p = fywVar;
        this.q = etnVar;
        this.o = czrVar;
        this.n = obj;
    }

    @Override // g.era
    public final void b(Throwable th) {
        czr aa = fyw.aa(this.o);
        fyw fywVar = this.p;
        etn etnVar = this.q;
        Object obj = this.n;
        if (aa != null) {
            while (kj.m(aa.n, false, new ggy(fywVar, etnVar, aa, obj), 1) == asb.f10739a) {
                aa = fyw.aa(aa);
                if (aa == null) {
                }
            }
            return;
        }
        fywVar.m(fywVar.ak(etnVar, obj));
    }
}
