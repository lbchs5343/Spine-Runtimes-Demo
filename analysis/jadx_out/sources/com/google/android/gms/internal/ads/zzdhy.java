package com.google.android.gms.internal.ads;

import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class zzdhy implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzdhw f6016a;

    public zzdhy(zzdhw zzdhwVar) {
        this.f6016a = zzdhwVar;
    }

    public static JSONObject zza(zzdhw zzdhwVar) {
        JSONObject zzb = zzdhwVar.zzb();
        zzhgf.zzb(zzb);
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final /* synthetic */ Object zzb() {
        return zza(this.f6016a);
    }

    public final JSONObject zzc() {
        return zza(this.f6016a);
    }
}
