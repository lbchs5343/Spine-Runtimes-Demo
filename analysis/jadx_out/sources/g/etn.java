package g;

import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* loaded from: classes.dex */
public final class etn implements gpe {
    private volatile /* synthetic */ Object _exceptionsHolder$volatile;
    private volatile /* synthetic */ int _isCompleting$volatile = 0;
    private volatile /* synthetic */ Object _rootCause$volatile;

    /* renamed from: f, reason: collision with root package name */
    public final amv f16151f;

    /* renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f16150e = AtomicIntegerFieldUpdater.newUpdater(etn.class, "_isCompleting$volatile");

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f16148b = AtomicReferenceFieldUpdater.newUpdater(etn.class, Object.class, "_rootCause$volatile");

    /* renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f16149d = AtomicReferenceFieldUpdater.newUpdater(etn.class, Object.class, "_exceptionsHolder$volatile");

    public etn(amv amvVar, Throwable th) {
        this.f16151f = amvVar;
        this._rootCause$volatile = th;
    }

    @Override // g.gpe
    public final boolean a() {
        return g() == null;
    }

    @Override // g.gpe
    public final amv c() {
        return this.f16151f;
    }

    public final Throwable g() {
        return (Throwable) f16148b.get(this);
    }

    public final boolean h() {
        return g() != null;
    }

    public final void i(Throwable th) {
        Throwable g2 = g();
        if (g2 == null) {
            f16148b.set(this, th);
            return;
        }
        if (th == g2) {
            return;
        }
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f16149d;
        Object obj = atomicReferenceFieldUpdater.get(this);
        if (obj == null) {
            atomicReferenceFieldUpdater.set(this, th);
            return;
        }
        if (!(obj instanceof Throwable)) {
            if (obj instanceof ArrayList) {
                ((ArrayList) obj).add(th);
                return;
            } else {
                throw new IllegalStateException(("State is " + obj).toString());
            }
        }
        if (th == obj) {
            return;
        }
        ArrayList arrayList = new ArrayList(4);
        arrayList.add(obj);
        arrayList.add(th);
        atomicReferenceFieldUpdater.set(this, arrayList);
    }

    public final boolean j() {
        return f16150e.get(this) != 0;
    }

    public final ArrayList k(Throwable th) {
        ArrayList arrayList;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f16149d;
        Object obj = atomicReferenceFieldUpdater.get(this);
        if (obj == null) {
            arrayList = new ArrayList(4);
        } else if (obj instanceof Throwable) {
            ArrayList arrayList2 = new ArrayList(4);
            arrayList2.add(obj);
            arrayList = arrayList2;
        } else {
            if (!(obj instanceof ArrayList)) {
                throw new IllegalStateException(("State is " + obj).toString());
            }
            arrayList = (ArrayList) obj;
        }
        Throwable g2 = g();
        if (g2 != null) {
            arrayList.add(0, g2);
        }
        if (th != null && !th.equals(g2)) {
            arrayList.add(th);
        }
        atomicReferenceFieldUpdater.set(this, dzm.l);
        return arrayList;
    }

    public final String toString() {
        return "Finishing[cancelling=" + h() + ", completing=" + j() + ", rootCause=" + g() + ", exceptions=" + f16149d.get(this) + ", list=" + this.f16151f + ']';
    }
}
