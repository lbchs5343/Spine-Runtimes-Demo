package g;

/* loaded from: classes.dex */
public final class fwd extends cgo {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f17502d;
    public final /* synthetic */ cms h;
    public final /* synthetic */ int i;

    public /* synthetic */ fwd(cms cmsVar, int i, int i2) {
        this.i = i2;
        this.h = cmsVar;
        this.f17502d = i;
    }

    @Override // g.cgo
    public final int _r(int i) {
        cng f2;
        cng f3;
        switch (this.i) {
            case 0:
                androidx.recyclerview.widget.m adapter = ((efx) this.h).bd.getAdapter();
                if (!(adapter instanceof dfi)) {
                    return 1;
                }
                dfi dfiVar = (dfi) adapter;
                cng f4 = dfiVar.f(i);
                if ((f4 == null || !(f4 instanceof ajr)) && ((f2 = dfiVar.f(i)) == null || !(f2 instanceof edn))) {
                    return 1;
                }
                return this.f17502d;
            default:
                androidx.recyclerview.widget.m adapter2 = ((elf) this.h).u.getAdapter();
                if (!(adapter2 instanceof bzj)) {
                    return 1;
                }
                bzj bzjVar = (bzj) adapter2;
                cng f5 = bzjVar.f(i);
                if ((f5 != null && (f5 instanceof byz)) || ((f3 = bzjVar.f(i)) != null && (f3 instanceof edn))) {
                    return this.f17502d;
                }
                bzjVar.f(i);
                return 1;
        }
    }
}
