package g;

import java.io.Serializable;

/* loaded from: classes.dex */
public final class cgq implements boj, Serializable {

    /* renamed from: a, reason: collision with root package name */
    public static final cgq f12850a = new cgq();
    private static final long serialVersionUID = 0;

    private final Object readResolve() {
        return f12850a;
    }

    @Override // g.boj
    public final boj _w(efi efiVar) {
        bff.p(efiVar, "key");
        return this;
    }

    @Override // g.boj
    public final erz _x(efi efiVar) {
        bff.p(efiVar, "key");
        return null;
    }

    @Override // g.boj
    public final boj _y(boj bojVar) {
        bff.p(bojVar, "context");
        return bojVar;
    }

    @Override // g.boj
    public final Object c(Object obj, bto btoVar) {
        return obj;
    }

    public final int hashCode() {
        return 0;
    }

    public final String toString() {
        return "EmptyCoroutineContext";
    }
}
