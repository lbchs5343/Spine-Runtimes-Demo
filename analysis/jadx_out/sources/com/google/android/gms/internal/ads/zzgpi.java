package com.google.android.gms.internal.ads;

/* loaded from: classes3.dex */
public final class zzgpi extends RuntimeException {
    public zzgpi(String str) {
        super(str);
    }

    public zzgpi(String str, Throwable th) {
        super(str, th);
    }

    public zzgpi(Throwable th) {
        super(th);
    }

    public static Object zza(zzgph zzgphVar) {
        try {
            return zzgphVar.zza();
        } catch (Exception e2) {
            throw new zzgpi(e2);
        }
    }
}
