package com.google.android.gms.internal.ads;

import g.gdg;
import g.gxd;
import java.util.Collections;
import java.util.Map;

/* loaded from: classes3.dex */
public final class zzgyh {

    /* renamed from: a, reason: collision with root package name */
    public static volatile zzgyh f8676a;

    /* renamed from: b, reason: collision with root package name */
    public static final zzgyh f8677b = new zzgyh();
    public static final /* synthetic */ int zzb = 0;

    /* renamed from: c, reason: collision with root package name */
    public final Map f8678c = Collections.EMPTY_MAP;

    public static zzgyh zza() {
        gxd gxdVar = gxd.f18927a;
        return f8677b;
    }

    public static zzgyh zzb() {
        zzgyh zzgyhVar = f8676a;
        if (zzgyhVar != null) {
            return zzgyhVar;
        }
        synchronized (zzgyh.class) {
            try {
                zzgyh zzgyhVar2 = f8676a;
                if (zzgyhVar2 != null) {
                    return zzgyhVar2;
                }
                gxd gxdVar = gxd.f18927a;
                zzgyh a2 = zzgyp.a();
                f8676a = a2;
                return a2;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final zzgyv zzc(zzhai zzhaiVar, int i) {
        return (zzgyv) this.f8678c.get(new gdg(i, zzhaiVar));
    }
}
