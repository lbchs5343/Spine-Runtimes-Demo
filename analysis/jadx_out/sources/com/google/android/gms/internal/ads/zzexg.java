package com.google.android.gms.internal.ads;

import g.agd;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class zzexg implements zzevy {

    /* renamed from: a, reason: collision with root package name */
    public final String f7675a;

    public zzexg(String str) {
        this.f7675a = str;
    }

    @Override // com.google.android.gms.internal.ads.zzevy
    public final void zzj(Object obj) {
        try {
            ((JSONObject) obj).put("ms", this.f7675a);
        } catch (JSONException unused) {
            agd.h();
        }
    }
}
