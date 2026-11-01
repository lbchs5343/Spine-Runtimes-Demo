package com.bytedance.sdk.openadsdk.tools;

import com.bytedance.component.sdk.annotation.Keep;
import com.bytedance.sdk.openadsdk.api.TTILog;
import com.bytedance.sdk.openadsdk.core.op;

@Keep
/* loaded from: classes3.dex */
public class LogAdapter implements com.bytedance.sdk.component.dq {
    public static LogAdapter dq;

    /* renamed from: d, reason: collision with root package name */
    private TTILog f3873d;

    private LogAdapter() {
    }

    public static void dq(TTILog tTILog, boolean z) {
        LogAdapter logAdapter = new LogAdapter();
        dq = logAdapter;
        if (z) {
            logAdapter.f3873d = new dq(tTILog);
        } else {
            logAdapter.f3873d = tTILog;
        }
    }

    @Keep
    public static void zzz(TTILog tTILog) {
        if (op.f3334d > 5300 && dq == null) {
            dq(tTILog, false);
        }
    }

    @Override // com.bytedance.sdk.component.dq
    public void d(String str, String str2) {
        TTILog tTILog = this.f3873d;
        if (tTILog != null) {
            tTILog.w(str, str2);
        }
    }

    @Override // com.bytedance.sdk.component.dq
    public void d(String str, String str2, Throwable th) {
        TTILog tTILog = this.f3873d;
        if (tTILog != null) {
            tTILog.e(str, str2, th);
        }
    }

    public TTILog dq() {
        return this.f3873d;
    }

    @Override // com.bytedance.sdk.component.dq
    public void dq(String str, String str2) {
        TTILog tTILog = this.f3873d;
        if (tTILog != null) {
            tTILog.i(str, str2);
        }
    }

    @Override // com.bytedance.sdk.component.dq
    public void dq(String str, String str2, Throwable th) {
        TTILog tTILog = this.f3873d;
        if (tTILog != null) {
            tTILog.w(str, str2, th);
        }
    }

    @Override // com.bytedance.sdk.component.dq
    public void dq(String str, Throwable th) {
        TTILog tTILog = this.f3873d;
        if (tTILog != null) {
            tTILog.e(str, th);
        }
    }

    @Override // com.bytedance.sdk.component.dq
    public void ox(String str, String str2) {
        TTILog tTILog = this.f3873d;
        if (tTILog != null) {
            tTILog.e(str, str2);
        }
    }

    public void p(String str, String str2) {
        TTILog tTILog = this.f3873d;
        if (tTILog != null) {
            tTILog.d(str, str2);
        }
    }
}
