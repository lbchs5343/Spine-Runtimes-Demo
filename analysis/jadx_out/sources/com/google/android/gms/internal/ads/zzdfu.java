package com.google.android.gms.internal.ads;

import android.content.Context;
import g.akx;
import g.bkm;
import g.ti;

/* loaded from: classes3.dex */
public final class zzdfu implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f5927a;

    /* renamed from: b, reason: collision with root package name */
    public final zzhgp f5928b;

    /* renamed from: c, reason: collision with root package name */
    public final zzhgp f5929c;

    /* renamed from: d, reason: collision with root package name */
    public final zzhgp f5930d;

    public zzdfu(zzdfn zzdfnVar, zzhgp zzhgpVar, zzhgp zzhgpVar2, zzhgp zzhgpVar3, zzhgp zzhgpVar4) {
        this.f5928b = zzhgpVar;
        this.f5929c = zzhgpVar2;
        this.f5930d = zzhgpVar3;
        this.f5927a = zzhgpVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final /* bridge */ /* synthetic */ Object zzb() {
        final Context context = (Context) this.f5928b.zzb();
        final akx zza = ((zzcid) this.f5929c).zza();
        final zzfet zza2 = ((zzcsh) this.f5930d).zza();
        final zzffo zza3 = ((zzcwd) this.f5927a).zza();
        return new zzded(new zzcya() { // from class: com.google.android.gms.internal.ads.zzdfl
            @Override // com.google.android.gms.internal.ads.zzcya
            public final void zzs() {
                bkm bkmVar = ti.f20033a.f20040g;
                Context context2 = context;
                zzffo zzffoVar = zza3;
                bkmVar.o(context2, zza.afmaVersion, zza2.zzC.toString(), zzffoVar.zzf);
            }
        }, zzcaj.zzf);
    }
}
