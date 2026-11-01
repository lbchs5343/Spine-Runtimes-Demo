package com.google.android.gms.internal.ads;

import android.content.Context;
import g.dcy;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public final class zzavf {

    /* renamed from: a, reason: collision with root package name */
    public final dcy f4524a;

    public zzavf(final Context context, Executor executor) {
        this.f4524a = zzgei.zzj(new Callable(this) { // from class: com.google.android.gms.internal.ads.zzave
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Context context2 = context;
                try {
                    return zzfpx.zza(context2, context2.getPackageName(), Integer.toString(context2.getPackageManager().getPackageInfo(context2.getPackageName(), 0).versionCode));
                } catch (Throwable unused) {
                    return null;
                }
            }
        }, executor);
    }

    public final dcy zza() {
        return this.f4524a;
    }
}
