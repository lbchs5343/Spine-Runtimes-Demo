package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Bundle;
import android.os.SystemClock;
import android.util.Pair;
import g.agd;
import g.dzm;
import g.edt;
import g.gwy;
import g.ti;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class zzbdp extends gwy {

    /* renamed from: a, reason: collision with root package name */
    public final gwy f4766a;

    /* renamed from: b, reason: collision with root package name */
    public final zzdsr f4767b;

    /* renamed from: c, reason: collision with root package name */
    public final AtomicBoolean f4768c = new AtomicBoolean(false);

    /* renamed from: d, reason: collision with root package name */
    public final List f4769d = Arrays.asList(((String) edt.f15376a.f15379d.zza(zzbcn.zzjx)).split(","));

    /* renamed from: e, reason: collision with root package name */
    public final zzbds f4770e;

    public zzbdp(zzbds zzbdsVar, gwy gwyVar, zzdsr zzdsrVar) {
        this.f4766a = gwyVar;
        this.f4770e = zzbdsVar;
        this.f4767b = zzdsrVar;
    }

    @Override // g.gwy
    public final void extraCallback(String str, Bundle bundle) {
        gwy gwyVar = this.f4766a;
        if (gwyVar != null) {
            gwyVar.extraCallback(str, bundle);
        }
    }

    @Override // g.gwy
    public final Bundle extraCallbackWithResult(String str, Bundle bundle) {
        gwy gwyVar = this.f4766a;
        if (gwyVar != null) {
            return gwyVar.extraCallbackWithResult(str, bundle);
        }
        return null;
    }

    @Override // g.gwy
    public final void onActivityResized(int i, int i2, Bundle bundle) {
        gwy gwyVar = this.f4766a;
        if (gwyVar != null) {
            gwyVar.onActivityResized(i, i2, bundle);
        }
    }

    @Override // g.gwy
    public final void onMessageChannelReady(Bundle bundle) {
        this.f4768c.set(false);
        gwy gwyVar = this.f4766a;
        if (gwyVar != null) {
            gwyVar.onMessageChannelReady(bundle);
        }
    }

    /* JADX WARN: Type inference failed for: r5v9, types: [com.google.android.gms.internal.ads.zzbdq] */
    @Override // g.gwy
    public final void onNavigationEvent(int i, Bundle bundle) {
        this.f4768c.set(false);
        gwy gwyVar = this.f4766a;
        if (gwyVar != null) {
            gwyVar.onNavigationEvent(i, bundle);
        }
        ti tiVar = ti.f20033a;
        tiVar.v.getClass();
        long currentTimeMillis = System.currentTimeMillis();
        final zzbds zzbdsVar = this.f4770e;
        zzbdsVar.zzi(currentTimeMillis);
        List list = this.f4769d;
        if (list == null || !list.contains(String.valueOf(i))) {
            return;
        }
        tiVar.v.getClass();
        zzbdsVar.h = SystemClock.elapsedRealtime() + ((Integer) edt.f15376a.f15379d.zza(zzbcn.zzju)).intValue();
        if (zzbdsVar.f4775e == null) {
            zzbdsVar.f4775e = new Runnable() { // from class: com.google.android.gms.internal.ads.zzbdq
                @Override // java.lang.Runnable
                public final void run() {
                    zzbds.this.m();
                }
            };
        }
        zzbdsVar.m();
        dzm.z(this.f4767b, "pact_action", new Pair("pe", "pact_reqpmc"));
    }

    @Override // g.gwy
    public final void onPostMessage(String str, Bundle bundle) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.optInt("gpa", -1) == 0) {
                this.f4768c.set(true);
                dzm.z(this.f4767b, "pact_action", new Pair("pe", "pact_con"));
                this.f4770e.q(jSONObject.getString("paw_id"));
            }
        } catch (JSONException unused) {
            agd.h();
        }
        gwy gwyVar = this.f4766a;
        if (gwyVar != null) {
            gwyVar.onPostMessage(str, bundle);
        }
    }

    @Override // g.gwy
    public final void onRelationshipValidationResult(int i, Uri uri, boolean z, Bundle bundle) {
        gwy gwyVar = this.f4766a;
        if (gwyVar != null) {
            gwyVar.onRelationshipValidationResult(i, uri, z, bundle);
        }
    }

    public final Boolean zza() {
        return Boolean.valueOf(this.f4768c.get());
    }
}
