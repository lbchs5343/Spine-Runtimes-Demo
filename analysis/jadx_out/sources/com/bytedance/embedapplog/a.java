package com.bytedance.embedapplog;

import android.os.Bundle;
import com.bytedance.embedapplog.hf;

/* loaded from: classes.dex */
public class a extends hf.dq {
    private volatile boolean dq = false;

    public boolean d() {
        return this.dq;
    }

    @Override // com.bytedance.embedapplog.hf
    public void dq(int i, long j, boolean z, float f2, double d2, String str) {
    }

    @Override // com.bytedance.embedapplog.hf
    public void dq(int i, Bundle bundle) {
        if (i != 0 || bundle == null) {
            return;
        }
        this.dq = bundle.getBoolean("oa_id_limit_state");
    }
}
