package com.google.android.gms.internal.ads;

import g.agd;
import g.cbv;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class zzezr implements zzevy {

    /* renamed from: a, reason: collision with root package name */
    public final Map f7723a;

    public zzezr(Map map) {
        this.f7723a = map;
    }

    @Override // com.google.android.gms.internal.ads.zzevy
    public final void zzj(Object obj) {
        try {
            ((JSONObject) obj).put("video_decoders", cbv.f12612a.f12615d.q(this.f7723a));
        } catch (JSONException e2) {
            agd.e("Could not encode video decoder properties: ".concat(String.valueOf(e2.getMessage())));
        }
    }
}
