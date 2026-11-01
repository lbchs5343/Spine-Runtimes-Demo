package com.google.android.gms.measurement;

import android.annotation.TargetApi;
import android.app.Service;
import android.app.job.JobParameters;
import android.app.job.JobService;
import android.content.Intent;
import g.bgm;
import g.bsz;
import g.ccp;
import g.cyg;
import g.eax;
import g.fuy;
import g.ir;

@TargetApi(24)
/* loaded from: classes3.dex */
public final class AppMeasurementJobService extends JobService implements ir {

    /* renamed from: a, reason: collision with root package name */
    public ccp f8989a;

    @Override // g.ir
    public final void b(Intent intent) {
    }

    @Override // g.ir
    public final void c(JobParameters jobParameters) {
        jobFinished(jobParameters, false);
    }

    public final ccp d() {
        if (this.f8989a == null) {
            this.f8989a = new ccp(4, this);
        }
        return this.f8989a;
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

    @Override // android.app.job.JobService
    public final boolean onStartJob(JobParameters jobParameters) {
        ccp d2 = d();
        bgm bgmVar = cyg.al((Service) d2.f12646d, null, null).z;
        cyg.ak(bgmVar);
        String string = jobParameters.getExtras().getString("action");
        bgmVar.f11519c.i(string, "Local AppMeasurementJobService called. action");
        if (!"com.google.android.gms.measurement.UPLOAD".equals(string)) {
            return true;
        }
        eax eaxVar = new eax(d2, bgmVar, jobParameters, 21, false);
        bsz ai = bsz.ai((Service) d2.f12646d);
        ai.zzaz().p(new fuy(ai, 14, eaxVar));
        return true;
    }

    @Override // android.app.job.JobService
    public final boolean onStopJob(JobParameters jobParameters) {
        return false;
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
        throw new UnsupportedOperationException();
    }
}
