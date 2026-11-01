package androidx.lifecycle;

import g.ajm;
import g.ajs;
import g.bbq;
import g.dtn;
import g.fqv;
import g.iz;
import g.jn;

/* loaded from: classes.dex */
class LiveData$LifecycleBoundObserver extends bbq implements ajm {

    /* renamed from: a, reason: collision with root package name */
    public final iz f232a;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ a f233c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LiveData$LifecycleBoundObserver(a aVar, iz izVar, jn jnVar) {
        super(aVar, jnVar);
        this.f233c = aVar;
        this.f232a = izVar;
    }

    @Override // g.ajm
    public final void b(iz izVar, dtn dtnVar) {
        iz izVar2 = this.f232a;
        fqv fqvVar = ((ajs) izVar2.getLifecycle()).f10342g;
        if (fqvVar == fqv.DESTROYED) {
            this.f233c.m(this.i);
            return;
        }
        fqv fqvVar2 = null;
        while (fqvVar2 != fqvVar) {
            k(e());
            fqvVar2 = fqvVar;
            fqvVar = ((ajs) izVar2.getLifecycle()).f10342g;
        }
    }

    @Override // g.bbq
    public final boolean d(iz izVar) {
        return this.f232a == izVar;
    }

    @Override // g.bbq
    public final boolean e() {
        return ((ajs) this.f232a.getLifecycle()).f10342g.b(fqv.STARTED);
    }

    @Override // g.bbq
    public final void f() {
        this.f232a.getLifecycle().n(this);
    }
}
