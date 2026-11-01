package com.bytedance.sdk.component.ox.d.dq.d;

import com.bytedance.sdk.component.ox.d.op;
import java.util.LinkedHashSet;
import java.util.Set;

/* loaded from: classes.dex */
public final class p {
    private final Set<op> dq = new LinkedHashSet();

    public synchronized void d(op opVar) {
        this.dq.remove(opVar);
    }

    public synchronized void dq(op opVar) {
        this.dq.add(opVar);
    }

    public synchronized boolean ox(op opVar) {
        return this.dq.contains(opVar);
    }
}
