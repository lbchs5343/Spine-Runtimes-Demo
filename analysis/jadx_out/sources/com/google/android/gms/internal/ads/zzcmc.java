package com.google.android.gms.internal.ads;

import g.edt;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class zzcmc implements zzcls {

    /* renamed from: a, reason: collision with root package name */
    public final zzdvk f5340a;

    public zzcmc(zzdvk zzdvkVar) {
        this.f5340a = zzdvkVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcls
    public final void zza(JSONObject jSONObject) {
        if (jSONObject != null) {
            if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zziP)).booleanValue()) {
                this.f5340a.zzn(jSONObject);
            }
        }
    }
}
