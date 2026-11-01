package g;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* loaded from: classes3.dex */
public final class cna extends cux {

    /* renamed from: a, reason: collision with root package name */
    public final AtomicReferenceFieldUpdater f13162a;

    /* renamed from: b, reason: collision with root package name */
    public final AtomicReferenceFieldUpdater f13163b;

    /* renamed from: c, reason: collision with root package name */
    public final AtomicReferenceFieldUpdater f13164c;

    /* renamed from: d, reason: collision with root package name */
    public final AtomicReferenceFieldUpdater f13165d;

    /* renamed from: e, reason: collision with root package name */
    public final AtomicReferenceFieldUpdater f13166e;

    public cna(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater5) {
        this.f13165d = atomicReferenceFieldUpdater;
        this.f13163b = atomicReferenceFieldUpdater2;
        this.f13162a = atomicReferenceFieldUpdater3;
        this.f13164c = atomicReferenceFieldUpdater4;
        this.f13166e = atomicReferenceFieldUpdater5;
    }

    @Override // g.cux
    public final boolean f(afp afpVar, Object obj, Object obj2) {
        return erl.aq(this.f13166e, afpVar, obj, obj2);
    }

    @Override // g.cux
    public final boolean g(afp afpVar, dcl dclVar, dcl dclVar2) {
        return erl.aq(this.f13164c, afpVar, dclVar, dclVar2);
    }

    @Override // g.cux
    public final void h(fds fdsVar, fds fdsVar2) {
        this.f13163b.lazySet(fdsVar, fdsVar2);
    }

    @Override // g.cux
    public final boolean i(afp afpVar, fds fdsVar, fds fdsVar2) {
        return erl.aq(this.f13162a, afpVar, fdsVar, fdsVar2);
    }

    @Override // g.cux
    public final void j(fds fdsVar, Thread thread) {
        this.f13165d.lazySet(fdsVar, thread);
    }
}
