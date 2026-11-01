package g;

import android.content.Context;
import android.net.Network;
import android.net.Uri;
import androidx.work.WorkerParameters;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.WorkDatabase_Impl;
import j$.util.Objects;
import java.util.List;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public abstract class cg {

    /* renamed from: g, reason: collision with root package name */
    public boolean f12807g;
    public final Context h;
    public final WorkerParameters i;
    public final AtomicInteger j = new AtomicInteger(-256);

    public cg(Context context, WorkerParameters workerParameters) {
        this.h = context;
        this.i = workerParameters;
    }

    public final Context getApplicationContext() {
        return this.h;
    }

    public Executor getBackgroundExecutor() {
        return this.i.f335f;
    }

    public abstract dcy getForegroundInfoAsync();

    public final UUID getId() {
        return this.i.f334e;
    }

    public final dwa getInputData() {
        return this.i.h;
    }

    public final Network getNetwork() {
        return this.i.f332c.f14731c;
    }

    public final int getRunAttemptCount() {
        return this.i.f333d;
    }

    public final int getStopReason() {
        return this.j.get();
    }

    public final Set<String> getTags() {
        return this.i.j;
    }

    public ccc getTaskExecutor() {
        return this.i.f330a;
    }

    public final List<String> getTriggeredContentAuthorities() {
        return this.i.f332c.f14729a;
    }

    public final List<Uri> getTriggeredContentUris() {
        return this.i.f332c.f14730b;
    }

    public gsd getWorkerFactory() {
        return this.i.f336g;
    }

    public final boolean isStopped() {
        return this.j.get() != -256;
    }

    public final boolean isUsed() {
        return this.f12807g;
    }

    public void onStopped() {
    }

    public final dcy setForegroundAsync(dju djuVar) {
        dcr dcrVar = this.i.f331b;
        Context applicationContext = getApplicationContext();
        UUID id = getId();
        aqv aqvVar = (aqv) dcrVar.f13977a.f18325e;
        nz nzVar = new nz(dcrVar, id, djuVar, applicationContext);
        bff.p(aqvVar, "<this>");
        return bfc.e(new gkn(aqvVar, "setForegroundAsync", nzVar, 2));
    }

    public dcy setProgressAsync(final dwa dwaVar) {
        final cxy cxyVar = this.i.i;
        getApplicationContext();
        final UUID id = getId();
        aqv aqvVar = (aqv) cxyVar.f13727c.f18325e;
        cvw cvwVar = new cvw() { // from class: g.bi
            @Override // g.cvw
            public final Object invoke() {
                cxy cxyVar2 = cxy.this;
                cxyVar2.getClass();
                UUID uuid = id;
                String uuid2 = uuid.toString();
                cyl f2 = cyl.f();
                uuid.toString();
                dwa dwaVar2 = dwaVar;
                Objects.toString(dwaVar2);
                f2.getClass();
                WorkDatabase workDatabase = cxyVar2.f13726b;
                workDatabase.an();
                try {
                    fkj p = workDatabase.a().p(uuid2);
                    if (p == null) {
                        throw new IllegalStateException("Calls to setProgressAsync() must complete before a ListenableWorker signals completion of work by returning an instance of Result.");
                    }
                    if (p.q == gys.RUNNING) {
                        bkd bkdVar = new bkd(uuid2, dwaVar2);
                        gkr f3 = workDatabase.f();
                        WorkDatabase_Impl workDatabase_Impl = (WorkDatabase_Impl) f3.f18325e;
                        workDatabase_Impl.al();
                        workDatabase_Impl.an();
                        try {
                            ((sw) f3.f18321a).c(bkdVar);
                            workDatabase_Impl.ah();
                            workDatabase_Impl.am();
                        } catch (Throwable th) {
                            workDatabase_Impl.am();
                            throw th;
                        }
                    } else {
                        cyl.f().getClass();
                    }
                    workDatabase.ah();
                    workDatabase.am();
                    return null;
                } finally {
                }
            }
        };
        bff.p(aqvVar, "<this>");
        return bfc.e(new gkn(aqvVar, "updateProgress", cvwVar, 2));
    }

    public final void setUsed() {
        this.f12807g = true;
    }

    public abstract dcy startWork();

    public final void stop(int i) {
        if (this.j.compareAndSet(-256, i)) {
            onStopped();
        }
    }
}
