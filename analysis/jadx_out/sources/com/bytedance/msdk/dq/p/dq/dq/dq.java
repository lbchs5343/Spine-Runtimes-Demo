package com.bytedance.msdk.dq.p.dq.dq;

import android.app.Activity;
import android.content.Context;
import com.bytedance.msdk.api.p.dq.d.ox.ox;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.Map;

/* loaded from: classes.dex */
public class dq extends com.bytedance.msdk.api.p.dq.d.mn.d {
    private d ia;

    public dq(String str) {
        this.ia = new d(str, this);
    }

    @Override // com.bytedance.msdk.api.p.dq.d.d.d
    public void d() {
        super.d();
        d dVar = this.ia;
        if (dVar != null) {
            dVar.s();
        }
    }

    @Override // com.bytedance.msdk.api.p.dq.d.d.d
    public MediationConstant.AdIsReadyStatus dq() {
        d dVar = this.ia;
        return dVar != null ? dVar.p() : super.dq();
    }

    @Override // com.bytedance.msdk.api.p.dq.d.d.ox
    public void dq(Activity activity) {
        d dVar = this.ia;
        if (dVar != null) {
            dVar.dq(activity);
        }
    }

    @Override // com.bytedance.msdk.api.p.dq.d.mn.d
    public void dq(Context context, com.bytedance.msdk.api.dq.d dVar, ox oxVar) {
        d dVar2 = this.ia;
        if (dVar2 != null) {
            dVar2.dq(context, dVar, oxVar);
        }
    }

    @Override // com.bytedance.msdk.api.p.dq.d.d.d
    public void dq(boolean z, double d2, int i, Map<String, Object> map) {
        super.dq(z, d2, i, map);
        d dVar = this.ia;
        if (dVar != null) {
            dVar.dq(z, d2, i, map);
        }
    }

    @Override // com.bytedance.msdk.api.p.dq.d.d.d
    public void ox() {
        super.ox();
        d dVar = this.ia;
        if (dVar != null) {
            dVar.iw();
        }
    }

    @Override // com.bytedance.msdk.api.p.dq.d.d.d
    public void p() {
        super.p();
        d dVar = this.ia;
        if (dVar != null) {
            dVar.mn();
        }
    }
}
