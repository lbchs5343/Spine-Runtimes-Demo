package com.bytedance.sdk.openadsdk.core.component.reward.dq;

import android.annotation.SuppressLint;
import android.content.Context;
import com.bytedance.sdk.openadsdk.core.wp;

/* loaded from: classes3.dex */
public class dq extends d {

    /* renamed from: d, reason: collision with root package name */
    @SuppressLint({"StaticFieldLeak"})
    private static volatile dq f2580d;

    private dq(Context context) {
        super(context);
    }

    public static dq dq() {
        if (f2580d == null) {
            synchronized (dq.class) {
                try {
                    if (f2580d == null) {
                        f2580d = new dq(wp.getContext());
                    }
                } finally {
                }
            }
        }
        return f2580d;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.dq.d
    public boolean d() {
        return false;
    }
}
