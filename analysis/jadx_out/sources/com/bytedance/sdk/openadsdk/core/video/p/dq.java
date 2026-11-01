package com.bytedance.sdk.openadsdk.core.video.p;

import com.bytedance.sdk.openadsdk.f.d.d.jy;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes3.dex */
public final class dq {
    static final Map<Integer, WeakReference<jy>> dq = new HashMap();

    public static jy dq(Integer num) {
        WeakReference<jy> weakReference = dq.get(num);
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    public static void dq(Integer num, jy jyVar) {
        dq.put(num, new WeakReference<>(jyVar));
    }
}
