package com.bytedance.msdk.core.admanager;

import android.content.Context;
import com.bytedance.msdk.core.kk.mp;

/* loaded from: classes.dex */
public abstract class p extends com.bytedance.msdk.core.mn.dq.dq {
    public p(Context context, String str, int i) {
        super(context, str, i);
    }

    public static int d(String str) {
        if (!mp.dq().ia(str)) {
            com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", "--==--: 命中展示频次");
            return 840041;
        }
        if (mp.dq().ox(str)) {
            return 0;
        }
        com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", "--==--: 命中展示间隔");
        return 840042;
    }

    private com.bytedance.msdk.api.dq mp() {
        com.bytedance.msdk.api.dq.d dVar;
        if (!this.by || (dVar = this.no) == null) {
            return null;
        }
        dVar.dq(com.bytedance.msdk.core.mn.mn.ox());
        com.bytedance.msdk.api.d.dq dqVar = new com.bytedance.msdk.api.d.dq(40047, com.bytedance.msdk.api.dq.dq(40047));
        com.bytedance.msdk.api.dq.d dVar2 = this.no;
        com.bytedance.msdk.core.no.d dVar3 = this.mn;
        com.bytedance.msdk.s.iw.dq(dVar2, dVar3 != null ? dVar3.gx() : null, true, wn(), 40047, this.ir);
        com.bytedance.msdk.api.dq.d dVar4 = this.no;
        com.bytedance.msdk.core.no.d dVar5 = this.mn;
        com.bytedance.msdk.s.iw.dq(dVar4, dqVar, dVar5 != null ? dVar5.gx() : null, wn());
        return dqVar;
    }

    private com.bytedance.msdk.api.dq no() {
        com.bytedance.msdk.api.dq.d dVar;
        if (!this.uh || (dVar = this.no) == null) {
            return null;
        }
        dVar.dq(com.bytedance.msdk.core.mn.mn.ox());
        com.bytedance.msdk.api.d.dq dqVar = new com.bytedance.msdk.api.d.dq(40048, com.bytedance.msdk.api.dq.dq(40048));
        com.bytedance.msdk.api.dq.d dVar2 = this.no;
        com.bytedance.msdk.core.no.d dVar3 = this.mn;
        com.bytedance.msdk.s.iw.dq(dVar2, dVar3 != null ? dVar3.gx() : null, true, wn(), 40048, this.ir);
        com.bytedance.msdk.api.dq.d dVar4 = this.no;
        com.bytedance.msdk.core.no.d dVar5 = this.mn;
        com.bytedance.msdk.s.iw.dq(dVar4, dqVar, dVar5 != null ? dVar5.gx() : null, wn());
        return dqVar;
    }

    public boolean ig() {
        if (this.no == null) {
            return true;
        }
        final com.bytedance.msdk.api.dq no = no();
        if (no == null && (no = mp()) == null) {
            return true;
        }
        com.bytedance.msdk.dq.s.iw.ox(new Runnable() { // from class: com.bytedance.msdk.core.admanager.p.1
            @Override // java.lang.Runnable
            public void run() {
                p.this.dq(no);
            }
        });
        return false;
    }
}
