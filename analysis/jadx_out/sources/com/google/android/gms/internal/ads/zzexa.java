package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import g.agd;
import g.dez;
import g.fso;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class zzexa implements zzevy {

    /* renamed from: a, reason: collision with root package name */
    public final dez f7665a;

    /* renamed from: b, reason: collision with root package name */
    public final String f7666b;

    /* renamed from: c, reason: collision with root package name */
    public final zzfth f7667c;

    public zzexa(dez dezVar, String str, zzfth zzfthVar) {
        this.f7665a = dezVar;
        this.f7666b = str;
        this.f7667c = zzfthVar;
    }

    @Override // com.google.android.gms.internal.ads.zzevy
    public final void zzj(Object obj) {
        zzfth zzfthVar = this.f7667c;
        try {
            JSONObject r = fso.r("pii", (JSONObject) obj);
            dez dezVar = this.f7665a;
            if (dezVar == null || TextUtils.isEmpty(dezVar.f14078a)) {
                String str = this.f7666b;
                if (str != null) {
                    r.put("pdid", str);
                    r.put("pdidtype", "ssaid");
                    return;
                }
                return;
            }
            r.put("rdid", dezVar.f14078a);
            r.put("is_lat", dezVar.f14079b);
            r.put("idtype", "adid");
            if (zzfthVar.zzc()) {
                r.put("paidv1_id_android_3p", zzfthVar.zza());
                r.put("paidv1_creation_time_android_3p", zzfthVar.zzb().toEpochMilli());
            }
        } catch (JSONException unused) {
            agd.h();
        }
    }
}
