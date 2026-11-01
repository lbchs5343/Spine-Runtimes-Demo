package com.bytedance.msdk.api.p.dq.d.ia;

import android.content.Context;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public abstract class ox extends com.bytedance.msdk.api.p.dq.d.d.d {
    private com.bytedance.msdk.api.p.dq.d.ox.ox ia;

    @Override // com.bytedance.msdk.api.p.dq.d.d.d
    public final void d() {
    }

    @Override // com.bytedance.msdk.api.p.dq.d.d.d
    public final void d(Context context, com.bytedance.msdk.api.dq.d dVar, com.bytedance.msdk.api.p.dq.d.ox.ox oxVar) {
        this.ia = oxVar;
        dq(context, dVar, oxVar);
    }

    public abstract void dq(Context context, com.bytedance.msdk.api.dq.d dVar, com.bytedance.msdk.api.p.dq.d.ox.ox oxVar);

    public final void dq(com.bytedance.msdk.api.p.dq.d.dq dqVar) {
        if (ig()) {
            com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", "自定义Adapter 加载成功或者失败回调只能调用一次");
            return;
        }
        com.bytedance.msdk.dq.dq dqVar2 = this.ox;
        if (dqVar2 != null) {
            dqVar2.dq(new com.bytedance.msdk.api.dq(49010, com.bytedance.msdk.api.dq.dq(49010), dqVar == null ? -1 : dqVar.dq(), dqVar == null ? "" : dqVar.d()));
        }
    }

    public final void dq(List<? extends d> list) {
        if (list != null) {
            if (no()) {
                com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", "自定义Adapter 加载成功或者失败回调只能调用一次");
                return;
            }
            com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", "自定义Adapter callLoadSuccess");
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < list.size(); i++) {
                d dVar = list.get(i);
                dVar.dq(this);
                dVar.dq(this.f764d.mp());
                dVar.dq(this.f764d.o() != 2);
                arrayList.add(dVar);
            }
            com.bytedance.msdk.dq.dq dqVar = this.ox;
            if (dqVar != null) {
                dqVar.dq(arrayList);
            }
        }
    }

    public final boolean iw() {
        com.bytedance.msdk.api.p.dq.d.ox.ox oxVar = this.ia;
        return oxVar != null && oxVar.d() == 1;
    }

    @Override // com.bytedance.msdk.api.p.dq.d.d.d
    public final void ox() {
    }

    @Override // com.bytedance.msdk.api.p.dq.d.d.d
    public final void p() {
    }

    public final boolean s() {
        com.bytedance.msdk.api.p.dq.d.ox.ox oxVar = this.ia;
        return oxVar != null && oxVar.d() == 2;
    }
}
