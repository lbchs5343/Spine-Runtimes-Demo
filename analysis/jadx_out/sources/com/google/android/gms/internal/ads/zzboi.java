package com.google.android.gms.internal.ads;

import android.content.Context;
import g.akx;
import g.fbc;
import g.gpu;

/* loaded from: classes3.dex */
public final class zzboi {

    /* renamed from: a, reason: collision with root package name */
    public static final fbc f4901a;

    /* renamed from: b, reason: collision with root package name */
    public static final gpu f4902b;

    /* renamed from: c, reason: collision with root package name */
    public final zzbnu f4903c;

    static {
        int i = 19;
        f4901a = new fbc(i);
        f4902b = new gpu(i);
    }

    public zzboi(Context context, akx akxVar, String str, zzfko zzfkoVar) {
        this.f4903c = new zzbnu(context, akxVar, str, f4901a, f4902b, zzfkoVar);
    }

    public final zzbny zza(String str, zzbob zzbobVar, zzboa zzboaVar) {
        return new zzbom(this.f4903c, str, zzbobVar, zzboaVar);
    }

    public final zzbor zzb() {
        return new zzbor(this.f4903c);
    }
}
