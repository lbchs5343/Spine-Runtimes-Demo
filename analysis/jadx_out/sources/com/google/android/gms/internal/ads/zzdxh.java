package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import g.cbv;
import g.edt;
import g.he;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class zzdxh implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f6635a;

    public zzdxh(zzhgp zzhgpVar) {
        this.f6635a = zzhgpVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0033, code lost:
    
        if (android.text.TextUtils.isEmpty(r1) == false) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0050, code lost:
    
        if (android.text.TextUtils.isEmpty(r1) != false) goto L14;
     */
    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object zzb() {
        String valueOf;
        zzffo zza = ((zzcwd) this.f6635a).zza();
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzgW)).booleanValue()) {
            String str = zza.zzd.zzx;
            if (!TextUtils.isEmpty(str)) {
                try {
                    valueOf = new JSONObject(str).getString("request_id");
                } catch (JSONException unused) {
                }
            }
            if (zza.zzd.zzs != null) {
                try {
                    valueOf = new JSONObject(zza.zzd.zzs.zza).getString("request_id");
                } catch (JSONException unused2) {
                }
            }
        }
        valueOf = String.valueOf(cbv.f12612a.f12614c.nextInt() & he.UNDEFINED_ITEM_ID);
        zzhgf.zzb(valueOf);
        return valueOf;
    }
}
