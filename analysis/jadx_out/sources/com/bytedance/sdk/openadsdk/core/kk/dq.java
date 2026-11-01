package com.bytedance.sdk.openadsdk.core.kk;

import com.bytedance.sdk.component.o.ia;
import com.bytedance.sdk.component.o.kk;
import com.bytedance.sdk.component.o.mn;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.component.utils.iw;
import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;

/* loaded from: classes3.dex */
public abstract class dq {

    /* renamed from: com.bytedance.sdk.openadsdk.core.kk.dq$dq, reason: collision with other inner class name */
    public class CallableC0167dq implements Callable<Void> {

        /* renamed from: d, reason: collision with root package name */
        private final File f3138d;

        private CallableC0167dq(File file) {
            this.f3138d = file;
        }

        @Override // java.util.concurrent.Callable
        public Void call() throws Exception {
            dq.this.d(this.f3138d);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(File file) throws IOException {
        try {
            iw.d(file);
        } catch (Throwable unused) {
        }
        List<File> dq = iw.dq(file.getParentFile());
        ig.p("splashLoadAd", "LruDiskFile touchInBackground files.size() " + dq.size());
        dq(dq);
    }

    public long d(List<File> list) {
        Iterator<File> it = list.iterator();
        long j = 0;
        while (it.hasNext()) {
            j += it.next().length();
        }
        return j;
    }

    public void dq(File file) throws IOException {
        final ia iaVar = new ia(new CallableC0167dq(file), 1, 2);
        mn.d(new kk("touch", iaVar.dq()) { // from class: com.bytedance.sdk.openadsdk.core.kk.dq.1
            @Override // java.lang.Runnable
            public void run() {
                iaVar.run();
            }
        });
    }

    public abstract void dq(List<File> list);

    public abstract boolean dq(long j, int i);

    public abstract boolean dq(File file, long j, int i);
}
