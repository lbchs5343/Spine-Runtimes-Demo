package g;

import java.util.Iterator;

/* loaded from: classes.dex */
public final class gsi implements gkt {

    /* renamed from: a, reason: collision with root package name */
    public final gkt f18683a;

    /* renamed from: b, reason: collision with root package name */
    public final int f18684b;

    public gsi(gkt gktVar, int i) {
        this.f18683a = gktVar;
        this.f18684b = i;
        if (i >= 0) {
            return;
        }
        throw new IllegalArgumentException(("count must be non-negative, but was " + i + '.').toString());
    }

    @Override // g.gkt
    public final Iterator iterator() {
        return new bve(this);
    }
}
