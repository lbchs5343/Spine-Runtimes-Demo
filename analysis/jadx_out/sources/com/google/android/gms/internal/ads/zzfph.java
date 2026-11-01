package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.HashSet;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class zzfph extends zzfpc {
    public zzfph(zzfov zzfovVar, HashSet hashSet, JSONObject jSONObject, long j) {
        super(zzfovVar, hashSet, jSONObject, j);
    }

    @Override // android.os.AsyncTask
    public final /* bridge */ /* synthetic */ Object doInBackground(Object[] objArr) {
        zzfov zzfovVar = this.f8134e;
        JSONObject zza = zzfovVar.zza();
        JSONObject jSONObject = this.f8130a;
        if (zzfon.zzg(jSONObject, zza)) {
            return null;
        }
        zzfovVar.zze(jSONObject);
        return jSONObject.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzfpd, android.os.AsyncTask
    /* renamed from: f */
    public final void onPostExecute(String str) {
        zzfnr zza;
        if (!TextUtils.isEmpty(str) && (zza = zzfnr.zza()) != null) {
            for (zzfna zzfnaVar : zza.zzc()) {
                if (this.f8132c.contains(zzfnaVar.zzh())) {
                    zzfnaVar.zzg().zzh(str, this.f8131b);
                }
            }
        }
        super.onPostExecute(str);
    }
}
