package com.google.android.gms.internal.ads;

/* loaded from: classes3.dex */
public final class zzaww extends zzaxt {

    /* renamed from: a, reason: collision with root package name */
    public final long f4568a;

    public zzaww(zzawf zzawfVar, String str, String str2, zzasf zzasfVar, long j, int i, int i2) {
        super(zzawfVar, "TJ62ujRRBjJb9/NqrT2Pn0c6KFZY0SF6EjGcQMXtIVccZGktu9G9qu0AxWBd9HPE", "SO84xWj1xZpVST0NHeOw+QMypPAPo6e/MVLMJbQH2M4=", zzasfVar, i, 25);
        this.f4568a = j;
    }

    @Override // com.google.android.gms.internal.ads.zzaxt
    public final void c() {
        long longValue = ((Long) this.j.invoke(null, null)).longValue();
        synchronized (this.i) {
            try {
                this.i.zzt(longValue);
                long j = this.f4568a;
                if (j != 0) {
                    this.i.zzT(longValue - j);
                    this.i.zzU(this.f4568a);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
