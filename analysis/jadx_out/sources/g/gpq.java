package g;

import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public final class gpq extends dme {

    /* renamed from: d, reason: collision with root package name */
    public dme f18541d;

    public gpq(dme dmeVar) {
        bff.p(dmeVar, "delegate");
        this.f18541d = dmeVar;
    }

    @Override // g.dme
    public final void _au() {
        this.f18541d._au();
    }

    @Override // g.dme
    public final dme _av(long j) {
        bff.p(TimeUnit.MILLISECONDS, "unit");
        return this.f18541d._av(j);
    }

    @Override // g.dme
    public final dme a(long j) {
        return this.f18541d.a(j);
    }

    @Override // g.dme
    public final boolean r() {
        return this.f18541d.r();
    }

    @Override // g.dme
    public final dme s() {
        return this.f18541d.s();
    }

    @Override // g.dme
    public final dme t() {
        return this.f18541d.t();
    }

    @Override // g.dme
    public final long u() {
        return this.f18541d.u();
    }
}
