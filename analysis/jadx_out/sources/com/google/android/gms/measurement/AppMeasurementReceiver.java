package com.google.android.gms.measurement;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.PowerManager;
import android.util.SparseArray;
import g.bgm;
import g.cyg;
import g.dnb;
import g.erx;

/* loaded from: classes3.dex */
public final class AppMeasurementReceiver extends erx {

    /* renamed from: a, reason: collision with root package name */
    public dnb f8990a;

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if (this.f8990a == null) {
            this.f8990a = new dnb(this);
        }
        dnb dnbVar = this.f8990a;
        dnbVar.getClass();
        bgm bgmVar = cyg.al(context, null, null).z;
        cyg.ak(bgmVar);
        if (intent == null) {
            bgmVar.f11520g.h("Receiver called with null intent");
            return;
        }
        String action = intent.getAction();
        bgmVar.f11519c.i(action, "Local receiver got");
        if (!"com.google.android.gms.measurement.UPLOAD".equals(action)) {
            if ("com.android.vending.INSTALL_REFERRER".equals(action)) {
                bgmVar.f11520g.h("Install Referrer Broadcasts are deprecated");
                return;
            }
            return;
        }
        Intent className = new Intent().setClassName(context, "com.google.android.gms.measurement.AppMeasurementService");
        className.setAction("com.google.android.gms.measurement.UPLOAD");
        bgmVar.f11519c.h("Starting wakeful intent.");
        ((AppMeasurementReceiver) dnbVar.f14452a).getClass();
        SparseArray sparseArray = erx.f16068b;
        synchronized (sparseArray) {
            try {
                int i = erx.f16069c;
                int i2 = i + 1;
                erx.f16069c = i2;
                if (i2 <= 0) {
                    erx.f16069c = 1;
                }
                className.putExtra("androidx.contentpager.content.wakelockid", i);
                ComponentName startService = context.startService(className);
                if (startService == null) {
                    return;
                }
                PowerManager.WakeLock newWakeLock = ((PowerManager) context.getSystemService("power")).newWakeLock(1, "androidx.core:wake:" + startService.flattenToShortString());
                newWakeLock.setReferenceCounted(false);
                newWakeLock.acquire(60000L);
                sparseArray.put(i, newWakeLock);
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
