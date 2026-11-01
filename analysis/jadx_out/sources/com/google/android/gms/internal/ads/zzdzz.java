package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.os.Bundle;
import g.cbv;
import g.dcy;
import g.mx;
import j$.util.Objects;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class zzdzz {

    /* renamed from: a, reason: collision with root package name */
    public final zzges f6721a;

    /* renamed from: b, reason: collision with root package name */
    public final zzdzu f6722b;

    /* renamed from: c, reason: collision with root package name */
    public final zzfjr f6723c;

    public zzdzz(zzges zzgesVar, zzdzu zzdzuVar, zzfjr zzfjrVar) {
        this.f6721a = zzgesVar;
        this.f6722b = zzdzuVar;
        this.f6723c = zzfjrVar;
    }

    public final dcy zza(final zzbvx zzbvxVar) {
        dcy zzh = zzgei.zzh(null);
        zzfwh zzfwhVar = new zzfwh() { // from class: com.google.android.gms.internal.ads.zzdzw
            @Override // com.google.android.gms.internal.ads.zzfwh
            public final Object apply(Object obj) {
                zzbvx zzbvxVar2 = zzbvx.this;
                String zzc = zzfxf.zzc(zzbvxVar2.zza.getString("ms"));
                ApplicationInfo applicationInfo = zzbvxVar2.zzc;
                String str = zzbvxVar2.zzh;
                return new zzbuv(applicationInfo, zzbvxVar2.zzd, zzbvxVar2.zzf, zzc, -1, str, zzbvxVar2.zze, zzbvxVar2.zzk, zzbvxVar2.zzl);
            }
        };
        zzges zzgesVar = this.f6721a;
        zzfjh zzb = this.f6723c.zzb(zzfjl.GMS_SIGNALS, zzgei.zzm(zzh, zzfwhVar, zzgesVar));
        final zzdzu zzdzuVar = this.f6722b;
        Objects.requireNonNull(zzdzuVar);
        return zzgei.zzm(zzb.zzf(new zzgdp() { // from class: com.google.android.gms.internal.ads.zzdzx
            @Override // com.google.android.gms.internal.ads.zzgdp
            public final dcy zza(Object obj) {
                return zzdzu.this.zzb((zzbuv) obj);
            }
        }).zza(), new zzfwh(this) { // from class: com.google.android.gms.internal.ads.zzdzy
            @Override // com.google.android.gms.internal.ads.zzfwh
            public final Object apply(Object obj) {
                JSONObject jSONObject = (JSONObject) obj;
                Bundle bundle = zzbvxVar.zza;
                if (bundle == null) {
                    return jSONObject;
                }
                try {
                    cbv cbvVar = cbv.f12612a;
                    JSONObject w = cbvVar.f12615d.w(bundle);
                    try {
                        cbvVar.f12615d.getClass();
                        mx.o(jSONObject, w);
                        return jSONObject;
                    } catch (JSONException unused) {
                        return w;
                    }
                } catch (JSONException unused2) {
                    return jSONObject;
                }
            }
        }, zzgesVar);
    }
}
