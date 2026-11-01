package g;

import java.io.IOException;

/* loaded from: classes3.dex */
public final class fsb extends ehi {

    /* renamed from: a, reason: collision with root package name */
    public IOException f17324a;

    /* renamed from: b, reason: collision with root package name */
    public final ehi f17325b;

    /* renamed from: f, reason: collision with root package name */
    public final deb f17326f;

    public fsb(ehi ehiVar) {
        this.f17325b = ehiVar;
        this.f17326f = baf.ai(new ajo(this, ehiVar.c()));
    }

    @Override // g.ehi
    public final dsy c() {
        return this.f17326f;
    }

    @Override // g.ehi, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f17325b.close();
    }

    @Override // g.ehi
    public final long d() {
        return this.f17325b.d();
    }

    @Override // g.ehi
    public final dpd e() {
        return this.f17325b.e();
    }
}
