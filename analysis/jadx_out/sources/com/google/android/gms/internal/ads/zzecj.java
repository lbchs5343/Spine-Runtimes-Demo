package com.google.android.gms.internal.ads;

import g.abz;
import g.cmo;
import g.edt;
import g.gil;

/* loaded from: classes3.dex */
public final class zzecj implements zzcya, zzcwp {

    /* renamed from: a, reason: collision with root package name */
    public static final Object f6801a = new Object();

    /* renamed from: b, reason: collision with root package name */
    public static int f6802b;

    /* renamed from: c, reason: collision with root package name */
    public final gil f6803c;

    /* renamed from: d, reason: collision with root package name */
    public final zzect f6804d;

    public zzecj(zzect zzectVar, gil gilVar) {
        this.f6804d = zzectVar;
        this.f6803c = gilVar;
    }

    public final void e(boolean z) {
        int i;
        int intValue;
        zzbce zzbceVar = zzbcn.zzgc;
        edt edtVar = edt.f15376a;
        if (((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue() && !((cmo) this.f6803c).ax()) {
            Object obj = f6801a;
            synchronized (obj) {
                i = f6802b;
                intValue = ((Integer) edtVar.f15379d.zza(zzbcn.zzgd)).intValue();
            }
            if (i < intValue) {
                this.f6804d.zzd(z);
                synchronized (obj) {
                    f6802b++;
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcwp
    public final void zzdB(abz abzVar) {
        e(false);
    }

    @Override // com.google.android.gms.internal.ads.zzcya
    public final void zzs() {
        e(true);
    }
}
