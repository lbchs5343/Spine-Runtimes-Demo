package com.google.android.gms.internal.ads;

/* loaded from: classes3.dex */
public final class zzawv extends zzaxt {

    /* renamed from: a, reason: collision with root package name */
    public static volatile Long f4566a;

    /* renamed from: b, reason: collision with root package name */
    public static final Object f4567b = new Object();

    public zzawv(zzawf zzawfVar, String str, String str2, zzasf zzasfVar, int i, int i2) {
        super(zzawfVar, "vHxl3/k7agNEaOAb+kiexrLMKd/tl26b7leOgQmEqvHEdvK4RjfXtH7j4TmF8OsM", "1y55K+UUiCchaHGitlZ/bNKURNzH22lnMjmt1W+XJdc=", zzasfVar, i, 44);
    }

    @Override // com.google.android.gms.internal.ads.zzaxt
    public final void c() {
        if (f4566a == null) {
            synchronized (f4567b) {
                try {
                    if (f4566a == null) {
                        f4566a = (Long) this.j.invoke(null, null);
                    }
                } finally {
                }
            }
        }
        synchronized (this.i) {
            this.i.zzo(f4566a.longValue());
        }
    }
}
