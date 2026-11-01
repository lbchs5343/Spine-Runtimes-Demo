package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.internal.ads.zzbbs;
import g.edt;
import java.util.Collections;
import java.util.Map;
import java.util.Set;

/* loaded from: classes3.dex */
public final class zzdrm implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f6403a;

    /* renamed from: b, reason: collision with root package name */
    public final zzhgp f6404b;

    /* renamed from: c, reason: collision with root package name */
    public final zzhgp f6405c;

    public zzdrm(zzhgp zzhgpVar, zzhgp zzhgpVar2, zzhgp zzhgpVar3, zzhgp zzhgpVar4) {
        this.f6403a = zzhgpVar;
        this.f6404b = zzhgpVar2;
        this.f6405c = zzhgpVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final Object zzb() {
        Set set;
        final String str = (String) this.f6403a.zzb();
        Context zza = ((zzchq) this.f6404b).zza();
        zzges zzc = zzfin.zzc();
        Map zzb = ((zzhgb) this.f6405c).zzb();
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzeV)).booleanValue()) {
            zzbbl zzbblVar = new zzbbl(new zzbbr(zza));
            zzbblVar.zzb(new zzbbk() { // from class: com.google.android.gms.internal.ads.zzdrn
                @Override // com.google.android.gms.internal.ads.zzbbk
                public final void zza(zzbbs.zzt.zza zzaVar) {
                    zzaVar.zzO(str);
                }
            });
            set = Collections.singleton(new zzded(new zzdrp(zzbblVar, zzb), zzc));
        } else {
            set = Collections.EMPTY_SET;
        }
        zzhgf.zzb(set);
        return set;
    }
}
