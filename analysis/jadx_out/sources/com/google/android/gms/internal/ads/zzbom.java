package com.google.android.gms.internal.ads;

import g.agd;
import g.clx;
import g.dcy;
import g.duw;

/* loaded from: classes3.dex */
public final class zzbom implements zzbny {

    /* renamed from: a, reason: collision with root package name */
    public final String f4904a;

    /* renamed from: b, reason: collision with root package name */
    public final zzboa f4905b;

    /* renamed from: c, reason: collision with root package name */
    public final zzbob f4906c;

    /* renamed from: d, reason: collision with root package name */
    public final zzbnu f4907d;

    public zzbom(zzbnu zzbnuVar, String str, zzbob zzbobVar, zzboa zzboaVar) {
        this.f4907d = zzbnuVar;
        this.f4904a = str;
        this.f4906c = zzbobVar;
        this.f4905b = zzboaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgdp
    public final dcy zza(Object obj) throws Exception {
        return zzb(obj);
    }

    @Override // com.google.android.gms.internal.ads.zzbny
    public final dcy zzb(Object obj) {
        zzcao zzcaoVar = new zzcao();
        zzbno zzb = this.f4907d.zzb(null);
        agd.e("callJs > getEngine: Promise created");
        zzb.zzj(new duw(this, zzb, obj, zzcaoVar, 7, false), new clx(15, zzcaoVar, zzb, false));
        return zzcaoVar;
    }
}
