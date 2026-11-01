package g;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* loaded from: classes.dex */
public abstract class bzh extends dpu {

    /* renamed from: g, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f12501g = AtomicReferenceFieldUpdater.newUpdater(bzh.class, Object.class, "_consensus$volatile");
    private volatile /* synthetic */ Object _consensus$volatile = fso.f17343g;

    public abstract void e(Object obj, Object obj2);

    public abstract hy f(Object obj);

    @Override // g.dpu
    public final Object h(Object obj) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f12501g;
        Object obj2 = atomicReferenceFieldUpdater.get(this);
        hy hyVar = fso.f17343g;
        if (obj2 == hyVar) {
            hy f2 = f(obj);
            obj2 = atomicReferenceFieldUpdater.get(this);
            if (obj2 == hyVar) {
                while (true) {
                    if (atomicReferenceFieldUpdater.compareAndSet(this, hyVar, f2)) {
                        obj2 = f2;
                        break;
                    }
                    if (atomicReferenceFieldUpdater.get(this) != hyVar) {
                        obj2 = atomicReferenceFieldUpdater.get(this);
                        break;
                    }
                }
            }
        }
        e(obj, obj2);
        return obj2;
    }
}
