package com.google.android.gms.measurement;

import android.app.Service;
import android.app.job.JobParameters;
import android.content.Intent;
import android.os.IBinder;
import android.os.PowerManager;
import android.util.SparseArray;
import g.bgm;
import g.bk;
import g.bsz;
import g.ccp;
import g.cyg;
import g.erx;
import g.fuy;
import g.ir;
import g.zs;

/* loaded from: classes3.dex */
public final class AppMeasurementService extends Service implements ir {

    /* renamed from: a, reason: collision with root package name */
    public ccp f8991a;

    @Override // g.ir
    public final void b(Intent intent) {
        SparseArray sparseArray = erx.f16068b;
        int intExtra = intent.getIntExtra("androidx.contentpager.content.wakelockid", 0);
        if (intExtra == 0) {
            return;
        }
        SparseArray sparseArray2 = erx.f16068b;
        synchronized (sparseArray2) {
            try {
                PowerManager.WakeLock wakeLock = (PowerManager.WakeLock) sparseArray2.get(intExtra);
                if (wakeLock != null) {
                    wakeLock.release();
                    sparseArray2.remove(intExtra);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // g.ir
    public final void c(JobParameters jobParameters) {
        throw new UnsupportedOperationException();
    }

    public final ccp d() {
        if (this.f8991a == null) {
            this.f8991a = new ccp(4, this);
        }
        return this.f8991a;
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        ccp d2 = d();
        if (intent == null) {
            d2.e().f11518b.h("onBind called with null intent");
            return null;
        }
        d2.getClass();
        String action = intent.getAction();
        if ("com.google.android.gms.measurement.START".equals(action)) {
            return new zs(bsz.ai((Service) d2.f12646d));
        }
        d2.e().f11520g.i(action, "onBind received unknown action");
        return null;
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        bgm bgmVar = cyg.al((Service) d().f12646d, null, null).z;
        cyg.ak(bgmVar);
        bgmVar.f11519c.h("Local AppMeasurementService is starting up");
    }

    @Override // android.app.Service
    public final void onDestroy() {
        bgm bgmVar = cyg.al((Service) d().f12646d, null, null).z;
        cyg.ak(bgmVar);
        bgmVar.f11519c.h("Local AppMeasurementService is shutting down");
        super.onDestroy();
    }

    @Override // android.app.Service
    public final void onRebind(Intent intent) {
        ccp d2 = d();
        if (intent == null) {
            d2.e().f11518b.h("onRebind called with null intent");
            return;
        }
        d2.getClass();
        d2.e().f11519c.i(intent.getAction(), "onRebind called. action");
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i, int i2) {
        ccp d2 = d();
        bgm bgmVar = cyg.al((Service) d2.f12646d, null, null).z;
        cyg.ak(bgmVar);
        if (intent == null) {
            bgmVar.f11520g.h("AppMeasurementService started with null intent");
            return 2;
        }
        String action = intent.getAction();
        bgmVar.f11519c.e(Integer.valueOf(i2), "Local AppMeasurementService called. startId, action", action);
        if (!"com.google.android.gms.measurement.UPLOAD".equals(action)) {
            return 2;
        }
        bk bkVar = new bk(d2, i2, bgmVar, intent);
        bsz ai = bsz.ai((Service) d2.f12646d);
        ai.zzaz().p(new fuy(ai, 14, bkVar));
        return 2;
    }

    @Override // android.app.Service
    public final boolean onUnbind(Intent intent) {
        ccp d2 = d();
        if (intent == null) {
            d2.e().f11518b.h("onUnbind called with null intent");
            return true;
        }
        d2.getClass();
        d2.e().f11519c.i(intent.getAction(), "onUnbind called for intent. action");
        return true;
    }

    @Override // g.ir
    public final boolean zzc(int i) {
        return stopSelfResult(i);
    }
}
