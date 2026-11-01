package com.google.android.gms.internal.ads;

import android.content.Context;
import g.akx;
import g.edt;

/* loaded from: classes3.dex */
public final class zzbnz {

    /* renamed from: a, reason: collision with root package name */
    public zzboi f4896a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f4897b = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final Object f4898c = new Object();

    /* renamed from: d, reason: collision with root package name */
    public zzboi f4899d;

    public final zzboi zza(Context context, akx akxVar, zzfko zzfkoVar) {
        zzboi zzboiVar;
        synchronized (this.f4897b) {
            try {
                if (this.f4899d == null) {
                    Context applicationContext = context.getApplicationContext();
                    if (applicationContext != null) {
                        context = applicationContext;
                    }
                    this.f4899d = new zzboi(context, akxVar, (String) edt.f15376a.f15379d.zza(zzbcn.zza), zzfkoVar);
                }
                zzboiVar = this.f4899d;
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzboiVar;
    }

    public final zzboi zzb(Context context, akx akxVar, zzfko zzfkoVar) {
        zzboi zzboiVar;
        synchronized (this.f4898c) {
            try {
                if (this.f4896a == null) {
                    Context applicationContext = context.getApplicationContext();
                    if (applicationContext != null) {
                        context = applicationContext;
                    }
                    this.f4896a = new zzboi(context, akxVar, (String) zzbex.zza.zze(), zzfkoVar);
                }
                zzboiVar = this.f4896a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzboiVar;
    }
}
