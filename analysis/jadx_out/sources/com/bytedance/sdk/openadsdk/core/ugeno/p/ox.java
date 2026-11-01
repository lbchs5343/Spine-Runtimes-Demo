package com.bytedance.sdk.openadsdk.core.ugeno.p;

import android.app.Activity;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import com.bytedance.sdk.openadsdk.core.ig.s;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.ir.i;
import com.bytedance.sdk.openadsdk.core.no;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.kk;
import com.bytedance.sdk.openadsdk.core.wp;
import g.ahr;
import g.dlv;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class ox extends dq implements ahr {
    private float ia;
    private dlv ig;
    private boolean iw;
    private float kk;
    private float mn;
    private long no;
    private float o;

    public ox(Activity activity, ViewGroup viewGroup, s sVar, j jVar, String str, int i, com.bytedance.sdk.openadsdk.core.multipro.d.dq dqVar) {
        super(activity, viewGroup, sVar, jVar, str, i, dqVar);
    }

    private void dq(MotionEvent motionEvent) {
        if (!this.iw) {
            int ia = ce.ia(wp.getContext());
            com.bytedance.sdk.openadsdk.core.ig.ox.dq("click", this.dq, new kk.dq().iw(this.mn).s(this.ia).p(this.kk).ox(this.o).d(this.no).dq(motionEvent.getEventTime()).ox(motionEvent.getToolType(0)).p(motionEvent.getDeviceId()).s(this.s).d(no.ia().ox() ? 1 : 2).dq(ia).dq(ce.iw(wp.getContext())).d(ce.mn(wp.getContext())).dq(), this.p, true, null, -1, false);
        }
        this.iw = true;
    }

    private void iw() {
        Animation animation;
        dlv dlvVar = this.ig;
        if (dlvVar != null) {
            dlvVar.d(8);
            View kk = this.ig.kk();
            if (kk == null || (animation = kk.getAnimation()) == null) {
                return;
            }
            animation.cancel();
        }
    }

    private int s() {
        return (int) ((this.dq.ie() * i.mn(this.dq)) / 100.0d);
    }

    @Override // com.bytedance.sdk.openadsdk.core.ugeno.p.dq
    public void dq(dlv dlvVar) {
        this.ig = dlvVar.ox("fl_count_down");
    }

    @Override // g.ahr
    public void dq(dlv dlvVar, MotionEvent motionEvent) {
        if (motionEvent == null || this.iw) {
            return;
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            this.no = motionEvent.getDownTime();
            this.mn = motionEvent.getRawX();
            this.ia = motionEvent.getRawY();
            iw();
            return;
        }
        if (action != 1) {
            return;
        }
        this.kk = motionEvent.getRawX();
        this.o = motionEvent.getRawY();
        dq(motionEvent);
    }

    @Override // com.bytedance.sdk.openadsdk.core.ugeno.p.dq
    public void dq(JSONObject jSONObject) {
        this.f3630d.dq((ahr) this);
        try {
            jSONObject.put("isPlayable", "true");
            jSONObject.put("remainTime", s());
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.ugeno.p.dq
    public void p() {
        super.p();
        iw();
    }
}
