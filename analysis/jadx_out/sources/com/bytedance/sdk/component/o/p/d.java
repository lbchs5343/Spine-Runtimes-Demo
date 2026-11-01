package com.bytedance.sdk.component.o.p;

import android.os.AsyncTask;
import com.bytedance.sdk.component.o.o;
import java.util.concurrent.Executor;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public abstract class d<Params, Progress, Result> extends AsyncTask<Params, Progress, Result> {
    public static Executor dq = new p(0, 20, 3, TimeUnit.MILLISECONDS, new SynchronousQueue(), new o("PAsyncTask"));

    public AsyncTask<Params, Progress, Result> dq(Params... paramsArr) {
        return executeOnExecutor(dq, paramsArr);
    }
}
