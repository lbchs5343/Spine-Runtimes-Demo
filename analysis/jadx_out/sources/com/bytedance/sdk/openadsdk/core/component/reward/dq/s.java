package com.bytedance.sdk.openadsdk.core.component.reward.dq;

import android.annotation.SuppressLint;
import android.content.Context;
import com.bytedance.sdk.openadsdk.core.wp;

/* loaded from: classes3.dex */
public class s extends d {

    /* renamed from: d, reason: collision with root package name */
    @SuppressLint({"StaticFieldLeak"})
    private static volatile s f2585d;

    private s(Context context) {
        super(context);
    }

    public static s dq() {
        if (f2585d == null) {
            synchronized (s.class) {
                try {
                    if (f2585d == null) {
                        f2585d = new s(wp.getContext());
                    }
                } finally {
                }
            }
        }
        return f2585d;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.dq.d
    public boolean d() {
        return true;
    }

    public void dq(com.bytedance.sdk.openadsdk.f.d.ox.d dVar, String str, int i, ox oxVar) {
        com.bytedance.sdk.openadsdk.core.component.reward.business.d.ox oxVar2 = new com.bytedance.sdk.openadsdk.core.component.reward.business.d.ox();
        oxVar2.dq(str);
        oxVar2.dq(i + 1);
        dq(dVar, oxVar, oxVar2);
    }
}
