package g;

import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public final class guk implements czh {

    /* renamed from: e, reason: collision with root package name */
    public final Executor f18775e;

    /* renamed from: f, reason: collision with root package name */
    public final czh f18776f;

    public guk(Executor executor, czh czhVar) {
        this.f18775e = executor;
        this.f18776f = czhVar;
    }

    @Override // g.czh
    public final boolean a() {
        return this.f18776f.a();
    }

    @Override // g.czh
    public final daw b() {
        return this.f18776f.b();
    }

    @Override // g.czh
    public final anx c() {
        return this.f18776f.c();
    }

    @Override // g.czh
    public final void cancel() {
        this.f18776f.cancel();
    }

    @Override // g.czh
    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public final czh m16clone() {
        return new guk(this.f18775e, this.f18776f.m16clone());
    }

    @Override // g.czh
    public final void d(bmm bmmVar) {
        this.f18776f.d(new ffr(4, this, bmmVar, false));
    }
}
