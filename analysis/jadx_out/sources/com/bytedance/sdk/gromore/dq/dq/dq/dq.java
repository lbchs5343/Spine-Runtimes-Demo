package com.bytedance.sdk.gromore.dq.dq.dq;

import android.app.Activity;
import android.view.View;
import com.bytedance.msdk.core.admanager.kk;
import com.bytedance.sdk.gromore.dq.dq.p.o;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.TTDislikeDialogAbstract;
import com.bytedance.sdk.openadsdk.f.d.d.ia;
import com.bytedance.sdk.openadsdk.f.d.d.jy;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class dq extends jy {

    /* renamed from: d, reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.gh.dq.d.dq.dq f2308d;
    private kk dq;
    private com.bytedance.sdk.openadsdk.f.d.dq.d iw;
    private com.bytedance.sdk.openadsdk.e.dq.d.dq.ox mn;
    private com.bytedance.sdk.openadsdk.e.dq.d.dq.dq ox;
    private com.bytedance.sdk.openadsdk.e.dq.d.dq.d p;
    private View s = null;

    public dq(kk kkVar) {
        this.dq = kkVar;
        o();
    }

    private void ig() {
        com.bytedance.sdk.openadsdk.e.dq.d.dq.ox oxVar;
        kk kkVar = this.dq;
        if (kkVar == null || (oxVar = this.mn) == null) {
            return;
        }
        kkVar.dq(oxVar);
    }

    private void no() {
        com.bytedance.sdk.openadsdk.f.d.dq.d dVar;
        kk kkVar = this.dq;
        if (kkVar == null || (dVar = this.iw) == null) {
            return;
        }
        kkVar.dq(dVar);
    }

    private void o() {
        kk kkVar = this.dq;
        if (kkVar != null) {
            kkVar.dq(new com.bytedance.msdk.api.p.dq.dq.dq() { // from class: com.bytedance.sdk.gromore.dq.dq.dq.dq.1
                @Override // com.bytedance.msdk.api.p.dq.dq.dq
                public void C_() {
                    if (dq.this.f2308d != null) {
                        dq.this.f2308d.dq(0, "ad closed", true);
                    }
                    if (dq.this.ox != null) {
                        dq.this.ox.dq();
                    }
                }

                @Override // com.bytedance.msdk.api.p.dq.dq.dq
                public void a_(com.bytedance.msdk.api.dq dqVar) {
                }

                @Override // com.bytedance.msdk.api.p.dq.dq.dq
                public void d(View view) {
                    if (dq.this.p != null) {
                        dq.this.p.d(view, 0);
                    }
                    if (dq.this.ox != null) {
                        dq.this.ox.d(view, 0);
                    }
                }

                @Override // com.bytedance.msdk.api.p.dq.dq.dq
                public void dq(View view) {
                    if (dq.this.p != null) {
                        dq.this.p.dq(view, 0);
                    }
                    if (dq.this.ox != null) {
                        dq.this.ox.dq(view, 0);
                    }
                }
            });
        }
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.jy
    public int d() {
        kk kkVar = this.dq;
        if (kkVar != null) {
            return kkVar.iw();
        }
        return 0;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.kk
    public void d(Double d2) {
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.jy
    public View dq() {
        kk kkVar;
        if (this.s == null && (kkVar = this.dq) != null) {
            this.s = kkVar.s();
        }
        no();
        ig();
        return this.s;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.jy
    public ia dq(Activity activity) {
        kk kkVar = this.dq;
        if (kkVar != null) {
            return kkVar.dq(activity);
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.jy
    public void dq(int i) {
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.jy
    public void dq(Activity activity, com.bytedance.sdk.openadsdk.gh.dq.d.dq.dq dqVar) {
        this.f2308d = dqVar;
        kk kkVar = this.dq;
        if (kkVar != null) {
            kkVar.dq(activity, dqVar);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.jy
    public void dq(TTDislikeDialogAbstract tTDislikeDialogAbstract) {
        kk kkVar = this.dq;
        if (kkVar != null) {
            kkVar.dq(tTDislikeDialogAbstract);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.jy
    public void dq(com.bytedance.sdk.openadsdk.e.dq.d.dq.d dVar) {
        this.p = dVar;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.jy
    public void dq(com.bytedance.sdk.openadsdk.e.dq.d.dq.dq dqVar) {
        this.ox = dqVar;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.jy
    public void dq(com.bytedance.sdk.openadsdk.e.dq.d.dq.ox oxVar) {
        this.mn = oxVar;
        ig();
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.jy
    public void dq(com.bytedance.sdk.openadsdk.f.d.dq.d dVar) {
        this.iw = dVar;
        no();
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.kk
    public void dq(com.bytedance.sdk.openadsdk.f.d.dq.dq dqVar) {
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.kk
    public void dq(Double d2) {
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.kk
    public void dq(Double d2, String str, String str2) {
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.jy
    public void dq(String str) {
        kk kkVar = this.dq;
        if (kkVar != null) {
            kkVar.dq(str);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.jy
    public void dq(JSONObject jSONObject) {
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.jy
    public void dq(boolean z) {
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.jy
    public Map<String, Object> ia() {
        kk kkVar = this.dq;
        if (kkVar != null) {
            return kkVar.mn();
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.jy
    public com.bytedance.sdk.openadsdk.f.d.d.p iw() {
        kk kkVar = this.dq;
        if (kkVar != null) {
            return kkVar.q();
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.jy
    public com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.s kk() {
        return new o(new d(this.dq));
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.jy
    public void mn() {
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.jy
    public int ox() {
        kk kkVar = this.dq;
        if (kkVar != null) {
            return kkVar.mp();
        }
        return -1;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.jy
    public void p() {
        com.bytedance.sdk.openadsdk.e.dq.d.dq.d dVar = this.p;
        if (dVar != null) {
            dVar.dq(this.s, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        }
        com.bytedance.sdk.openadsdk.e.dq.d.dq.dq dqVar = this.ox;
        if (dqVar != null) {
            dqVar.dq(this.s, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.jy
    public void s() {
        if (this.s != null) {
            this.s = null;
        }
        kk kkVar = this.dq;
        if (kkVar != null) {
            kkVar.ox();
        }
        if (this.iw != null) {
            this.iw = null;
        }
        if (this.mn != null) {
            this.mn = null;
        }
    }
}
