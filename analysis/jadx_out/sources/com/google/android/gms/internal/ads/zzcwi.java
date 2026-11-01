package com.google.android.gms.internal.ads;

import android.content.Context;
import g.akx;

/* loaded from: classes3.dex */
public final class zzcwi implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f5800a;

    /* renamed from: b, reason: collision with root package name */
    public final zzhgp f5801b;

    /* renamed from: c, reason: collision with root package name */
    public final zzhgp f5802c;

    public zzcwi(zzcwh zzcwhVar, zzhgp zzhgpVar, zzhgp zzhgpVar2, zzhgp zzhgpVar3, zzhgp zzhgpVar4) {
        this.f5800a = zzhgpVar;
        this.f5801b = zzhgpVar2;
        this.f5802c = zzhgpVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final /* bridge */ /* synthetic */ Object zzb() {
        Context context = (Context) this.f5800a.zzb();
        akx zza = ((zzcid) this.f5801b).zza();
        zzfet zza2 = ((zzcsh) this.f5802c).zza();
        zzbyd zzbydVar = new zzbyd();
        zzbye zzbyeVar = zza2.zzA;
        if (zzbyeVar == null) {
            return null;
        }
        zzfey zzfeyVar = zza2.zzs;
        return new zzbyc(context, zza, zzbyeVar, zzfeyVar != null ? zzfeyVar.zzb : null, zzbydVar);
    }
}
