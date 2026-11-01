package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.app.job.JobParameters;
import android.app.job.JobService;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.util.Base64;
import g.ab;
import g.crh;
import g.dsf;
import g.dwp;
import g.eow;
import g.fpd;
import g.ku;
import j$.util.Objects;

/* loaded from: classes3.dex */
public class JobInfoSchedulerService extends JobService {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f3918a = 0;

    @Override // android.app.job.JobService
    public final boolean onStartJob(JobParameters jobParameters) {
        String string = jobParameters.getExtras().getString("backendName");
        String string2 = jobParameters.getExtras().getString("extras");
        int i = jobParameters.getExtras().getInt("priority");
        final int i2 = jobParameters.getExtras().getInt("attemptNumber");
        crh.f(getApplicationContext());
        fpd d2 = ku.d();
        if (string == null) {
            throw new NullPointerException("Null backendName");
        }
        d2.f17190f = string;
        d2.f17188d = eow.d(i);
        if (string2 != null) {
            d2.f17187c = Base64.decode(string2, 0);
        }
        ab abVar = crh.f13373a;
        if (abVar == null) {
            throw new IllegalStateException("Not initialized!");
        }
        final dwp dwpVar = ((crh) abVar.f9894f.get()).f13374b;
        final ku w = d2.w();
        final dsf dsfVar = new dsf(this, 6, jobParameters);
        dwpVar.f14959c.execute(new Runnable() { // from class: g.dgh
            @Override // java.lang.Runnable
            public final void run() {
                final ku kuVar = w;
                final int i3 = i2;
                dsf dsfVar2 = dsfVar;
                final dwp dwpVar2 = dwp.this;
                ddc ddcVar = dwpVar2.f14961e;
                try {
                    try {
                        ahy ahyVar = dwpVar2.h;
                        Objects.requireNonNull(ahyVar);
                        ((cga) ddcVar).n(new aoi(19, ahyVar));
                        NetworkInfo activeNetworkInfo = ((ConnectivityManager) dwpVar2.f14960d.getSystemService("connectivity")).getActiveNetworkInfo();
                        if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
                            ((cga) ddcVar).n(new bqq() { // from class: g.blo
                                @Override // g.bqq
                                public final Object i() {
                                    dwp.this.f14958b.d(kuVar, i3 + 1, false);
                                    return null;
                                }
                            });
                        } else {
                            dwpVar2.j(kuVar, i3);
                        }
                        dsfVar2.run();
                    } catch (fqw unused) {
                        dwpVar2.f14958b.d(kuVar, i3 + 1, false);
                        dsfVar2.run();
                    }
                } catch (Throwable th) {
                    dsfVar2.run();
                    throw th;
                }
            }
        });
        return true;
    }

    @Override // android.app.job.JobService
    public final boolean onStopJob(JobParameters jobParameters) {
        return true;
    }
}
