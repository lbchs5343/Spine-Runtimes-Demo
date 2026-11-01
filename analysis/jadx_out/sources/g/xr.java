package g;

import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* loaded from: classes.dex */
public final class xr {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f20310a = AtomicReferenceFieldUpdater.newUpdater(xr.class, Object.class, "_next$volatile");

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ AtomicLongFieldUpdater f20311b = AtomicLongFieldUpdater.newUpdater(xr.class, "_state$volatile");

    /* renamed from: c, reason: collision with root package name */
    public static final hy f20312c = new hy("REMOVE_FROZEN", 1);
    private volatile /* synthetic */ Object _next$volatile;
    private volatile /* synthetic */ long _state$volatile;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ AtomicReferenceArray f20313d;

    /* renamed from: e, reason: collision with root package name */
    public final int f20314e;

    /* renamed from: f, reason: collision with root package name */
    public final boolean f20315f;

    /* renamed from: g, reason: collision with root package name */
    public final int f20316g;

    public xr(int i, boolean z) {
        this.f20314e = i;
        this.f20315f = z;
        int i2 = i - 1;
        this.f20316g = i2;
        this.f20313d = new AtomicReferenceArray(i);
        if (i2 > 1073741823) {
            throw new IllegalStateException("Check failed.");
        }
        if ((i & i2) != 0) {
            throw new IllegalStateException("Check failed.");
        }
    }

    public final Object h() {
        xr xrVar = this;
        while (true) {
            AtomicLongFieldUpdater atomicLongFieldUpdater = f20311b;
            long j = atomicLongFieldUpdater.get(xrVar);
            if ((j & 1152921504606846976L) != 0) {
                return f20312c;
            }
            int i = (int) (j & 1073741823);
            int i2 = (int) ((1152921503533105152L & j) >> 30);
            int i3 = xrVar.f20316g;
            int i4 = i & i3;
            if ((i2 & i3) == i4) {
                break;
            }
            AtomicReferenceArray atomicReferenceArray = xrVar.f20313d;
            Object obj = atomicReferenceArray.get(i4);
            boolean z = xrVar.f20315f;
            if (obj == null) {
                if (z) {
                    break;
                }
            } else {
                if (obj instanceof clb) {
                    break;
                }
                long j2 = (i + 1) & 1073741823;
                if (f20311b.compareAndSet(xrVar, j, (j & (-1073741824)) | j2)) {
                    atomicReferenceArray.set(i4, null);
                    return obj;
                }
                xrVar = this;
                if (z) {
                    while (true) {
                        long j3 = atomicLongFieldUpdater.get(xrVar);
                        int i5 = (int) (j3 & 1073741823);
                        if ((j3 & 1152921504606846976L) != 0) {
                            xrVar = xrVar.k();
                        } else {
                            xr xrVar2 = xrVar;
                            if (f20311b.compareAndSet(xrVar2, j3, (j3 & (-1073741824)) | j2)) {
                                xrVar2.f20313d.set(i5 & xrVar2.f20316g, null);
                                xrVar = null;
                            } else {
                                xrVar = xrVar2;
                            }
                        }
                        if (xrVar == null) {
                            return obj;
                        }
                    }
                }
            }
        }
        return null;
    }

    public final int i(Object obj) {
        while (true) {
            AtomicLongFieldUpdater atomicLongFieldUpdater = f20311b;
            long j = atomicLongFieldUpdater.get(this);
            if ((3458764513820540928L & j) != 0) {
                return (2305843009213693952L & j) != 0 ? 2 : 1;
            }
            int i = (int) (1073741823 & j);
            int i2 = (int) ((1152921503533105152L & j) >> 30);
            int i3 = this.f20316g;
            if (((i2 + 2) & i3) == (i & i3)) {
                return 1;
            }
            boolean z = this.f20315f;
            AtomicReferenceArray atomicReferenceArray = this.f20313d;
            if (z || atomicReferenceArray.get(i2 & i3) == null) {
                if (f20311b.compareAndSet(this, j, ((-1152921503533105153L) & j) | (((i2 + 1) & 1073741823) << 30))) {
                    atomicReferenceArray.set(i2 & i3, obj);
                    xr xrVar = this;
                    while ((atomicLongFieldUpdater.get(xrVar) & 1152921504606846976L) != 0) {
                        xrVar = xrVar.k();
                        AtomicReferenceArray atomicReferenceArray2 = xrVar.f20313d;
                        int i4 = xrVar.f20316g & i2;
                        Object obj2 = atomicReferenceArray2.get(i4);
                        if ((obj2 instanceof clb) && ((clb) obj2).f13056a == i2) {
                            atomicReferenceArray2.set(i4, obj);
                        } else {
                            xrVar = null;
                        }
                        if (xrVar == null) {
                            return 0;
                        }
                    }
                    return 0;
                }
            } else {
                int i5 = this.f20314e;
                if (i5 < 1024 || ((i2 - i) & 1073741823) > (i5 >> 1)) {
                    return 1;
                }
            }
        }
    }

    public final boolean j() {
        AtomicLongFieldUpdater atomicLongFieldUpdater;
        long j;
        do {
            atomicLongFieldUpdater = f20311b;
            j = atomicLongFieldUpdater.get(this);
            if ((j & 2305843009213693952L) != 0) {
                return true;
            }
            if ((1152921504606846976L & j) != 0) {
                return false;
            }
        } while (!atomicLongFieldUpdater.compareAndSet(this, j, 2305843009213693952L | j));
        return true;
    }

    public final xr k() {
        AtomicLongFieldUpdater atomicLongFieldUpdater;
        long j;
        xr xrVar;
        while (true) {
            atomicLongFieldUpdater = f20311b;
            j = atomicLongFieldUpdater.get(this);
            if ((j & 1152921504606846976L) != 0) {
                xrVar = this;
                break;
            }
            long j2 = 1152921504606846976L | j;
            xrVar = this;
            if (atomicLongFieldUpdater.compareAndSet(xrVar, j, j2)) {
                j = j2;
                break;
            }
        }
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f20310a;
            xr xrVar2 = (xr) atomicReferenceFieldUpdater.get(this);
            if (xrVar2 != null) {
                return xrVar2;
            }
            xr xrVar3 = new xr(xrVar.f20314e * 2, xrVar.f20315f);
            int i = (int) (1073741823 & j);
            int i2 = (int) ((1152921503533105152L & j) >> 30);
            while (true) {
                int i3 = xrVar.f20316g;
                int i4 = i & i3;
                if (i4 == (i3 & i2)) {
                    break;
                }
                Object obj = xrVar.f20313d.get(i4);
                if (obj == null) {
                    obj = new clb(i);
                }
                xrVar3.f20313d.set(xrVar3.f20316g & i, obj);
                i++;
            }
            atomicLongFieldUpdater.set(xrVar3, (-1152921504606846977L) & j);
            while (!atomicReferenceFieldUpdater.compareAndSet(this, null, xrVar3) && atomicReferenceFieldUpdater.get(this) == null) {
            }
        }
    }
}
