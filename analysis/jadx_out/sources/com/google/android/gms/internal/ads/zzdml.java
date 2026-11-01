package com.google.android.gms.internal.ads;

import g.abn;
import g.dcy;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executor;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class zzdml {

    /* renamed from: a, reason: collision with root package name */
    public final Executor f6199a;

    /* renamed from: b, reason: collision with root package name */
    public final zzdmg f6200b;

    public zzdml(Executor executor, zzdmg zzdmgVar) {
        this.f6199a = executor;
        this.f6200b = zzdmgVar;
    }

    public final dcy zza(JSONObject jSONObject, String str) {
        dcy zzh;
        JSONArray optJSONArray = jSONObject.optJSONArray("custom_assets");
        if (optJSONArray == null) {
            return zzgei.zzh(Collections.EMPTY_LIST);
        }
        ArrayList arrayList = new ArrayList();
        int length = optJSONArray.length();
        int i = 0;
        while (true) {
            Executor executor = this.f6199a;
            if (i >= length) {
                return zzgei.zzm(zzgei.zzd(arrayList), new zzfwh() { // from class: com.google.android.gms.internal.ads.zzdmj
                    @Override // com.google.android.gms.internal.ads.zzfwh
                    public final Object apply(Object obj) {
                        ArrayList arrayList2 = new ArrayList();
                        for (zzdmk zzdmkVar : (List) obj) {
                            if (zzdmkVar != null) {
                                arrayList2.add(zzdmkVar);
                            }
                        }
                        return arrayList2;
                    }
                }, executor);
            }
            JSONObject optJSONObject = optJSONArray.optJSONObject(i);
            if (optJSONObject == null) {
                zzh = zzgei.zzh(null);
            } else {
                final String optString = optJSONObject.optString(abn.EXTRA_UA_APP_NAME);
                if (optString == null) {
                    zzh = zzgei.zzh(null);
                } else {
                    String optString2 = optJSONObject.optString("type");
                    zzh = "string".equals(optString2) ? zzgei.zzh(new zzdmk(optString, optJSONObject.optString("string_value"))) : "image".equals(optString2) ? zzgei.zzm(this.f6200b.zze(optJSONObject, "image_value"), new zzfwh() { // from class: com.google.android.gms.internal.ads.zzdmi
                        @Override // com.google.android.gms.internal.ads.zzfwh
                        public final Object apply(Object obj) {
                            return new zzdmk(optString, (zzbfl) obj);
                        }
                    }, executor) : zzgei.zzh(null);
                }
            }
            arrayList.add(zzh);
            i++;
        }
    }
}
