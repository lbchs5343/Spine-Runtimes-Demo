package com.google.android.gms.internal.ads;

import g.auu;
import g.edt;

/* loaded from: classes3.dex */
public final class zzfil implements zzhfx {
    public static zzfil zza() {
        return auu.f10894a;
    }

    public static zzges zzc() {
        zzges zzgesVar;
        zzbce zzbceVar = zzbcn.zzfG;
        edt edtVar = edt.f15376a;
        if (((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue()) {
            zzgesVar = zzcaj.zzc;
        } else {
            zzgesVar = ((Boolean) edtVar.f15379d.zza(zzbcn.zzfF)).booleanValue() ? zzcaj.zza : zzcaj.zze;
        }
        zzhgf.zzb(zzgesVar);
        return zzgesVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final /* synthetic */ Object zzb() {
        return zzc();
    }
}
