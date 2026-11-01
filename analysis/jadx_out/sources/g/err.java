package g;

import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public final class err implements etk, fbr, brm {

    /* renamed from: b, reason: collision with root package name */
    public final Object f16048b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f16049c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f16050d;

    /* renamed from: e, reason: collision with root package name */
    public final Executor f16051e;

    public /* synthetic */ err(Executor executor, bea beaVar, chw chwVar, int i) {
        this.f16050d = i;
        this.f16051e = executor;
        this.f16049c = beaVar;
        this.f16048b = chwVar;
    }

    public err(Executor executor, brm brmVar) {
        this.f16050d = 2;
        this.f16049c = new Object();
        this.f16051e = executor;
        this.f16048b = brmVar;
    }

    public err(Executor executor, dyt dytVar) {
        this.f16050d = 3;
        this.f16049c = new Object();
        this.f16051e = executor;
        this.f16048b = dytVar;
    }

    public err(Executor executor, etk etkVar) {
        this.f16050d = 5;
        this.f16049c = new Object();
        this.f16051e = executor;
        this.f16048b = etkVar;
    }

    public err(Executor executor, fbr fbrVar) {
        this.f16050d = 4;
        this.f16049c = new Object();
        this.f16051e = executor;
        this.f16048b = fbrVar;
    }

    private final void g(ci ciVar) {
        if (ciVar.a() || ((chw) ciVar).f12905e) {
            return;
        }
        synchronized (this.f16049c) {
        }
        this.f16051e.execute(new fuy(15, this, ciVar, false));
    }

    private final void h(ci ciVar) {
        if (((chw) ciVar).f12905e) {
            synchronized (this.f16049c) {
            }
            this.f16051e.execute(new aku(12, this));
        }
    }

    private final void i(ci ciVar) {
        synchronized (this.f16049c) {
        }
        this.f16051e.execute(new fuy(9, this, ciVar, false));
    }

    @Override // g.brm
    public void a() {
        ((chw) this.f16048b).o();
    }

    public final void f(ci ciVar) {
        switch (this.f16050d) {
            case 0:
                this.f16051e.execute(new efr(this, 25, ciVar));
                return;
            case 1:
                this.f16051e.execute(new efr(this, 27, ciVar));
                return;
            case 2:
                h(ciVar);
                return;
            case 3:
                i(ciVar);
                return;
            case 4:
                g(ciVar);
                return;
            default:
                if (ciVar.a()) {
                    synchronized (this.f16049c) {
                    }
                    this.f16051e.execute(new fuy(17, this, ciVar, false));
                    return;
                }
                return;
        }
    }

    @Override // g.fbr
    public void onFailure(Exception exc) {
        ((chw) this.f16048b).l(exc);
    }

    @Override // g.etk
    public void onSuccess(Object obj) {
        ((chw) this.f16048b).m(obj);
    }
}
