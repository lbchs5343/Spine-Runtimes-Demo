package g;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* loaded from: classes.dex */
public abstract class aym {
    public static final /* synthetic */ AtomicReferenceFieldUpdater i = AtomicReferenceFieldUpdater.newUpdater(aym.class, Object.class, "_next$volatile");
    public static final /* synthetic */ AtomicReferenceFieldUpdater j = AtomicReferenceFieldUpdater.newUpdater(aym.class, Object.class, "_prev$volatile");
    private volatile /* synthetic */ Object _next$volatile;
    private volatile /* synthetic */ Object _prev$volatile;

    public aym(ggb ggbVar) {
        this._prev$volatile = ggbVar;
    }

    public abstract boolean g();

    public final void k() {
        aym m;
        if (m() == null) {
            return;
        }
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = j;
            aym aymVar = (aym) atomicReferenceFieldUpdater.get(this);
            while (aymVar != null && aymVar.g()) {
                aymVar = (aym) atomicReferenceFieldUpdater.get(aymVar);
            }
            aym m2 = m();
            bff.d(m2);
            while (m2.g() && (m = m2.m()) != null) {
                m2 = m;
            }
            while (true) {
                Object obj = atomicReferenceFieldUpdater.get(m2);
                aym aymVar2 = ((aym) obj) == null ? null : aymVar;
                while (!atomicReferenceFieldUpdater.compareAndSet(m2, obj, aymVar2)) {
                    if (atomicReferenceFieldUpdater.get(m2) != obj) {
                        break;
                    }
                }
            }
            if (aymVar != null) {
                i.set(aymVar, m2);
            }
            if (!m2.g() || m2.m() == null) {
                if (aymVar == null || !aymVar.g()) {
                    return;
                }
            }
        }
    }

    public final void l() {
        j.set(this, null);
    }

    public final aym m() {
        Object obj = i.get(this);
        if (obj == cro.o) {
            return null;
        }
        return (aym) obj;
    }
}
