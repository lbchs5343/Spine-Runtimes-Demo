package g;

import java.io.Closeable;

/* loaded from: classes.dex */
public final class etc implements Closeable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f16140a;

    private final void b() {
    }

    private final void c() {
    }

    private final void d() {
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        int i = this.f16140a;
    }

    public String toString() {
        switch (this.f16140a) {
            case 2:
                return "NoOpCodeCache";
            default:
                return super.toString();
        }
    }
}
