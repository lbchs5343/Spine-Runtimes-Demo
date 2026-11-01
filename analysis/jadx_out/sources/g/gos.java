package g;

import j$.util.Objects;

/* loaded from: classes.dex */
public final class gos extends fox {

    /* renamed from: a, reason: collision with root package name */
    public final hed f18512a;

    /* renamed from: b, reason: collision with root package name */
    public final eek f18513b;

    public gos(hed hedVar, eek eekVar) {
        this.f18512a = hedVar;
        Objects.requireNonNull(eekVar);
        this.f18513b = eekVar;
    }

    @Override // g.eue
    public final fky d() {
        return acq.bj;
    }

    public final String toString() {
        return "INIT{" + this.f18513b + '}';
    }
}
