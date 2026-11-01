package g;

/* loaded from: classes3.dex */
public final class gjh extends bfk {

    /* renamed from: a, reason: collision with root package name */
    public boolean f18242a;

    @Override // g.bfk, g.cpv
    public final long c(clq clqVar, long j) {
        bff.p(clqVar, "sink");
        if (this.f11450g) {
            throw new IllegalStateException("closed");
        }
        if (this.f18242a) {
            return -1L;
        }
        long c2 = super.c(clqVar, 8192L);
        if (c2 != -1) {
            return c2;
        }
        this.f18242a = true;
        h();
        return -1L;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (this.f11450g) {
            return;
        }
        if (!this.f18242a) {
            h();
        }
        this.f11450g = true;
    }
}
