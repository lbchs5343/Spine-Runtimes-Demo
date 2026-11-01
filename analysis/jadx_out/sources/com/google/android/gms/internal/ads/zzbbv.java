package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.Intent;
import android.os.Environment;
import g.acw;
import g.chk;
import g.ckd;
import java.util.concurrent.Callable;

/* loaded from: classes3.dex */
public final class zzbbv {

    /* renamed from: a, reason: collision with root package name */
    public final Context f4718a;

    public zzbbv(Context context) {
        ckd.w(context, "Context can not be null");
        this.f4718a = context;
    }

    public final boolean zza(Intent intent) {
        ckd.w(intent, "Intent can not be null");
        return !this.f4718a.getPackageManager().queryIntentActivities(intent, 0).isEmpty();
    }

    public final boolean zzb() {
        return zza(new Intent("android.intent.action.INSERT").setType("vnd.android.cursor.dir/event"));
    }

    public final boolean zzc() {
        Callable callable = new Callable() { // from class: com.google.android.gms.internal.ads.zzbbu
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return Boolean.valueOf("mounted".equals(Environment.getExternalStorageState()));
            }
        };
        Context context = this.f4718a;
        return ((Boolean) acw.p(context, callable)).booleanValue() && chk.c(context).f12624a.checkCallingOrSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") == 0;
    }
}
