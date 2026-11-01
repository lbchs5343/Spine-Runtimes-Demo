package com.bytedance.sdk.openadsdk.core.ugeno.component.d;

import android.content.Context;
import android.text.TextUtils;
import g.efb;
import g.fmg;

/* loaded from: classes3.dex */
public class dq extends efb {
    public dq(Context context) {
        super(context);
    }

    @Override // g.efb, g.dlv
    public void p() {
        super.p();
        if (TextUtils.isEmpty(((efb) this).dq)) {
            ((fmg) this.ia).setText("跳过");
        }
    }

    public void p(boolean z) {
        if (z) {
            d(0);
            kx();
        } else {
            p(0);
            s(0);
        }
    }
}
