package com.google.android.gms.internal.ads;

import java.util.HashSet;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class zzfpg extends zzfpc {
    public zzfpg(zzfov zzfovVar, HashSet hashSet, JSONObject jSONObject, long j) {
        super(zzfovVar, hashSet, jSONObject, j);
    }

    @Override // android.os.AsyncTask
    public final /* synthetic */ Object doInBackground(Object[] objArr) {
        return this.f8130a.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzfpd
    /* renamed from: f */
    public final void onPostExecute(String str) {
        g(str);
        super.onPostExecute(str);
    }

    public final void g(String str) {
        zzfnr zza = zzfnr.zza();
        if (zza != null) {
            for (zzfna zzfnaVar : zza.zzc()) {
                if (this.f8132c.contains(zzfnaVar.zzh())) {
                    zzfnaVar.zzg().zzd(str, this.f8131b);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfpd, android.os.AsyncTask
    public final /* synthetic */ void onPostExecute(Object obj) {
        String str = (String) obj;
        g(str);
        super.onPostExecute(str);
    }
}
