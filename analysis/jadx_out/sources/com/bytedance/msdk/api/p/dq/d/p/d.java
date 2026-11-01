package com.bytedance.msdk.api.p.dq.d.p;

import android.content.Context;
import com.bytedance.msdk.api.p.dq.d.ox.ox;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public abstract class d extends com.bytedance.msdk.api.p.dq.d.d.d {
    private ox ia;

    @Override // com.bytedance.msdk.api.p.dq.d.d.d
    public final void d() {
    }

    @Override // com.bytedance.msdk.api.p.dq.d.d.d
    public final void d(Context context, com.bytedance.msdk.api.dq.d dVar, ox oxVar) {
        this.ia = oxVar;
        dq(context, dVar, oxVar);
    }

    public abstract void dq(Context context, com.bytedance.msdk.api.dq.d dVar, ox oxVar);

    public final void dq(com.bytedance.msdk.api.p.dq.d.dq dqVar) {
        if (ig()) {
            com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", "自定义Adapter 加载成功或者失败回调只能调用一次");
            return;
        }
        com.bytedance.msdk.dq.dq dqVar2 = this.ox;
        if (dqVar2 != null) {
            dqVar2.dq(new com.bytedance.msdk.api.dq(49015, com.bytedance.msdk.api.dq.dq(49015), dqVar == null ? -1 : dqVar.dq(), dqVar == null ? "" : dqVar.d()));
        }
    }

    public final void dq(List<? extends dq> list) {
        if (list != null) {
            if (no()) {
                com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", "自定义Adapter 加载成功或者失败回调只能调用一次");
                return;
            }
            com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", "自定义Adapter callLoadSuccess");
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < list.size(); i++) {
                dq dqVar = list.get(i);
                dqVar.dq(this);
                dqVar.dq(this.f764d.mp());
                dqVar.dq(this.f764d.o() != 2);
                arrayList.add(dqVar);
            }
            com.bytedance.msdk.dq.dq dqVar2 = this.ox;
            if (dqVar2 != null) {
                dqVar2.dq(arrayList);
            }
        }
    }

    public final boolean iw() {
        ox oxVar = this.ia;
        return oxVar != null && oxVar.d() == 1;
    }

    @Override // com.bytedance.msdk.api.p.dq.d.d.d
    public final void ox() {
    }

    @Override // com.bytedance.msdk.api.p.dq.d.d.d
    public final void p() {
    }

    public final boolean s() {
        ox oxVar = this.ia;
        return oxVar != null && oxVar.d() == 2;
    }
}
