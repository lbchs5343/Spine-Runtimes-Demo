package com.bytedance.sdk.gromore.dq.dq.p;

import android.text.TextUtils;

/* loaded from: classes.dex */
public class dq implements com.bytedance.sdk.gromore.dq.dq.p {
    private com.bytedance.msdk.api.d dq;

    public dq(com.bytedance.msdk.api.d dVar) {
        this.dq = dVar;
    }

    @Override // com.bytedance.sdk.gromore.dq.dq.p
    public String d() {
        com.bytedance.msdk.api.d dVar = this.dq;
        if (dVar != null) {
            return TextUtils.isEmpty(dVar.ox()) ? this.dq.p() : this.dq.ox();
        }
        return null;
    }

    @Override // com.bytedance.sdk.gromore.dq.dq.p
    public String dq() {
        com.bytedance.msdk.api.d dVar = this.dq;
        if (dVar != null) {
            return dVar.d();
        }
        return null;
    }

    @Override // com.bytedance.sdk.gromore.dq.dq.p
    public String ox() {
        com.bytedance.msdk.api.d dVar = this.dq;
        if (dVar != null) {
            return dVar.dq();
        }
        return null;
    }

    @Override // com.bytedance.sdk.gromore.dq.dq.p
    public int p() {
        com.bytedance.msdk.api.d dVar = this.dq;
        if (dVar != null) {
            return dVar.s();
        }
        return 0;
    }

    @Override // com.bytedance.sdk.gromore.dq.dq.p
    public String s() {
        com.bytedance.msdk.api.d dVar = this.dq;
        if (dVar != null) {
            return dVar.iw();
        }
        return null;
    }
}
