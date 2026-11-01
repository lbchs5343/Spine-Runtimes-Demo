package com.google.android.gms.internal.ads;

/* loaded from: classes3.dex */
public final class zzaxb extends zzaxt {

    /* renamed from: a, reason: collision with root package name */
    public static volatile Long f4577a;

    /* renamed from: b, reason: collision with root package name */
    public static final Object f4578b = new Object();

    public zzaxb(zzawf zzawfVar, String str, String str2, zzasf zzasfVar, int i, int i2) {
        super(zzawfVar, "pqNjV8dx1XFj9T4LMPQEa0a19I+nsD8Qxz2fQuehDPd98Kfq+TQkVREvoUEgFPtf", "v02B7neKpYyNwQtluXNrII6UZlY2WS0o0AnaqwUmhpo=", zzasfVar, i, 22);
    }

    @Override // com.google.android.gms.internal.ads.zzaxt
    public final void c() {
        if (f4577a == null) {
            synchronized (f4578b) {
                try {
                    if (f4577a == null) {
                        f4577a = (Long) this.j.invoke(null, null);
                    }
                } finally {
                }
            }
        }
        synchronized (this.i) {
            this.i.zzy(f4577a.longValue());
        }
    }
}
