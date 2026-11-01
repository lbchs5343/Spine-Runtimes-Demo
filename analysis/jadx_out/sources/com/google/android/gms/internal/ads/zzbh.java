package com.google.android.gms.internal.ads;

import g.awf;
import g.tn;
import java.io.IOException;

/* loaded from: classes3.dex */
public class zzbh extends IOException {
    public final boolean zza;
    public final int zzb;

    public zzbh(String str, Throwable th, boolean z, int i) {
        super(str, th);
        this.zza = z;
        this.zzb = i;
    }

    public static zzbh zza(String str, Throwable th) {
        return new zzbh(str, th, true, 1);
    }

    public static zzbh zzb(String str, Throwable th) {
        return new zzbh(str, th, true, 0);
    }

    public static zzbh zzc(String str) {
        return new zzbh(str, null, false, 1);
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        StringBuilder l = tn.l(super.getMessage(), " {contentIsMalformed=");
        l.append(this.zza);
        l.append(", dataType=");
        return awf.x(l, this.zzb, "}");
    }
}
