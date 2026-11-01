package g;

import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* loaded from: classes.dex */
public final class sk extends fpm implements qz, bdp {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f19977a = AtomicReferenceFieldUpdater.newUpdater(sk.class, Object.class, "_reusableCancellableContinuation$volatile");
    private volatile /* synthetic */ Object _reusableCancellableContinuation$volatile;

    /* renamed from: b, reason: collision with root package name */
    public final Object f19978b;

    /* renamed from: c, reason: collision with root package name */
    public final cpk f19979c;

    /* renamed from: d, reason: collision with root package name */
    public final w f19980d;

    /* renamed from: e, reason: collision with root package name */
    public Object f19981e;

    public sk(cpk cpkVar, w wVar) {
        super(-1);
        this.f19979c = cpkVar;
        this.f19980d = wVar;
        this.f19981e = baf.q;
        this.f19978b = gs.al(wVar.getContext());
    }

    @Override // g.bdp
    public final void _z(Object obj) {
        w wVar = this.f19980d;
        boj context = wVar.getContext();
        Throwable a2 = sl.a(obj);
        Object whVar = a2 == null ? obj : new wh(a2, false);
        cpk cpkVar = this.f19979c;
        if (cpkVar.w(context)) {
            this.f19981e = whVar;
            this.k = 0;
            cpkVar.i(context, this);
            return;
        }
        bkg b2 = fla.b();
        if (b2.l >= 4294967296L) {
            this.f19981e = whVar;
            this.k = 0;
            b2.q(this);
            return;
        }
        b2.s(true);
        try {
            boj context2 = wVar.getContext();
            Object ad = gs.ad(context2, this.f19978b);
            try {
                wVar._z(obj);
                while (b2.r()) {
                }
            } finally {
                gs.av(context2, ad);
            }
        } finally {
            try {
            } finally {
            }
        }
    }

    @Override // g.qz
    public final qz f() {
        w wVar = this.f19980d;
        if (awf.n(wVar)) {
            return wVar;
        }
        return null;
    }

    @Override // g.bdp
    public final boj getContext() {
        return this.f19980d.getContext();
    }

    @Override // g.fpm
    public final Object h() {
        Object obj = this.f19981e;
        this.f19981e = baf.q;
        return obj;
    }

    @Override // g.fpm
    public final void i(Object obj, CancellationException cancellationException) {
        if (obj instanceof fwh) {
            ((fwh) obj).getClass();
            throw null;
        }
    }

    @Override // g.fpm
    public final bdp j() {
        return this;
    }

    public final String toString() {
        return "DispatchedContinuation[" + this.f19979c + ", " + fso.ax(this.f19980d) + ']';
    }
}
