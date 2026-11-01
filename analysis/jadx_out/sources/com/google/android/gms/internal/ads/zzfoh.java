package com.google.android.gms.internal.ads;

import android.os.Build;
import android.webkit.WebView;
import java.util.Date;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class zzfoh {

    /* renamed from: a, reason: collision with root package name */
    public int f8099a;

    /* renamed from: b, reason: collision with root package name */
    public final String f8100b;

    /* renamed from: c, reason: collision with root package name */
    public zzfpj f8101c;

    /* renamed from: d, reason: collision with root package name */
    public long f8102d;

    public zzfoh(String str) {
        zzb();
        this.f8100b = str;
        this.f8101c = new zzfpj(null);
    }

    public final void e(zzfna zzfnaVar, zzfmy zzfmyVar, JSONObject jSONObject) {
        String zzh = zzfnaVar.zzh();
        JSONObject jSONObject2 = new JSONObject();
        zzfon.zze(jSONObject2, "environment", "app");
        zzfon.zze(jSONObject2, "adSessionType", zzfmyVar.zzd());
        JSONObject jSONObject3 = new JSONObject();
        zzfon.zze(jSONObject3, "deviceType", Build.MANUFACTURER + "; " + Build.MODEL);
        zzfon.zze(jSONObject3, "osVersion", Integer.toString(Build.VERSION.SDK_INT));
        zzfon.zze(jSONObject3, "os", "Android");
        zzfon.zze(jSONObject2, "deviceInfo", jSONObject3);
        zzfon.zze(jSONObject2, "deviceCategory", zzfom.zza().toString());
        JSONArray jSONArray = new JSONArray();
        jSONArray.put("clid");
        jSONArray.put("vlid");
        zzfon.zze(jSONObject2, "supports", jSONArray);
        JSONObject jSONObject4 = new JSONObject();
        zzfon.zze(jSONObject4, "partnerName", zzfmyVar.zze().zzb());
        zzfon.zze(jSONObject4, "partnerVersion", zzfmyVar.zze().zzc());
        zzfon.zze(jSONObject2, "omidNativeInfo", jSONObject4);
        JSONObject jSONObject5 = new JSONObject();
        zzfon.zze(jSONObject5, "libraryVersion", "1.4.14-google_20240908");
        zzfon.zze(jSONObject5, "appId", zzfnw.zzb().zza().getApplicationContext().getPackageName());
        zzfon.zze(jSONObject2, "app", jSONObject5);
        if (zzfmyVar.zzf() != null) {
            zzfon.zze(jSONObject2, "contentUrl", zzfmyVar.zzf());
        }
        if (zzfmyVar.zzg() != null) {
            zzfon.zze(jSONObject2, "customReferenceData", zzfmyVar.zzg());
        }
        JSONObject jSONObject6 = new JSONObject();
        Iterator it = zzfmyVar.zzh().iterator();
        if (it.hasNext()) {
            throw null;
        }
        zzfny.zza().zzj(zza(), zzh, jSONObject2, jSONObject6, jSONObject);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final WebView zza() {
        return (WebView) this.f8101c.get();
    }

    public final void zzb() {
        this.f8102d = System.nanoTime();
        this.f8099a = 1;
    }

    public void zzc() {
        this.f8101c.clear();
    }

    public final void zzd(String str, long j) {
        if (j < this.f8102d || this.f8099a == 3) {
            return;
        }
        this.f8099a = 3;
        zzfny.zza().zzh(zza(), this.f8100b, str);
    }

    public final void zze() {
        zzfny.zza().zzc(zza(), this.f8100b);
    }

    public final void zzf(zzfmx zzfmxVar) {
        zzfny.zza().zzd(zza(), this.f8100b, zzfmxVar.zzb());
    }

    public final void zzg(Date date) {
        if (date == null) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        zzfon.zze(jSONObject, "timestamp", Long.valueOf(date.getTime()));
        zzfny.zza().zzf(zza(), jSONObject);
    }

    public final void zzh(String str, long j) {
        if (j >= this.f8102d) {
            this.f8099a = 2;
            zzfny.zza().zzh(zza(), this.f8100b, str);
        }
    }

    public void zzi(zzfna zzfnaVar, zzfmy zzfmyVar) {
        e(zzfnaVar, zzfmyVar, null);
    }

    public final void zzk(boolean z) {
        if (zzp()) {
            zzfny.zza().zzi(zza(), this.f8100b, true != z ? "backgrounded" : "foregrounded");
        }
    }

    public final void zzl(float f2) {
        zzfny.zza().zze(zza(), this.f8100b, f2);
    }

    public final void zzm(boolean z) {
        if (zzp()) {
            zzfny.zza().zzg(zza(), this.f8100b, true != z ? "unlocked" : "locked");
        }
    }

    public void zzo() {
    }

    public final boolean zzp() {
        return this.f8101c.get() != 0;
    }
}
