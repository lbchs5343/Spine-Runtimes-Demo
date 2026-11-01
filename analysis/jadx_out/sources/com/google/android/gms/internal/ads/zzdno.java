package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import g.agd;
import java.util.Map;

/* loaded from: classes3.dex */
public final class zzdno implements zzbjr {

    /* renamed from: a, reason: collision with root package name */
    public final zzbhc f6259a;

    /* renamed from: b, reason: collision with root package name */
    public final zzdoc f6260b;

    /* renamed from: c, reason: collision with root package name */
    public final zzhfr f6261c;

    public zzdno(zzdjj zzdjjVar, zzdiy zzdiyVar, zzdoc zzdocVar, zzhfr zzhfrVar) {
        this.f6259a = zzdjjVar.zzc(zzdiyVar.zzA());
        this.f6260b = zzdocVar;
        this.f6261c = zzhfrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbjr
    public final void zza(Object obj, Map map) {
        try {
            this.f6259a.zze((zzbgs) this.f6261c.zzb(), (String) map.get("asset"));
        } catch (RemoteException unused) {
            zzfxd zzfxdVar = agd.f10175a;
        }
    }

    public final void zzb() {
        if (this.f6259a == null) {
            return;
        }
        this.f6260b.zzl("/nativeAdCustomClick", this);
    }
}
