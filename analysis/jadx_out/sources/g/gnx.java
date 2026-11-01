package g;

/* loaded from: classes3.dex */
public abstract class gnx implements cpv {
    public final cpv j;

    public gnx(cpv cpvVar) {
        bff.p(cpvVar, "delegate");
        this.j = cpvVar;
    }

    @Override // g.cpv
    public long c(clq clqVar, long j) {
        bff.p(clqVar, "sink");
        return this.j.c(clqVar, 8192L);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.j.close();
    }

    @Override // g.cpv
    public final dme e() {
        return this.j.e();
    }

    public final String toString() {
        return getClass().getSimpleName() + '(' + this.j + ')';
    }
}
