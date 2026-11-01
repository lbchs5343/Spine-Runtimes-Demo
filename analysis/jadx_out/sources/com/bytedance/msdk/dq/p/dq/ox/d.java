package com.bytedance.msdk.dq.p.dq.ox;

import android.content.Context;
import java.util.Map;

/* loaded from: classes.dex */
public class d extends com.bytedance.msdk.api.p.dq.d.p.d {
    private com.bytedance.msdk.dq.p.dq.dq ia;

    public d(String str) {
        this.ia = new ox(str, this);
    }

    @Override // com.bytedance.msdk.api.p.dq.d.p.d
    public void dq(Context context, com.bytedance.msdk.api.dq.d dVar, com.bytedance.msdk.api.p.dq.d.ox.ox oxVar) {
        this.ia.dq(context, dVar, oxVar);
    }

    @Override // com.bytedance.msdk.api.p.dq.d.d.d
    public void dq(boolean z, double d2, int i, Map<String, Object> map) {
        super.dq(z, d2, i, map);
        com.bytedance.msdk.dq.p.dq.dq dqVar = this.ia;
        if (dqVar != null) {
            dqVar.dq(z, d2, i, map);
        }
    }
}
