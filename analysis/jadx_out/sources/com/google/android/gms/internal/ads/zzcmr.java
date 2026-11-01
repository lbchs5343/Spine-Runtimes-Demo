package com.google.android.gms.internal.ads;

import android.content.Context;
import g.agd;

/* loaded from: classes3.dex */
public final class zzcmr implements zzcxh {

    /* renamed from: a, reason: collision with root package name */
    public final zzfgm f5352a;

    public zzcmr(zzfgm zzfgmVar) {
        this.f5352a = zzfgmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcxh
    public final void zzdj(Context context) {
        try {
            this.f5352a.zzg();
        } catch (zzffv unused) {
            zzfxd zzfxdVar = agd.f10175a;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcxh
    public final void zzdl(Context context) {
        try {
            this.f5352a.zzt();
        } catch (zzffv unused) {
            zzfxd zzfxdVar = agd.f10175a;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcxh
    public final void zzdm(Context context) {
        zzfgm zzfgmVar = this.f5352a;
        try {
            zzfgmVar.zzu();
            if (context != null) {
                zzfgmVar.zzs(context);
            }
        } catch (zzffv unused) {
            zzfxd zzfxdVar = agd.f10175a;
        }
    }
}
