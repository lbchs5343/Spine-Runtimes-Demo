package com.bytedance.sdk.component.iw.dq;

import com.bytedance.sdk.component.o.p.p;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class ox {
    private static final TimeUnit dq = TimeUnit.SECONDS;

    public static ExecutorService dq() {
        p pVar = new p(1, 2, 30L, dq, new LinkedBlockingQueue(), new dq("default"));
        pVar.allowCoreThreadTimeOut(true);
        return pVar;
    }
}
