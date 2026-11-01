package com.google.android.gms.internal.ads;

import java.util.HashSet;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class zzfov {

    /* renamed from: a, reason: collision with root package name */
    public JSONObject f8119a;

    /* renamed from: b, reason: collision with root package name */
    public final zzfpe f8120b;

    public zzfov(zzfpe zzfpeVar) {
        this.f8120b = zzfpeVar;
    }

    public final JSONObject zza() {
        return this.f8119a;
    }

    public final void zzb() {
        this.f8120b.zzb(new zzfpf(this));
    }

    public final void zzc(JSONObject jSONObject, HashSet hashSet, long j) {
        this.f8120b.zzb(new zzfpg(this, hashSet, jSONObject, j));
    }

    public final void zzd(JSONObject jSONObject, HashSet hashSet, long j) {
        this.f8120b.zzb(new zzfph(this, hashSet, jSONObject, j));
    }

    public final void zze(JSONObject jSONObject) {
        this.f8119a = jSONObject;
    }
}
