package com.google.android.gms.internal.ads;

import g.agd;
import g.cbv;
import g.tn;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final /* synthetic */ class zzbmn {
    public static void zza(zzbmo zzbmoVar, String str, Map map) {
        try {
            zzbmoVar.zze(str, cbv.f12612a.f12615d.q(map));
        } catch (JSONException unused) {
            agd.b("Could not convert parameters to JSON.");
        }
    }

    public static void zzb(zzbmo zzbmoVar, String str, JSONObject jSONObject) {
        StringBuilder o = tn.o("(window.AFMA_ReceiveMessage || function() {})('", str, "',", jSONObject.toString(), ");");
        agd.c("Dispatching AFMA event: ".concat(o.toString()));
        zzbmoVar.zza(o.toString());
    }

    public static void zzc(zzbmo zzbmoVar, String str, String str2) {
        zzbmoVar.zza(str + "(" + str2 + ");");
    }

    public static void zzd(zzbmo zzbmoVar, String str, JSONObject jSONObject) {
        zzbmoVar.zzb(str, jSONObject.toString());
    }
}
