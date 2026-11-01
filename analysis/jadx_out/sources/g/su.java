package g;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* loaded from: classes3.dex */
public final class su extends cro {

    /* renamed from: b, reason: collision with root package name */
    public static final AtomicReferenceFieldUpdater f20011b = AtomicReferenceFieldUpdater.newUpdater(cye.class, Thread.class, "Oo0Ooo0o00");

    /* renamed from: c, reason: collision with root package name */
    public static final AtomicReferenceFieldUpdater f20012c = AtomicReferenceFieldUpdater.newUpdater(cye.class, cye.class, "o0oO0Ooo");

    /* renamed from: e, reason: collision with root package name */
    public static final AtomicReferenceFieldUpdater f20014e = AtomicReferenceFieldUpdater.newUpdater(ail.class, cye.class, "Oo0o0oOO");

    /* renamed from: a, reason: collision with root package name */
    public static final AtomicReferenceFieldUpdater f20010a = AtomicReferenceFieldUpdater.newUpdater(ail.class, fwe.class, "oOOOOooooO");

    /* renamed from: d, reason: collision with root package name */
    public static final AtomicReferenceFieldUpdater f20013d = AtomicReferenceFieldUpdater.newUpdater(ail.class, Object.class, "o0O00Ooo00");

    @Override // g.cro
    public final fwe f(alw alwVar) {
        return (fwe) f20010a.getAndSet(alwVar, fwe.f17503a);
    }

    @Override // g.cro
    public final boolean g(alw alwVar, fwe fweVar, fwe fweVar2) {
        return erl.az(f20010a, alwVar, fweVar, fweVar2);
    }

    @Override // g.cro
    public final cye h(alw alwVar) {
        return (cye) f20014e.getAndSet(alwVar, cye.f13739a);
    }

    @Override // g.cro
    public final boolean i(ail ailVar, Object obj, Object obj2) {
        return erl.az(f20013d, ailVar, obj, obj2);
    }

    @Override // g.cro
    public final void j(cye cyeVar, Thread thread) {
        f20011b.lazySet(cyeVar, thread);
    }

    @Override // g.cro
    public final void k(cye cyeVar, cye cyeVar2) {
        f20012c.lazySet(cyeVar, cyeVar2);
    }

    @Override // g.cro
    public final boolean l(ail ailVar, cye cyeVar, cye cyeVar2) {
        return erl.az(f20014e, ailVar, cyeVar, cyeVar2);
    }
}
