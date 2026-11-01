package g;

import java.util.concurrent.CancellationException;

/* loaded from: classes.dex */
public abstract class fpm extends hbm {
    public int k;

    public fpm(int i) {
        super(0L, fga.h);
        this.k = i;
    }

    public abstract Object h();

    public abstract void i(Object obj, CancellationException cancellationException);

    public abstract bdp j();

    public final void l(Throwable th, Throwable th2) {
        if (th == null && th2 == null) {
            return;
        }
        if (th != null && th2 != null) {
            cux.ag(th, th2);
        }
        if (th == null) {
            th = th2;
        }
        bff.d(th);
        kj.i(new czv("Fatal exception in coroutines machinery for " + this + ". Please read KDoc to 'handleFatalException' method and report this incident to maintainers", th), j().getContext());
    }

    public Throwable m(Object obj) {
        wh whVar = obj instanceof wh ? (wh) obj : null;
        if (whVar != null) {
            return whVar.f20211c;
        }
        return null;
    }

    public Object n(Object obj) {
        return obj;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0043, code lost:
    
        r7 = (g.dta) r7._x(g.dwm.o);
     */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void run() {
        Object obj = dgi.f14134a;
        cyl cylVar = this.ah;
        try {
            bdp j = j();
            bff.ag(j, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<T of kotlinx.coroutines.DispatchedTask>");
            sk skVar = (sk) j;
            w wVar = skVar.f19980d;
            Object obj2 = skVar.f19978b;
            boj context = wVar.getContext();
            Object ad = gs.ad(context, obj2);
            aoa bb = ad != gs.f18671c ? eyt.bb(wVar, context, ad) : null;
            try {
                boj context2 = wVar.getContext();
                Object h = h();
                Throwable m = m(h);
                if (m == null) {
                    int i = this.k;
                    boolean z = true;
                    if (i != 1 && i != 2) {
                        z = false;
                    }
                }
                dta dtaVar = null;
                if (dtaVar != null && !dtaVar.x()) {
                    CancellationException ar = ((fyw) dtaVar).ar();
                    i(h, ar);
                    wVar._z(eg.i(ar));
                } else if (m != null) {
                    wVar._z(eg.i(m));
                } else {
                    wVar._z(n(h));
                }
                if (bb == null || bb._bh()) {
                    gs.av(context, ad);
                }
                try {
                    cylVar.getClass();
                } catch (Throwable th) {
                    obj = eg.i(th);
                }
                l(null, sl.a(obj));
            } catch (Throwable th2) {
                if (bb == null || bb._bh()) {
                    gs.av(context, ad);
                }
                throw th2;
            }
        } catch (Throwable th3) {
            try {
                cylVar.getClass();
            } catch (Throwable th4) {
                obj = eg.i(th4);
            }
            l(th3, sl.a(obj));
        }
    }
}
