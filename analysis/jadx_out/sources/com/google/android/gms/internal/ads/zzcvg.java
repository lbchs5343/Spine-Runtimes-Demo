package com.google.android.gms.internal.ads;

import android.content.Context;
import g.akx;
import g.gfk;

/* loaded from: classes3.dex */
public final class zzcvg implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f5732a;

    /* renamed from: b, reason: collision with root package name */
    public final zzhgp f5733b;

    /* renamed from: c, reason: collision with root package name */
    public final zzhgp f5734c;

    public zzcvg(zzhgp zzhgpVar, zzhgp zzhgpVar2, zzhgp zzhgpVar3) {
        this.f5732a = zzhgpVar;
        this.f5733b = zzhgpVar2;
        this.f5734c = zzhgpVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final /* bridge */ /* synthetic */ Object zzb() {
        final Context context = (Context) this.f5732a.zzb();
        final akx zza = ((zzcid) this.f5733b).zza();
        final zzffo zza2 = ((zzcwd) this.f5734c).zza();
        return new zzfwh() { // from class: com.google.android.gms.internal.ads.zzcvf
            @Override // com.google.android.gms.internal.ads.zzfwh
            public final Object apply(Object obj) {
                zzfet zzfetVar = (zzfet) obj;
                gfk gfkVar = new gfk(context);
                gfkVar.k = zzfetVar.zzB;
                gfkVar.f18038g = zzfetVar.zzC.toString();
                gfkVar.f18036e = zza.afmaVersion;
                gfkVar.f18034c = zza2.zzf;
                return gfkVar;
            }
        };
    }
}
