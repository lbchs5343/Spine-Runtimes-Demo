package g;

import java.util.Iterator;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class bac implements gkt {

    /* renamed from: a, reason: collision with root package name */
    public final AtomicReference f11153a;

    public bac(fjj fjjVar) {
        this.f11153a = new AtomicReference(fjjVar);
    }

    @Override // g.gkt
    public final Iterator iterator() {
        gkt gktVar = (gkt) this.f11153a.getAndSet(null);
        if (gktVar != null) {
            return gktVar.iterator();
        }
        throw new IllegalStateException("This sequence can be consumed only once.");
    }
}
