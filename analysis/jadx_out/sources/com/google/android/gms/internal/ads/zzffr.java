package com.google.android.gms.internal.ads;

import g.edt;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class zzffr {

    /* renamed from: a, reason: collision with root package name */
    public final JSONObject f7862a;

    public zzffr(JSONObject jSONObject) {
        this.f7862a = jSONObject;
    }

    public final String zza() {
        if (zzc() - 1 != 1) {
            return "javascript";
        }
        return null;
    }

    public final boolean zzb() {
        return this.f7862a.optBoolean((String) edt.f15376a.f15379d.zza(zzbcn.zzfg), true);
    }

    public final int zzc() {
        int optInt = this.f7862a.optInt("media_type", -1);
        if (optInt != 0) {
            return optInt != 1 ? 3 : 1;
        }
        return 2;
    }
}
