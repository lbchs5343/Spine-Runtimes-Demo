package g;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class anm implements gxn {

    /* renamed from: a, reason: collision with root package name */
    public static final AtomicReference f10523a = new AtomicReference();

    @Override // g.gxn
    public final void b(boolean z) {
        synchronized (rm.f19909c) {
            try {
                Iterator it = new ArrayList(rm.f19908b.values()).iterator();
                while (it.hasNext()) {
                    rm rmVar = (rm) it.next();
                    if (rmVar.f19912f.get()) {
                        Iterator it2 = rmVar.i.iterator();
                        while (it2.hasNext()) {
                            rm rmVar2 = ((gbz) it2.next()).f17879a;
                            if (!z) {
                                ((bfq) rmVar2.f19910d.get()).h();
                            }
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
