package g;

/* loaded from: classes.dex */
public abstract class coh extends fyw implements bdp, hcc {
    public final boj o;

    public coh(boj bojVar, boolean z) {
        super(z);
        aq((dta) bojVar._x(dwm.o));
        this.o = bojVar._y(this);
    }

    @Override // g.bdp
    public final void _z(Object obj) {
        Throwable a2 = sl.a(obj);
        if (a2 != null) {
            obj = new wh(a2, false);
        }
        Object al = al(obj);
        if (al == dzm.q) {
            return;
        }
        j(al);
    }

    @Override // g.hcc
    public final boj a() {
        return this.o;
    }

    @Override // g.bdp
    public final boj getContext() {
        return this.o;
    }

    @Override // g.fyw
    public final void p(dwb dwbVar) {
        kj.i(dwbVar, this.o);
    }

    @Override // g.fyw
    public final void q(Object obj) {
        if (!(obj instanceof wh)) {
            t(obj);
        } else {
            wh whVar = (wh) obj;
            r(whVar.f20211c, wh.f20210b.get(whVar) != 0);
        }
    }

    public void r(Throwable th, boolean z) {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void s(dwt dwtVar, coh cohVar, bto btoVar) {
        dwtVar.getClass();
        int i = bdc.f11307a[dwtVar.ordinal()];
        if (i == 1) {
            kj.y(btoVar, cohVar, this);
            return;
        }
        if (i == 2) {
            awt.ab(((bry) btoVar).e(cohVar, this))._z(dgi.f14134a);
            return;
        }
        if (i != 3) {
            if (i != 4) {
                throw new dwb();
            }
            return;
        }
        try {
            boj bojVar = this.o;
            Object ad = gs.ad(bojVar, null);
            try {
                baf.bc(2, btoVar);
                Object d2 = btoVar.d(cohVar, this);
                if (d2 != cxr.COROUTINE_SUSPENDED) {
                    _z(d2);
                }
            } finally {
                gs.av(bojVar, ad);
            }
        } catch (Throwable th) {
            _z(eg.i(th));
        }
    }

    public void t(Object obj) {
    }

    @Override // g.fyw
    public final String u() {
        return getClass().getSimpleName().concat(" was cancelled");
    }
}
