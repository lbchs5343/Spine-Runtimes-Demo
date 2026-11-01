package g;

import java.util.List;

/* loaded from: classes.dex */
public final class fgy implements iu {

    /* renamed from: b, reason: collision with root package name */
    public static final dba f16776b = dsr.k(fgy.class);

    /* renamed from: c, reason: collision with root package name */
    public final List f16777c;

    public fgy(List list) {
        this.f16777c = list;
    }

    @Override // g.iu
    public final void a(euy euyVar) {
        for (bpt bptVar : this.f16777c) {
            try {
                bptVar.getClass();
                euyVar.n(new cmv(bptVar));
            } catch (Exception e2) {
                f16776b.b(bptVar.f11976b, "Failed to load class data for file: {}", e2);
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }

    @Override // g.iu
    public final boolean isEmpty() {
        return this.f16777c.isEmpty();
    }
}
