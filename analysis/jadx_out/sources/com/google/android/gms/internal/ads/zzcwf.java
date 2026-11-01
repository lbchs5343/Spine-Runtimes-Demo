package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import g.bh;
import g.edt;
import g.ti;
import g.uf;
import java.util.List;
import org.json.JSONException;

/* loaded from: classes3.dex */
public final class zzcwf extends bh {

    /* renamed from: a, reason: collision with root package name */
    public final zzefg f5788a;

    /* renamed from: b, reason: collision with root package name */
    public final String f5789b;

    /* renamed from: c, reason: collision with root package name */
    public final String f5790c;

    /* renamed from: d, reason: collision with root package name */
    public final String f5791d;

    /* renamed from: e, reason: collision with root package name */
    public final List f5792e;

    /* renamed from: f, reason: collision with root package name */
    public final String f5793f;

    /* renamed from: g, reason: collision with root package name */
    public final Bundle f5794g;
    public final String h;
    public final long i;

    public zzcwf(zzfet zzfetVar, String str, zzefg zzefgVar, zzfew zzfewVar, String str2) {
        super("com.google.android.gms.ads.internal.client.IResponseInfo");
        String str3 = null;
        this.h = zzfetVar == null ? null : zzfetVar.zzab;
        this.f5790c = str2;
        this.f5791d = zzfewVar == null ? null : zzfewVar.zzb;
        if ("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter".equals(str) || "com.google.ads.mediation.customevent.CustomEventAdapter".equals(str)) {
            try {
                str3 = zzfetVar.zzv.getString("class_name");
            } catch (JSONException unused) {
            }
        }
        this.f5793f = str3 != null ? str3 : str;
        this.f5792e = zzefgVar.zzc();
        this.f5788a = zzefgVar;
        ti.f20033a.v.getClass();
        this.i = System.currentTimeMillis() / 1000;
        zzbce zzbceVar = zzbcn.zzgG;
        edt edtVar = edt.f15376a;
        if (!((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue() || zzfewVar == null) {
            this.f5794g = new Bundle();
        } else {
            this.f5794g = zzfewVar.zzk;
        }
        this.f5789b = (!((Boolean) edtVar.f15379d.zza(zzbcn.zziQ)).booleanValue() || zzfewVar == null || TextUtils.isEmpty(zzfewVar.zzi)) ? "" : zzfewVar.zzi;
    }

    public final long zzc() {
        return this.i;
    }

    public final String zzd() {
        return this.f5789b;
    }

    @Override // g.gcq
    public final Bundle zze() {
        return this.f5794g;
    }

    @Override // g.gcq
    public final uf zzf() {
        zzefg zzefgVar = this.f5788a;
        if (zzefgVar != null) {
            return zzefgVar.zza();
        }
        return null;
    }

    @Override // g.gcq
    public final String zzg() {
        return this.f5793f;
    }

    @Override // g.gcq
    public final String zzh() {
        return this.f5790c;
    }

    @Override // g.gcq
    public final String zzi() {
        return this.h;
    }

    @Override // g.gcq
    public final List zzj() {
        return this.f5792e;
    }

    public final String zzk() {
        return this.f5791d;
    }
}
