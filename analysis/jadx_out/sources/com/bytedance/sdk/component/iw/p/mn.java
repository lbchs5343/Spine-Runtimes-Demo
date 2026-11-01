package com.bytedance.sdk.component.iw.p;

import java.util.LinkedList;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class mn extends dq {
    @Override // com.bytedance.sdk.component.iw.p.kk
    public String dq() {
        return "check_duplicate";
    }

    @Override // com.bytedance.sdk.component.iw.p.kk
    public void dq(com.bytedance.sdk.component.iw.ox.ox oxVar) {
        List<com.bytedance.sdk.component.iw.ox.ox> list;
        String wp = oxVar.wp();
        Map<String, List<com.bytedance.sdk.component.iw.ox.ox>> mn = oxVar.r().mn();
        synchronized (mn) {
            try {
                list = mn.get(wp);
                if (list == null) {
                    list = new LinkedList<>();
                }
            } finally {
            }
        }
        synchronized (list) {
            try {
                list.add(oxVar);
                mn.put(wp, list);
                if (list.size() <= 1) {
                    oxVar.dq(new p());
                }
            } finally {
            }
        }
    }
}
