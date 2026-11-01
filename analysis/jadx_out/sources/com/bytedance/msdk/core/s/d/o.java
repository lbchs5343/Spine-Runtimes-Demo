package com.bytedance.msdk.core.s.d;

import android.content.Context;
import android.text.TextUtils;
import com.bytedance.msdk.ia.n;
import java.util.HashSet;
import java.util.List;

/* loaded from: classes.dex */
public class o extends ia {

    /* renamed from: d, reason: collision with root package name */
    private final HashSet<String> f1018d;

    public o(Context context, String str, int i) {
        super(context, str, i);
        this.f1018d = new HashSet<>();
    }

    private com.bytedance.msdk.core.no.no no() {
        for (com.bytedance.msdk.core.no.no noVar : ((ia) this).dq) {
            if (noVar != null) {
                if (!this.f1018d.contains(noVar.cd())) {
                    return noVar;
                }
            }
        }
        return null;
    }

    @Override // com.bytedance.msdk.core.mn.s
    public void dq(com.bytedance.msdk.api.dq dqVar) {
    }

    @Override // com.bytedance.msdk.core.mn.iw, com.bytedance.msdk.core.mn.s, com.bytedance.msdk.dq.dq.InterfaceC0063dq
    public void dq(com.bytedance.msdk.api.dq dqVar, com.bytedance.msdk.core.no.ox oxVar) {
        com.bytedance.msdk.core.no.no no;
        super.dq(dqVar, oxVar);
        if (oxVar != null && !TextUtils.isEmpty(oxVar.mp())) {
            this.f1018d.add(oxVar.mp());
        }
        List<com.bytedance.msdk.d.s> list = this.cd;
        com.bytedance.msdk.d.s sVar = (list == null || list.size() <= 0) ? null : this.cd.get(0);
        if (sVar == null || (no = no()) == null || !TextUtils.equals(no.cd(), sVar.b())) {
            return;
        }
        n_();
    }

    @Override // com.bytedance.msdk.core.mn.iw, com.bytedance.msdk.core.mn.s, com.bytedance.msdk.dq.dq.InterfaceC0063dq
    public void dq(List<com.bytedance.msdk.d.s> list, com.bytedance.msdk.core.no.ox oxVar) {
        super.dq(list, oxVar);
        com.bytedance.msdk.core.no.no no = no();
        if (no == null || n.d(list) || !TextUtils.equals(no.cd(), list.get(0).b())) {
            return;
        }
        n_();
    }

    @Override // com.bytedance.msdk.core.mn.s
    public void ox() {
    }

    @Override // com.bytedance.msdk.core.mn.s
    public void p() {
    }
}
