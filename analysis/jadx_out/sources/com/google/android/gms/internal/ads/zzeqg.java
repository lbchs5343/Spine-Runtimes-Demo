package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.BatteryManager;
import android.os.Build;
import g.dcy;
import g.edt;
import java.util.concurrent.Callable;

/* loaded from: classes3.dex */
public final class zzeqg implements zzevz {

    /* renamed from: a, reason: collision with root package name */
    public final zzges f7386a;

    /* renamed from: b, reason: collision with root package name */
    public final Context f7387b;

    public zzeqg(zzges zzgesVar, Context context) {
        this.f7386a = zzgesVar;
        this.f7387b = context;
    }

    public final Intent c() {
        Intent registerReceiver;
        IntentFilter intentFilter = new IntentFilter("android.intent.action.BATTERY_CHANGED");
        boolean booleanValue = ((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzkG)).booleanValue();
        Context context = this.f7387b;
        if (!booleanValue || Build.VERSION.SDK_INT < 33) {
            return context.registerReceiver(null, intentFilter);
        }
        registerReceiver = context.registerReceiver(null, intentFilter, 4);
        return registerReceiver;
    }

    @Override // com.google.android.gms.internal.ads.zzevz
    public final int zza() {
        return 14;
    }

    @Override // com.google.android.gms.internal.ads.zzevz
    @SuppressLint({"UnprotectedReceiver"})
    public final dcy zzb() {
        return this.f7386a.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzeqf
            @Override // java.util.concurrent.Callable
            public final Object call() {
                int intExtra;
                boolean z;
                int intExtra2;
                zzeqg zzeqgVar = zzeqg.this;
                zzeqgVar.getClass();
                boolean z2 = true;
                if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzlJ)).booleanValue()) {
                    BatteryManager batteryManager = (BatteryManager) zzeqgVar.f7387b.getSystemService("batterymanager");
                    r8 = batteryManager != null ? batteryManager.getIntProperty(4) / 100.0d : -1.0d;
                    if (Build.VERSION.SDK_INT >= 23 && batteryManager != null) {
                        z = batteryManager.isCharging();
                        return new zzeqh(r8, z);
                    }
                    Intent c2 = zzeqgVar.c();
                    if (c2 == null || ((intExtra2 = c2.getIntExtra("status", -1)) != 2 && intExtra2 != 5)) {
                        z2 = false;
                    }
                } else {
                    Intent c3 = zzeqgVar.c();
                    if (c3 == null || ((intExtra = c3.getIntExtra("status", -1)) != 2 && intExtra != 5)) {
                        z2 = false;
                    }
                    if (c3 != null) {
                        r8 = c3.getIntExtra("level", -1) / c3.getIntExtra("scale", -1);
                    }
                }
                z = z2;
                return new zzeqh(r8, z);
            }
        });
    }
}
