package g;

/* loaded from: classes.dex */
public final class aoa extends azc {
    public final ThreadLocal h;
    private volatile boolean threadLocalIsSet;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public aoa(w wVar, boj bojVar) {
        super(wVar, bojVar._x(r0) == null ? bojVar._y(r0) : bojVar);
        aum aumVar = aum.f10876a;
        this.h = new ThreadLocal();
        if (wVar.getContext()._x(bmr.j) instanceof cpk) {
            return;
        }
        Object ad = gs.ad(bojVar, null);
        gs.av(bojVar, ad);
        i(bojVar, ad);
    }

    public final boolean _bh() {
        boolean z = this.threadLocalIsSet && this.h.get() == null;
        this.h.remove();
        return !z;
    }

    public final void i(boj bojVar, Object obj) {
        this.threadLocalIsSet = true;
        this.h.set(new ger(bojVar, obj));
    }

    @Override // g.azc, g.fyw
    public final void j(Object obj) {
        if (this.threadLocalIsSet) {
            ger gerVar = (ger) this.h.get();
            if (gerVar != null) {
                gs.av((boj) gerVar.b(), gerVar.c());
            }
            this.h.remove();
        }
        Object aa = cux.aa(obj);
        w wVar = this.l;
        boj context = wVar.getContext();
        Object ad = gs.ad(context, null);
        aoa bb = ad != gs.f18671c ? eyt.bb(wVar, context, ad) : null;
        try {
            this.l._z(aa);
            if (bb == null || bb._bh()) {
                gs.av(context, ad);
            }
        } catch (Throwable th) {
            if (bb == null || bb._bh()) {
                gs.av(context, ad);
            }
            throw th;
        }
    }
}
