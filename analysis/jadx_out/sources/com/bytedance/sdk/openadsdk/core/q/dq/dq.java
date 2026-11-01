package com.bytedance.sdk.openadsdk.core.q.dq;

import com.bytedance.sdk.openadsdk.core.ir.no;
import com.bytedance.sdk.openadsdk.core.wp;
import com.ss.android.download.api.constant.BaseConstants;

/* loaded from: classes3.dex */
public class dq {
    private long dq;

    public dq(long j) {
        if (j > 0) {
            this.dq = j * BaseConstants.MB_VALUE;
        } else {
            this.dq = 104857600L;
        }
    }

    public boolean dq() {
        return no.dq(wp.getContext()) >= this.dq;
    }
}
