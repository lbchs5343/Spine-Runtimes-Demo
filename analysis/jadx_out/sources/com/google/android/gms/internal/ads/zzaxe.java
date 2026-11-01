package com.google.android.gms.internal.ads;

/* loaded from: classes3.dex */
public final class zzaxe extends zzaxt {

    /* renamed from: a, reason: collision with root package name */
    public final zzavi f4580a;

    /* renamed from: b, reason: collision with root package name */
    public final long f4581b;

    /* renamed from: d, reason: collision with root package name */
    public final long f4582d;

    public zzaxe(zzawf zzawfVar, String str, String str2, zzasf zzasfVar, int i, int i2, zzavi zzaviVar, long j, long j2) {
        super(zzawfVar, "TEuVeGvhlSIXkgQOkIrP3/M5xn08Noea2HjGio+2r03gBpanfVd2G9lK+KoDXH2T", "AA74eMHsp6+YeXgwW1ug4iNz8R55KIvaQAvJIVOChCk=", zzasfVar, i, 11);
        this.f4580a = zzaviVar;
        this.f4581b = j;
        this.f4582d = j2;
    }

    @Override // com.google.android.gms.internal.ads.zzaxt
    public final void c() {
        zzavi zzaviVar = this.f4580a;
        if (zzaviVar != null) {
            zzavg zzavgVar = new zzavg((String) this.j.invoke(null, zzaviVar.zzb(), Long.valueOf(this.f4581b), Long.valueOf(this.f4582d)));
            synchronized (this.i) {
                try {
                    this.i.zzz(zzavgVar.zza.longValue());
                    if (zzavgVar.zzb.longValue() >= 0) {
                        this.i.zzQ(zzavgVar.zzb.longValue());
                    }
                    if (zzavgVar.zzc.longValue() >= 0) {
                        this.i.zzf(zzavgVar.zzc.longValue());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }
}
