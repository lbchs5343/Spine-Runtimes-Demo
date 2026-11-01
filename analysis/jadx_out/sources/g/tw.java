package g;

/* loaded from: classes3.dex */
public final class tw {

    /* renamed from: a, reason: collision with root package name */
    public static final Object f20075a = new Object();

    /* renamed from: b, reason: collision with root package name */
    public final Object f20076b;

    /* renamed from: d, reason: collision with root package name */
    public final String f20078d;

    /* renamed from: f, reason: collision with root package name */
    public final aii f20080f;

    /* renamed from: g, reason: collision with root package name */
    public final Object f20081g;

    /* renamed from: c, reason: collision with root package name */
    public final Object f20077c = new Object();

    /* renamed from: e, reason: collision with root package name */
    public volatile Object f20079e = null;

    public /* synthetic */ tw(String str, Object obj, Object obj2, aii aiiVar) {
        this.f20078d = str;
        this.f20081g = obj;
        this.f20076b = obj2;
        this.f20080f = aiiVar;
    }

    public final Object h(Object obj) {
        synchronized (this.f20077c) {
        }
        if (obj != null) {
            return obj;
        }
        if (buj.l == null) {
            return this.f20081g;
        }
        synchronized (f20075a) {
            try {
                if (fbc.o()) {
                    return this.f20079e == null ? this.f20081g : this.f20079e;
                }
                try {
                    for (tw twVar : gad.z) {
                        if (fbc.o()) {
                            throw new IllegalStateException("Refreshing flag cache must be done on a worker thread.");
                        }
                        Object obj2 = null;
                        try {
                            aii aiiVar = twVar.f20080f;
                            if (aiiVar != null) {
                                obj2 = aiiVar.zza();
                            }
                        } catch (IllegalStateException unused) {
                        }
                        synchronized (f20075a) {
                            twVar.f20079e = obj2;
                        }
                    }
                } catch (SecurityException unused2) {
                }
                aii aiiVar2 = this.f20080f;
                if (aiiVar2 == null) {
                    return this.f20081g;
                }
                try {
                    return aiiVar2.zza();
                } catch (IllegalStateException unused3) {
                    return this.f20081g;
                } catch (SecurityException unused4) {
                    return this.f20081g;
                }
            } finally {
            }
        }
    }
}
