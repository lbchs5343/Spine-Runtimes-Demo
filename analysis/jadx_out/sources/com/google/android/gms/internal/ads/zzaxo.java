package com.google.android.gms.internal.ads;

/* loaded from: classes3.dex */
public final class zzaxo extends zzaxt {

    /* renamed from: a, reason: collision with root package name */
    public static volatile Long f4591a;

    /* renamed from: b, reason: collision with root package name */
    public static final Object f4592b = new Object();

    public zzaxo(zzawf zzawfVar, String str, String str2, zzasf zzasfVar, int i, int i2) {
        super(zzawfVar, "Gni4qgp+h6AcoKfZop5I8lc+tIkw2ZH05xPrrmCfcSRn195BLh5fanbj8t/tK60H", "w5p59RLEy51WEx7/xjLAr1+9bhgJEvrJ/0voomQz2z8=", zzasfVar, i, 33);
    }

    @Override // com.google.android.gms.internal.ads.zzaxt
    public final void c() {
        if (f4591a == null) {
            synchronized (f4592b) {
                try {
                    if (f4591a == null) {
                        f4591a = (Long) this.j.invoke(null, null);
                    }
                } finally {
                }
            }
        }
        synchronized (this.i) {
            this.i.zzV(f4591a.longValue());
        }
    }
}
