package com.bytedance.sdk.openadsdk.core.gh;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import com.bytedance.sdk.openadsdk.core.kk;
import com.bytedance.sdk.openadsdk.core.wp;

/* loaded from: classes3.dex */
public class iw implements com.bytedance.sdk.component.ia.dq.iw {
    public static final iw dq = new iw();

    /* renamed from: d, reason: collision with root package name */
    private volatile SQLiteDatabase f2910d;

    @Override // com.bytedance.sdk.component.ia.dq.iw
    public String d() {
        return "adevent";
    }

    @Override // com.bytedance.sdk.component.ia.dq.iw
    public SQLiteDatabase dq(Context context) {
        if (this.f2910d == null) {
            synchronized (iw.class) {
                try {
                    if (this.f2910d == null) {
                        kk.ox dq2 = com.bytedance.sdk.openadsdk.core.ia.dq(wp.getContext()).dq();
                        dq2.dq();
                        this.f2910d = dq2.d();
                    }
                } finally {
                }
            }
        }
        return this.f2910d;
    }

    @Override // com.bytedance.sdk.component.ia.dq.iw
    public String dq() {
        return "loghighpriority";
    }

    @Override // com.bytedance.sdk.component.ia.dq.iw
    public String iw() {
        return null;
    }

    @Override // com.bytedance.sdk.component.ia.dq.iw
    public String ox() {
        return null;
    }

    @Override // com.bytedance.sdk.component.ia.dq.iw
    public String p() {
        return "logstats";
    }

    @Override // com.bytedance.sdk.component.ia.dq.iw
    public String s() {
        return "logstatsbatch";
    }
}
