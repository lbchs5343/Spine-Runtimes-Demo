package com.bytedance.sdk.component.iw.p;

import java.util.Collection;
import java.util.Iterator;

/* loaded from: classes.dex */
public class iw extends dq {
    private byte[] d(com.bytedance.sdk.component.iw.ox.ox oxVar, String str) {
        com.bytedance.sdk.component.iw.ox ox = oxVar.r().ox(oxVar.i());
        if (ox == null) {
            return null;
        }
        return ox.dq((com.bytedance.sdk.component.iw.ox) str);
    }

    private byte[] dq(com.bytedance.sdk.component.iw.ox.ox oxVar, String str) {
        oxVar.r().ox(oxVar.i());
        Collection<com.bytedance.sdk.component.iw.ox> ox = oxVar.r().ox();
        if (ox == null) {
            return null;
        }
        Iterator<com.bytedance.sdk.component.iw.ox> it = ox.iterator();
        while (it.hasNext()) {
            byte[] dq = it.next().dq((com.bytedance.sdk.component.iw.ox) str);
            if (dq != null) {
                return dq;
            }
        }
        return null;
    }

    @Override // com.bytedance.sdk.component.iw.p.kk
    public String dq() {
        return "disk_cache";
    }

    @Override // com.bytedance.sdk.component.iw.p.kk
    public void dq(com.bytedance.sdk.component.iw.ox.ox oxVar) {
        String iw = oxVar.iw();
        byte[] dq = (oxVar.le() || oxVar.i().iw()) ? dq(oxVar, iw) : d(oxVar, iw);
        if (dq == null) {
            oxVar.dq(new no());
        } else {
            oxVar.dq(new d(dq, null));
            oxVar.r().d(oxVar.i()).dq(iw, dq);
        }
    }
}
