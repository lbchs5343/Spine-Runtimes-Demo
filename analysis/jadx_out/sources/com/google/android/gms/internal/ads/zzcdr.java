package com.google.android.gms.internal.ads;

import android.content.Context;
import g.fdg;
import g.flb;
import g.fup;
import g.mx;
import g.ti;
import g.ux;
import java.lang.ref.WeakReference;
import java.util.HashMap;

/* loaded from: classes3.dex */
public abstract class zzcdr {

    /* renamed from: a, reason: collision with root package name */
    public final WeakReference f5209a;

    /* renamed from: b, reason: collision with root package name */
    public final Context f5210b;

    /* renamed from: c, reason: collision with root package name */
    public final String f5211c;

    public zzcdr(zzccf zzccfVar) {
        Context context = zzccfVar.getContext();
        this.f5210b = context;
        this.f5211c = ti.f20033a.z.at(context, zzccfVar.zzn().afmaVersion);
        this.f5209a = new WeakReference(zzccfVar);
    }

    public static /* bridge */ /* synthetic */ void d(zzcdr zzcdrVar, HashMap hashMap) {
        zzccf zzccfVar = (zzccf) zzcdrVar.f5209a.get();
        if (zzccfVar != null) {
            zzccfVar.zzd("onPrecacheEvent", hashMap);
        }
    }

    public void release() {
    }

    public abstract void zzf();

    public final void zzg(String str, String str2, String str3, String str4) {
        mx.f19684e.post(new fup(this, str, str2, str3, str4, 0));
    }

    public final void zzj(String str, String str2, long j) {
        mx.f19684e.post(new flb(this, str, str2, j));
    }

    public final void zzn(String str, String str2, int i, int i2, long j, long j2, boolean z, int i3, int i4) {
        mx.f19684e.post(new ux(this, str, str2, i, i2, j, j2, z, i3, i4));
    }

    public final void zzo(String str, String str2, long j, long j2, boolean z, long j3, long j4, long j5, int i, int i2) {
        mx.f19684e.post(new fdg(this, str, str2, j, j2, j3, j4, j5, z, i, i2));
    }

    public void zzp(int i) {
    }

    public void zzq(int i) {
    }

    public void zzr(int i) {
    }

    public void zzs(int i) {
    }

    public abstract boolean zzt(String str);

    public boolean zzu(String str, String[] strArr) {
        return zzt(str);
    }

    public boolean zzw(String str, String[] strArr, zzcdj zzcdjVar) {
        return zzt(str);
    }
}
