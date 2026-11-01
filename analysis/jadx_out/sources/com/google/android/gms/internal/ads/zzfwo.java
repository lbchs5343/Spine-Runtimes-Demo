package com.google.android.gms.internal.ads;

import g.bog;
import g.wb;
import java.io.Serializable;

/* loaded from: classes3.dex */
public abstract class zzfwo implements Serializable {
    public static zzfwo zzc() {
        return bog.f11908a;
    }

    public static zzfwo zzd(Object obj) {
        return obj == null ? bog.f11908a : new wb(obj);
    }

    public abstract zzfwo zza(zzfwh zzfwhVar);

    public abstract Object zzb(Object obj);
}
