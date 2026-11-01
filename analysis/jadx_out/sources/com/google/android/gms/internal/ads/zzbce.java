package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import android.os.Bundle;
import g.ams;
import g.edt;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public abstract class zzbce {

    /* renamed from: a, reason: collision with root package name */
    public final Object f4719a;

    /* renamed from: b, reason: collision with root package name */
    public final int f4720b;

    /* renamed from: c, reason: collision with root package name */
    public final String f4721c;

    /* renamed from: d, reason: collision with root package name */
    public final Object f4722d;

    public zzbce(int i, Object obj, Object obj2, String str) {
        this.f4720b = i;
        this.f4721c = str;
        this.f4722d = obj;
        this.f4719a = obj2;
        edt.f15376a.f15377b.zzd(this);
    }

    public static zzbce zzf(int i, String str, float f2, float f3) {
        return new ams(1, str, Float.valueOf(f2), Float.valueOf(f3), 3);
    }

    public static zzbce zzg(int i, String str, int i2, int i3) {
        return new ams(1, str, Integer.valueOf(i2), Integer.valueOf(i3), 1);
    }

    public static zzbce zzh(int i, String str, long j, long j2) {
        return new ams(1, str, Long.valueOf(j), Long.valueOf(j2), 2);
    }

    public static zzbce zzi(int i, String str) {
        ams amsVar = new ams(1, "gads:sdk_core_constants:experiment_id", null, null, 4);
        edt.f15376a.f15377b.zzc(amsVar);
        return amsVar;
    }

    public abstract Object e(JSONObject jSONObject);

    public abstract Object f(SharedPreferences sharedPreferences);

    public abstract Object zzb(Bundle bundle);

    public abstract void zzd(SharedPreferences.Editor editor, Object obj);

    public final int zze() {
        return this.f4720b;
    }

    public final Object zzj() {
        return edt.f15376a.f15379d.zza(this);
    }

    public final Object zzk() {
        return edt.f15376a.f15379d.f4731f ? this.f4719a : this.f4722d;
    }

    public final String zzl() {
        return this.f4721c;
    }
}
