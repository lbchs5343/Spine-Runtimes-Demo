package com.google.android.gms.internal.ads;

import android.content.Context;
import java.io.IOException;

/* loaded from: classes3.dex */
public final class zzftn {

    /* renamed from: a, reason: collision with root package name */
    public static zzftn f8206a;

    /* renamed from: b, reason: collision with root package name */
    public final g.g f8207b;

    public zzftn(Context context) {
        if (g.g.f17764a == null) {
            g.g.f17764a = new g.g(context);
        }
        this.f8207b = g.g.f17764a;
        zzfti.zza(context);
    }

    public static final zzftn zza(Context context) {
        zzftn zzftnVar;
        synchronized (zzftn.class) {
            try {
                if (f8206a == null) {
                    f8206a = new zzftn(context);
                }
                zzftnVar = f8206a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzftnVar;
    }

    public final void zzb(zzfth zzfthVar) throws IOException {
        synchronized (zzftn.class) {
            this.f8207b.e("vendor_scoped_gpid_v2_id");
            this.f8207b.e("vendor_scoped_gpid_v2_creation_time");
        }
    }
}
