package com.bytedance.sdk.component.ia.d.dq;

import java.util.List;

/* loaded from: classes.dex */
public abstract class dq {
    public abstract List<com.bytedance.sdk.component.ia.dq.d> d(int i, com.bytedance.sdk.component.ia.dq.d dVar, List<String> list, String str);

    public abstract boolean d(int i, String str, com.bytedance.sdk.component.ia.dq.d dVar);

    public List<com.bytedance.sdk.component.ia.dq.d> dq(int i, com.bytedance.sdk.component.ia.dq.d dVar, List<String> list, String str) {
        if (com.bytedance.sdk.component.ia.d.ox.dq.dq(i) || dq(dVar)) {
            return d(i, dVar, list, str);
        }
        return null;
    }

    public boolean dq(int i, String str, com.bytedance.sdk.component.ia.dq.d dVar) {
        if (com.bytedance.sdk.component.ia.d.ox.dq.dq(i)) {
            return dq(str);
        }
        if (dq(dVar)) {
            return d(i, str, dVar);
        }
        return false;
    }

    public abstract boolean dq(com.bytedance.sdk.component.ia.dq.d dVar);

    public abstract boolean dq(String str);
}
