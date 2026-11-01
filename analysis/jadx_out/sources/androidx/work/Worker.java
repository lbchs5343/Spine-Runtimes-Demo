package androidx.work;

import android.content.Context;
import g.bfc;
import g.bff;
import g.cg;
import g.dcy;
import g.dea;
import g.dje;
import g.dju;
import g.ezk;
import g.ftr;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public abstract class Worker extends cg {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Worker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        bff.p(context, "context");
        bff.p(workerParameters, "workerParams");
    }

    public abstract dea doWork();

    public dju getForegroundInfo() {
        throw new IllegalStateException("Expedited WorkRequests require a Worker to provide an implementation for `getForegroundInfo()`");
    }

    @Override // g.cg
    public dcy getForegroundInfoAsync() {
        Executor backgroundExecutor = getBackgroundExecutor();
        bff.e(backgroundExecutor, "backgroundExecutor");
        return bfc.e(new ftr(backgroundExecutor, new ezk(this)));
    }

    @Override // g.cg
    public final dcy startWork() {
        Executor backgroundExecutor = getBackgroundExecutor();
        bff.e(backgroundExecutor, "backgroundExecutor");
        return bfc.e(new ftr(backgroundExecutor, new dje(this)));
    }
}
