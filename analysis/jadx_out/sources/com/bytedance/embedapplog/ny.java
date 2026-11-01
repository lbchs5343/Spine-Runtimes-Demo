package com.bytedance.embedapplog;

import android.os.Bundle;
import com.bytedance.embedapplog.hf;

/* loaded from: classes.dex */
public class ny extends hf.dq {
    private volatile String dq = "";

    public String d() {
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
        this.dq = bundle.getString("oa_id_flag");
    }
}
