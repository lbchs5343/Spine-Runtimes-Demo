package com.google.android.gms.internal.ads;

/* loaded from: classes3.dex */
public abstract class zzhfp {
    public static zzhfp zzb(Class cls) {
        return System.getProperty("java.vm.name").equalsIgnoreCase("Dalvik") ? new zzhfk(cls.getSimpleName()) : new zzhfm(cls.getSimpleName());
    }

    public abstract void zza(String str);
}
