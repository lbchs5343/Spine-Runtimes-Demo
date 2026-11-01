package com.bytedance.sdk.component.iw.p;

/* loaded from: classes.dex */
public class p extends dq {
    @Override // com.bytedance.sdk.component.iw.p.kk
    public String dq() {
        return "cache_policy";
    }

    @Override // com.bytedance.sdk.component.iw.p.kk
    public void dq(com.bytedance.sdk.component.iw.ox.ox oxVar) {
        com.bytedance.sdk.component.iw.d i = oxVar.i();
        if (i != null) {
            if (i.ox()) {
                oxVar.dq(new o());
                return;
            } else if (i.p()) {
                oxVar.dq(new iw());
                return;
            }
        }
        oxVar.dq(new no());
    }
}
