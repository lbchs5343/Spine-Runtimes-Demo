package com.bytedance.msdk.ox.dq.dq;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bytedance.msdk.api.p.dq.mn.no;
import java.util.List;

/* loaded from: classes.dex */
public abstract class ia extends ox {
    private int ox;
    private int p;
    private boolean s;

    public ia(com.bytedance.msdk.ox.ox.d.dq.dq.d dVar, Bridge bridge) {
        super(dVar, bridge);
        this.ox = 0;
        this.p = 0;
        this.s = false;
    }

    public final void d(dq dqVar) {
        if (!this.s) {
            com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", "自定义Adapter show方法回调必须由GroMore触发show时才会生效");
            return;
        }
        int i = this.ox;
        if (i >= 2) {
            com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", "自定义Adapter show方法回调次数需要小于2次");
            return;
        }
        this.ox = i + 1;
        if (dqVar != null) {
            dqVar.dq();
        }
    }

    public abstract void dq(Activity activity, ViewGroup viewGroup, List<View> list, List<View> list2, List<View> list3, no noVar);

    @Override // com.bytedance.msdk.d.s
    public void dq(Activity activity, ViewGroup viewGroup, List<View> list, List<View> list2, List<View> list3, no noVar, List<View> list4) {
        super.dq(activity, viewGroup, list, list2, list3, noVar, list4);
        try {
            this.s = true;
            dq(activity, viewGroup, list, list2, list3, noVar);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final void dq(dq dqVar) {
        int i = this.p;
        if (i >= 60) {
            com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", "自定义Adapter click方法回调次数需要小于60次");
            return;
        }
        this.p = i + 1;
        if (dqVar != null) {
            dqVar.dq();
        }
    }

    @Override // com.bytedance.msdk.d.s
    public void no() {
        try {
            this.s = true;
            Bridge bridge = ((ox) this).f1125d;
            if (bridge != null) {
                bridge.call(6083, null, Void.class);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
