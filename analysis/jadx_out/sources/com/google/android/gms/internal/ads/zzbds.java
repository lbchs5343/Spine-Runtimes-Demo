package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import com.bykv.vk.component.ttvideo.utils.AVErrorInfo;
import g.agd;
import g.awn;
import g.bme;
import g.bpr;
import g.bsn;
import g.dcq;
import g.dm;
import g.dzm;
import g.eab;
import g.edt;
import g.emr;
import g.gwy;
import g.sq;
import g.ti;
import java.util.Date;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class zzbds {

    /* renamed from: a, reason: collision with root package name */
    public String f4771a;

    /* renamed from: b, reason: collision with root package name */
    public JSONArray f4772b;

    /* renamed from: c, reason: collision with root package name */
    public final zzdsr f4773c;

    /* renamed from: d, reason: collision with root package name */
    public Context f4774d;

    /* renamed from: e, reason: collision with root package name */
    public zzbdq f4775e;

    /* renamed from: f, reason: collision with root package name */
    public final ScheduledExecutorService f4776f;

    /* renamed from: g, reason: collision with root package name */
    public zzbdp f4777g;
    public long h = 0;
    public final sq i;
    public long j;
    public final bsn k;
    public bpr l;

    public zzbds(ScheduledExecutorService scheduledExecutorService, sq sqVar, bsn bsnVar, zzdsr zzdsrVar) {
        this.f4776f = scheduledExecutorService;
        this.i = sqVar;
        this.k = bsnVar;
        this.f4773c = zzdsrVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0039, code lost:
    
        if (android.os.SystemClock.elapsedRealtime() <= r7.h) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x004e, code lost:
    
        r1 = r7.l;
        r2 = android.net.Uri.parse(r7.f4771a);
        r1.getClass();
        r3 = new android.os.Bundle();
        r4 = r1.f11973d;
        r1 = r1.f11972c;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0062, code lost:
    
        r5 = new android.os.Bundle();
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x006b, code lost:
    
        if (r5.isEmpty() == false) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x006d, code lost:
    
        r5 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x006e, code lost:
    
        if (r5 == null) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0070, code lost:
    
        r3.putAll(r5);
        ((g.hds) r1).e(r4, r2, r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0079, code lost:
    
        ((g.hds) r1).g(r4, r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x004c, code lost:
    
        if (((java.lang.Boolean) g.edt.f15376a.f15379d.zza(com.google.android.gms.internal.ads.zzbcn.zzjv)).booleanValue() != false) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void m() {
        ScheduledExecutorService scheduledExecutorService;
        zzbdp zzbdpVar = this.f4777g;
        if (zzbdpVar == null) {
            agd.d("PACT callback is not present, please initialize the PawCustomTabsImpl.");
            return;
        }
        if (zzbdpVar.zza().booleanValue()) {
            return;
        }
        if (this.f4771a != null && this.l != null && (scheduledExecutorService = this.f4776f) != null) {
            if (this.h != 0) {
                ti.f20033a.v.getClass();
            }
        }
        agd.e("PACT max retry connection duration timed out");
        return;
        scheduledExecutorService.schedule(this.f4775e, ((Long) edt.f15376a.f15379d.zza(zzbcn.zzjw)).longValue(), TimeUnit.MILLISECONDS);
    }

    public final void n(JSONObject jSONObject) {
        try {
            if (this.f4772b == null) {
                this.f4772b = new JSONArray((String) edt.f15376a.f15379d.zza(zzbcn.zzjy));
            }
            jSONObject.put("eids", this.f4772b);
        } catch (JSONException e2) {
            agd.f("Error fetching the PACT active eids JSON: ", e2);
        }
    }

    public final JSONObject o(String str, String str2) {
        long j;
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("paw_id", str);
        jSONObject.put(AVErrorInfo.ERROR, str2);
        if (((Boolean) zzbes.zzb.zze()).booleanValue()) {
            j = ((Long) edt.f15376a.f15379d.zza(zzbcn.zzjz)).longValue();
        } else {
            j = 0;
        }
        jSONObject.put("sdk_ttl_ms", j);
        n(jSONObject);
        if (((Boolean) zzbes.zza.zze()).booleanValue()) {
            jSONObject.put("appLevelSignals", this.k.g());
        }
        return jSONObject;
    }

    public final JSONObject p(String str, String str2) {
        long j;
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("paw_id", str);
        jSONObject.put("signal", str2);
        if (((Boolean) zzbes.zzb.zze()).booleanValue()) {
            j = ((Long) edt.f15376a.f15379d.zza(zzbcn.zzjz)).longValue();
        } else {
            j = 0;
        }
        jSONObject.put("sdk_ttl_ms", j);
        n(jSONObject);
        if (((Boolean) zzbes.zza.zze()).booleanValue()) {
            jSONObject.put("appLevelSignals", this.k.g());
        }
        return jSONObject;
    }

    public final void q(String str) {
        try {
            bpr bprVar = this.l;
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("gsppack", true);
            jSONObject.put("fpt", new Date(this.j).toString());
            n(jSONObject);
            if (((Boolean) zzbes.zza.zze()).booleanValue()) {
                jSONObject.put("appLevelSignals", this.k.g());
            }
            bprVar.e(jSONObject.toString());
            dm dmVar = new dm(this, str, 0);
            if (((Boolean) zzbes.zzb.zze()).booleanValue()) {
                this.i.i(this.l, dmVar);
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putString("query_info_type", "requester_type_6");
            Context context = this.f4774d;
            bme bmeVar = bme.BANNER;
            dcq dcqVar = new dcq(3);
            dcqVar.h(bundle);
            emr.t(context, bmeVar, new awn(dcqVar), dmVar);
        } catch (JSONException e2) {
            agd.f("Error creating JSON: ", e2);
        }
    }

    public final bpr zzb() {
        return this.l;
    }

    public final void zzg(Context context, eab eabVar, String str, gwy gwyVar) {
        if (context == null) {
            throw new IllegalArgumentException("App Context parameter is null");
        }
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("Origin parameter is empty or null");
        }
        if (eabVar == null) {
            throw new IllegalArgumentException("CustomTabsClient parameter is null");
        }
        this.f4774d = context;
        this.f4771a = str;
        zzdsr zzdsrVar = this.f4773c;
        zzbdp zzbdpVar = new zzbdp(this, gwyVar, zzdsrVar);
        this.f4777g = zzbdpVar;
        bpr d2 = eabVar.d(zzbdpVar);
        this.l = d2;
        if (d2 == null) {
            agd.d("CustomTabsClient failed to create new session.");
        }
        dzm.z(zzdsrVar, "pact_action", new Pair("pe", "pact_init"));
    }

    public final void zzi(long j) {
        this.j = j;
    }
}
