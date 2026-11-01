package com.bytedance.sdk.openadsdk.core.le;

import android.os.SystemClock;
import com.bytedance.sdk.component.d.dq.f;
import com.bytedance.sdk.component.d.dq.fw;
import com.bytedance.sdk.component.d.dq.kk;
import com.bytedance.sdk.component.d.dq.q;
import java.io.IOException;

/* loaded from: classes3.dex */
public class dq {

    /* renamed from: d, reason: collision with root package name */
    private static volatile String f3147d = "0";
    private static volatile long dq;

    /* renamed from: com.bytedance.sdk.openadsdk.core.le.dq$dq, reason: collision with other inner class name */
    public static class C0170dq implements kk {
        @Override // com.bytedance.sdk.component.d.dq.kk
        public f dq(kk.dq dqVar) throws IOException {
            fw iw;
            long elapsedRealtime = SystemClock.elapsedRealtime();
            q dq = dqVar.dq();
            f dq2 = dqVar.dq(dq);
            if (!"GET".equalsIgnoreCase(dq.ox()) || (iw = dq2.iw()) == null) {
                return dq2;
            }
            long dq3 = iw.dq();
            long elapsedRealtime2 = SystemClock.elapsedRealtime() - elapsedRealtime;
            if (elapsedRealtime2 > 0 && dq3 > 10240) {
                String unused = dq.f3147d = String.format("%.2f", Double.valueOf(((dq3 / 1024.0d) / elapsedRealtime2) * 1000.0d));
                long unused2 = dq.dq = System.currentTimeMillis();
                String unused3 = dq.f3147d;
            }
            return dq2;
        }
    }

    public static String dq() {
        return System.currentTimeMillis() - dq < 7200000 ? f3147d : "0";
    }
}
