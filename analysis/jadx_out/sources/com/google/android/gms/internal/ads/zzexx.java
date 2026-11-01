package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import g.agd;
import g.fso;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class zzexx implements zzevy {

    /* renamed from: a, reason: collision with root package name */
    public final String f7682a;

    /* renamed from: b, reason: collision with root package name */
    public final int f7683b;

    public zzexx(String str, int i) {
        this.f7682a = str;
        this.f7683b = i;
    }

    @Override // com.google.android.gms.internal.ads.zzevy
    public final void zzj(Object obj) {
        int i;
        JSONObject jSONObject = (JSONObject) obj;
        String str = this.f7682a;
        if (TextUtils.isEmpty(str) || (i = this.f7683b) == -1) {
            return;
        }
        try {
            JSONObject r = fso.r("pii", jSONObject);
            r.put("pvid", str);
            r.put("pvid_s", i);
        } catch (JSONException unused) {
            agd.h();
        }
    }
}
