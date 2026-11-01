package g;

/* loaded from: classes.dex */
public final class nt extends fqd {

    /* renamed from: a, reason: collision with root package name */
    public static final nt f19732a;

    static {
        int i = fga.f16736g;
        int i2 = fga.f16731b;
        long j = fga.f16732c;
        String str = fga.f16733d;
        nt ntVar = new nt();
        ntVar.f17232b = new gwu(i, i2, str, j);
        f19732a = ntVar;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        throw new UnsupportedOperationException("Dispatchers.Default cannot be closed");
    }

    @Override // g.cpk
    public final String toString() {
        return "Dispatchers.Default";
    }
}
