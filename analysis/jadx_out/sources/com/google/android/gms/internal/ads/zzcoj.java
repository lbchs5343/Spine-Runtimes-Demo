package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class zzcoj implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f5439a;

    public zzcoj(zzhgp zzhgpVar) {
        this.f5439a = zzhgpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final /* bridge */ /* synthetic */ Object zzb() {
        try {
            return new JSONObject(((zzcsh) this.f5439a).zza().zzz);
        } catch (JSONException unused) {
            return null;
        }
    }
}
