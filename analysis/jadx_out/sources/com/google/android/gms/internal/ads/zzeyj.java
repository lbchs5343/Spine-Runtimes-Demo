package com.google.android.gms.internal.ads;

import g.agd;
import g.fso;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class zzeyj implements zzevy {

    /* renamed from: a, reason: collision with root package name */
    public final String f7691a;

    /* renamed from: b, reason: collision with root package name */
    public final String f7692b;

    public zzeyj(String str, String str2) {
        this.f7691a = str;
        this.f7692b = str2;
    }

    @Override // com.google.android.gms.internal.ads.zzevy
    public final /* bridge */ /* synthetic */ void zzj(Object obj) {
        try {
            JSONObject r = fso.r("pii", (JSONObject) obj);
            r.put("doritos", this.f7691a);
            r.put("doritos_v2", this.f7692b);
        } catch (JSONException unused) {
            agd.e("Failed putting doritos string.");
        }
    }
}
