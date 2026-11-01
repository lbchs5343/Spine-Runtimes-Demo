package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import g.agd;
import g.dcy;
import g.ekq;
import g.esy;
import g.evz;
import g.ti;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class zzbkh implements zzbjr {

    /* renamed from: a, reason: collision with root package name */
    public final Object f4854a = new Object();

    /* renamed from: b, reason: collision with root package name */
    public final HashMap f4855b = new HashMap();

    @Override // com.google.android.gms.internal.ads.zzbjr
    public final void zza(Object obj, Map map) {
        String str = (String) map.get(TTDownloadField.TT_ID);
        String str2 = (String) map.get("fail");
        String str3 = (String) map.get("fail_reason");
        String str4 = (String) map.get("fail_stack");
        String str5 = (String) map.get(ekq.EXTRA_PERMISSION_RESULT);
        if (true == TextUtils.isEmpty(str4)) {
            str3 = "Unknown Fail Reason.";
        }
        String concat = TextUtils.isEmpty(str4) ? "" : "\n".concat(String.valueOf(str4));
        synchronized (this.f4854a) {
            try {
                zzbkg zzbkgVar = (zzbkg) this.f4855b.remove(str);
                if (zzbkgVar == null) {
                    agd.b("Received result for unexpected method invocation: " + str);
                    return;
                }
                if (!TextUtils.isEmpty(str2)) {
                    zzbkgVar.zza(str3 + concat);
                    return;
                }
                if (str5 == null) {
                    zzbkgVar.zzb(null);
                    return;
                }
                try {
                    JSONObject jSONObject = new JSONObject(str5);
                    if (agd.h()) {
                        agd.e("Result GMSG: " + jSONObject.toString(2));
                    }
                    zzbkgVar.zzb(jSONObject);
                } catch (JSONException e2) {
                    zzbkgVar.zza(e2.getMessage());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final dcy zzb(zzbmy zzbmyVar, String str, JSONObject jSONObject) {
        zzcao zzcaoVar = new zzcao();
        esy esyVar = ti.f20033a.z;
        String uuid = UUID.randomUUID().toString();
        zzc(uuid, new evz(zzcaoVar, 0));
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(TTDownloadField.TT_ID, uuid);
            jSONObject2.put("args", jSONObject);
            zzbmyVar.zzl(str, jSONObject2);
            return zzcaoVar;
        } catch (Exception e2) {
            zzcaoVar.zzd(e2);
            return zzcaoVar;
        }
    }

    public final void zzc(String str, zzbkg zzbkgVar) {
        synchronized (this.f4854a) {
            this.f4855b.put(str, zzbkgVar);
        }
    }
}
