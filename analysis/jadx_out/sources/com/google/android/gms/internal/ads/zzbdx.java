package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public class zzbdx {

    /* renamed from: a, reason: collision with root package name */
    public final String f4788a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f4789b;

    /* renamed from: c, reason: collision with root package name */
    public final int f4790c;

    public zzbdx(String str, Object obj, int i) {
        this.f4788a = str;
        this.f4789b = obj;
        this.f4790c = i;
    }

    public static zzbdx zza(String str, double d2) {
        return new zzbdx(str, Double.valueOf(d2), 3);
    }

    public static zzbdx zzb(String str, long j) {
        return new zzbdx(str, Long.valueOf(j), 2);
    }

    public static zzbdx zzc(String str, String str2) {
        return new zzbdx("gad:dynamite_module:experiment_id", "", 4);
    }

    public static zzbdx zzd(String str, boolean z) {
        return new zzbdx(str, Boolean.valueOf(z), 1);
    }

    public final Object zze() {
        zzbfc zzbfcVar = (zzbfc) zzbfe.f4791a.get();
        Object obj = this.f4789b;
        if (zzbfcVar != null) {
            int i = this.f4790c - 1;
            String str = this.f4788a;
            return i != 0 ? i != 1 ? i != 2 ? zzbfcVar.zzd(str, (String) obj) : zzbfcVar.zzb(str, ((Double) obj).doubleValue()) : zzbfcVar.zzc(str, ((Long) obj).longValue()) : zzbfcVar.zza(str, ((Boolean) obj).booleanValue());
        }
        AtomicReference atomicReference = zzbfe.f4792b;
        if (((zzbfd) atomicReference.get()) != null) {
            ((zzbfd) atomicReference.get()).zza();
        }
        return obj;
    }
}
