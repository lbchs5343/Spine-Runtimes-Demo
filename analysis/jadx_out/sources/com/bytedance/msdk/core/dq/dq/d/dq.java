package com.bytedance.msdk.core.dq.dq.d;

import android.content.Context;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bytedance.msdk.api.dq.d;
import com.bytedance.msdk.core.no.no;
import com.bytedance.msdk.d.s;
import java.util.List;

/* loaded from: classes.dex */
public abstract class dq implements com.bytedance.msdk.core.dq.dq.dq.dq {

    /* renamed from: d, reason: collision with root package name */
    public no f854d;
    public d dq;
    public Bridge ox;
    private com.bytedance.msdk.core.dq.dq.dq.d p;

    public String d() {
        no noVar = this.f854d;
        return (noVar == null || !noVar.n() || this.f854d.ji() == null) ? "" : this.f854d.ji().o();
    }

    public final void dq(int i, String str) {
        com.bytedance.msdk.core.dq.dq.dq.d dVar = this.p;
        if (dVar != null) {
            dVar.dq(i, str);
        }
    }

    public abstract void dq(Context context);

    @Override // com.bytedance.msdk.core.dq.dq.dq.dq
    public final void dq(Context context, Bridge bridge, d dVar, no noVar, com.bytedance.msdk.core.dq.dq.dq.d dVar2) {
        if (bridge == null || dVar == null || noVar == null || dVar2 == null) {
            return;
        }
        this.p = dVar2;
        this.f854d = noVar;
        this.dq = dVar;
        this.ox = bridge;
        dq(context);
    }

    public void dq(s sVar, com.bytedance.msdk.api.dq dqVar) {
        com.bytedance.msdk.core.dq.dq.dq.d dVar = this.p;
        if (dVar != null) {
            dVar.dq(sVar, dqVar);
        }
    }

    public void dq(List<s> list) {
        com.bytedance.msdk.core.dq.dq.dq.d dVar = this.p;
        if (dVar != null) {
            dVar.dq(list);
        }
    }

    public boolean dq() {
        no noVar = this.f854d;
        if (noVar == null) {
            return false;
        }
        int o = noVar.o();
        return o == 1 || o == 3;
    }

    public boolean ox() {
        return ((com.bytedance.msdk.mn.dq.dq.jy().iw() == 1) && this.f854d.op()) || ((com.bytedance.msdk.mn.dq.dq.jy().mn() == 1) && (this.f854d.gh() == 0));
    }
}
