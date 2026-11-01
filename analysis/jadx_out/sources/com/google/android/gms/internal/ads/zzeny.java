package com.google.android.gms.internal.ads;

import android.location.Location;
import android.os.Bundle;
import android.text.TextUtils;
import g.abn;
import g.aeh;
import g.ckd;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/* loaded from: classes3.dex */
public final class zzeny implements zzevy {

    /* renamed from: a, reason: collision with root package name */
    public final zzffo f7303a;

    /* renamed from: b, reason: collision with root package name */
    public final long f7304b;

    public zzeny(zzffo zzffoVar, long j) {
        ckd.w(zzffoVar, "the targeting must not be null");
        this.f7303a = zzffoVar;
        this.f7304b = j;
    }

    @Override // com.google.android.gms.internal.ads.zzevy
    public final /* bridge */ /* synthetic */ void zzj(Object obj) {
        Bundle bundle = (Bundle) obj;
        zzffo zzffoVar = this.f7303a;
        aeh aehVar = zzffoVar.zzd;
        bundle.putInt("http_timeout_millis", aehVar.zzw);
        bundle.putString("slotname", zzffoVar.zzf);
        int i = zzffoVar.zzo.zza;
        if (i == 0) {
            throw null;
        }
        int i2 = i - 1;
        if (i2 == 1) {
            bundle.putBoolean("is_new_rewarded", true);
        } else if (i2 == 2) {
            bundle.putBoolean("is_rewarded_interstitial", true);
        }
        bundle.putLong("start_signals_timestamp", this.f7304b);
        zzfgc.zzg(bundle, "is_sdk_preload", true, aehVar.zzb());
        zzfgc.zzf(bundle, "cust_age", new SimpleDateFormat("yyyyMMdd", Locale.US).format(new Date(aehVar.zzb)), aehVar.zzb != -1);
        zzfgc.zzb(bundle, "extras", aehVar.zzc);
        int i3 = aehVar.zzd;
        zzfgc.zze(bundle, "cust_gender", i3, i3 != -1);
        zzfgc.zzd(bundle, "kw", aehVar.zze);
        int i4 = aehVar.zzg;
        zzfgc.zze(bundle, "tag_for_child_directed_treatment", i4, i4 != -1);
        if (aehVar.zzf) {
            bundle.putBoolean("test_request", true);
        }
        bundle.putInt("ppt_p13n", aehVar.zzy);
        zzfgc.zze(bundle, "d_imp_hdr", 1, aehVar.zza >= 2 && aehVar.zzh);
        String str = aehVar.zzi;
        zzfgc.zzf(bundle, "ppid", str, aehVar.zza >= 2 && !TextUtils.isEmpty(str));
        Location location = aehVar.zzk;
        if (location != null) {
            float accuracy = location.getAccuracy() * 1000.0f;
            long time = location.getTime() * 1000;
            double latitude = location.getLatitude() * 1.0E7d;
            double longitude = location.getLongitude() * 1.0E7d;
            Bundle bundle2 = new Bundle();
            bundle2.putFloat("radius", accuracy);
            bundle2.putLong("lat", (long) latitude);
            bundle2.putLong("long", (long) longitude);
            bundle2.putLong("time", time);
            bundle.putBundle("uule", bundle2);
        }
        zzfgc.zzc(bundle, abn.EXTRA_URL, aehVar.zzl);
        zzfgc.zzd(bundle, "neighboring_content_urls", aehVar.zzv);
        zzfgc.zzb(bundle, "custom_targeting", aehVar.zzn);
        zzfgc.zzd(bundle, "category_exclusions", aehVar.zzo);
        zzfgc.zzc(bundle, "request_agent", aehVar.zzp);
        zzfgc.zzc(bundle, "request_pkg", aehVar.zzq);
        zzfgc.zzg(bundle, "is_designed_for_families", aehVar.zzr, aehVar.zza >= 7);
        if (aehVar.zza >= 8) {
            int i5 = aehVar.zzt;
            zzfgc.zze(bundle, "tag_for_under_age_of_consent", i5, i5 != -1);
            zzfgc.zzc(bundle, "max_ad_content_rating", aehVar.zzu);
        }
    }
}
