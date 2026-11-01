package com.google.android.gms.internal.ads;

/* loaded from: classes3.dex */
public final class zzaxk extends zzaxt {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f4587a;

    public zzaxk(zzawf zzawfVar, String str, String str2, zzasf zzasfVar, int i, int i2) {
        super(zzawfVar, "XUlbwsRmHSawbobvdBjnb2xctdVbPfXMEVEnXNMe2hHlLaCP55dgLdHMQ+hYM/7L", "7XeVq1bS2Nfqusn9ZkJuz3JHMvM2X4C8Onql6XjPnDI=", zzasfVar, i, 61);
        this.f4587a = zzawfVar.zzs();
    }

    @Override // com.google.android.gms.internal.ads.zzaxt
    public final void c() {
        long longValue = ((Long) this.j.invoke(null, this.k.zzb(), Boolean.valueOf(this.f4587a))).longValue();
        synchronized (this.i) {
            this.i.zzE(longValue);
        }
    }
}
