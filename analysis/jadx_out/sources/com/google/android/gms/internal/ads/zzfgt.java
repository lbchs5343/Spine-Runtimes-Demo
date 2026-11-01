package com.google.android.gms.internal.ads;

import android.content.Context;
import g.ayv;
import g.ci;
import g.ckd;
import g.gtb;

/* loaded from: classes3.dex */
public final class zzfgt {

    /* renamed from: a, reason: collision with root package name */
    public static ci f7886a;

    /* renamed from: b, reason: collision with root package name */
    public static final Object f7887b = new Object();
    public static ayv zzb;

    public static ci zza(Context context) {
        ci ciVar;
        zzb(context, false);
        synchronized (f7887b) {
            ciVar = f7886a;
        }
        return ciVar;
    }

    public static void zzb(Context context, boolean z) {
        synchronized (f7887b) {
            try {
                if (zzb == null) {
                    zzb = new gtb(context);
                }
                ci ciVar = f7886a;
                if (ciVar == null || ((ciVar.d() && !f7886a.a()) || (z && f7886a.d()))) {
                    ayv ayvVar = zzb;
                    ckd.w(ayvVar, "the appSetIdClient shouldn't be null");
                    f7886a = ayvVar.a();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
