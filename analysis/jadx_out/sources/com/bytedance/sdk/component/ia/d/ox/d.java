package com.bytedance.sdk.component.ia.d.ox;

import com.bytedance.sdk.component.ia.dq.p;
import com.bytedance.sdk.component.ia.dq.s;
import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes.dex */
public class d {
    public static void dq(AtomicLong atomicLong, int i, s sVar) {
        p p = sVar.p();
        if (p == null || !p.ox() || atomicLong == null) {
            return;
        }
        atomicLong.getAndAdd(i);
    }
}
