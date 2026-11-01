package com.bytedance.msdk.api.p.dq.d.d;

import android.app.Activity;

/* loaded from: classes.dex */
public abstract class ox extends d {
    public final void d(Activity activity) {
        try {
            this.dq = true;
            dq(activity);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public abstract void dq(Activity activity);
}
