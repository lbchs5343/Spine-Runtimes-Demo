package com.google.android.gms.internal.ads;

import android.os.Bundle;
import g.abn;
import g.agd;
import g.fso;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class zzbig implements zzbjr {

    /* renamed from: a, reason: collision with root package name */
    public final zzbih f4830a;

    public zzbig(zzbih zzbihVar) {
        this.f4830a = zzbihVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbjr
    public final void zza(Object obj, Map map) {
        zzbih zzbihVar = this.f4830a;
        if (zzbihVar == null) {
            return;
        }
        String str = (String) map.get(abn.EXTRA_UA_APP_NAME);
        if (str == null) {
            agd.k("Ad metadata with no name parameter.");
            str = "";
        }
        Bundle bundle = null;
        if (map.containsKey("info")) {
            try {
                bundle = fso.as(new JSONObject((String) map.get("info")));
            } catch (JSONException e2) {
                agd.f("Failed to convert ad metadata to JSON.", e2);
            }
        }
        if (bundle == null) {
            agd.d("Failed to convert ad metadata to Bundle.");
        } else {
            zzbihVar.zza(str, bundle);
        }
    }
}
