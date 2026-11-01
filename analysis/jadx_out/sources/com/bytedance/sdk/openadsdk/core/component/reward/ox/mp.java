package com.bytedance.sdk.openadsdk.core.component.reward.ox;

import android.app.Activity;
import com.bytedance.sdk.openadsdk.core.component.reward.ox.d;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.uh;
import com.bytedance.sdk.openadsdk.core.r.xi;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class mp extends dq {
    dq fw;

    public mp(Activity activity, j jVar) {
        super(activity, jVar);
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.ox.dq, com.bytedance.sdk.openadsdk.core.component.reward.ox.d
    public d.dq d(o oVar) {
        ArrayList<xi> r = uh.r(this.mn);
        if (r == null) {
            return new d.dq(false, 0, "");
        }
        Iterator<xi> it = r.iterator();
        while (it.hasNext()) {
            xi next = it.next();
            switch (next.ox()) {
                case 1:
                    this.fw = new ig(this.ia, this.mn, next);
                    break;
                case 2:
                    this.fw = new no(this.ia, this.mn, next);
                    break;
                case 3:
                    this.fw = new iw(this.ia, this.mn, next);
                    break;
                case 4:
                    this.fw = new mn(this.ia, this.mn, next);
                    break;
                case 5:
                    this.fw = new kk(this.ia, this.mn, next);
                    break;
                case 6:
                    this.fw = new p(this.ia, this.mn, next);
                    break;
            }
            dq dqVar = this.fw;
            if (dqVar != null) {
                dqVar.dq(this.ox);
                this.fw.dq(this.dq);
                this.fw.d(this.f2630d);
                this.fw.d(this.p);
                this.fw.ox(this.ig);
                this.fw.p(this.no);
                this.fw.ox(this.iw);
                this.fw.p(this.s);
                this.fw.dq(this.f2625f);
                this.fw.d(kk());
                d.dq d2 = this.fw.d(oVar);
                if (d2.ox()) {
                    return d2;
                }
            }
        }
        return new d.dq(false, 0, "");
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.ox.d
    public void d(String str) {
        super.d(str);
        dq dqVar = this.fw;
        if (dqVar == null) {
            return;
        }
        dqVar.d(str);
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.ox.d
    public String dq() {
        dq dqVar = this.fw;
        if (dqVar == null) {
            return null;
        }
        String dq = dqVar.dq();
        try {
            JSONObject jSONObject = new JSONObject(dq);
            jSONObject.put("is_need_click", this.s);
            return jSONObject.toString();
        } catch (JSONException unused) {
            return dq;
        }
    }
}
