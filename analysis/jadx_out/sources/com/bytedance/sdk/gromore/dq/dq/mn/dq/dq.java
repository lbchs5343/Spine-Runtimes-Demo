package com.bytedance.sdk.gromore.dq.dq.mn.dq;

import android.app.Activity;
import android.view.View;
import com.bytedance.msdk.ox.p.no;
import com.bytedance.sdk.gromore.dq.dq.p.o;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.TTDislikeDialogAbstract;
import com.bytedance.sdk.openadsdk.f.d.d.ia;
import com.bytedance.sdk.openadsdk.f.d.d.jy;
import com.bytedance.sdk.openadsdk.f.d.d.p;
import com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.s;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class dq extends jy {

    /* renamed from: d, reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.gh.dq.d.dq.dq f2319d;
    private no dq;
    private com.bytedance.sdk.openadsdk.f.d.dq.d iw;
    private com.bytedance.sdk.openadsdk.e.dq.d.dq.ox mn;
    private com.bytedance.sdk.openadsdk.e.dq.d.dq.dq ox;
    private com.bytedance.sdk.openadsdk.e.dq.d.dq.d p;
    private View s = null;

    public dq(no noVar) {
        this.dq = noVar;
        o();
    }

    private void ig() {
        com.bytedance.sdk.openadsdk.e.dq.d.dq.ox oxVar;
        no noVar = this.dq;
        if (noVar == null || (oxVar = this.mn) == null) {
            return;
        }
        noVar.dq(oxVar);
    }

    private void no() {
        com.bytedance.sdk.openadsdk.f.d.dq.d dVar;
        no noVar = this.dq;
        if (noVar == null || (dVar = this.iw) == null) {
            return;
        }
        noVar.dq(dVar);
    }

    private void o() {
        no noVar = this.dq;
        if (noVar != null) {
            noVar.dq(new com.bytedance.msdk.api.p.dq.dq.dq() { // from class: com.bytedance.sdk.gromore.dq.dq.mn.dq.dq.1
                @Override // com.bytedance.msdk.api.p.dq.dq.dq
                public void C_() {
                    if (dq.this.f2319d != null) {
                        dq.this.f2319d.dq(0, "ad closed", true);
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
        no noVar = this.dq;
        if (noVar != null) {
            return noVar.iw();
        }
        return 0;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.kk
    public void d(Double d2) {
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.jy
    public View dq() {
        no noVar;
        if (this.s == null && (noVar = this.dq) != null) {
            this.s = noVar.s();
        }
        no();
        ig();
        return this.s;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.jy
    public ia dq(Activity activity) {
        no noVar = this.dq;
        if (noVar != null) {
            return noVar.dq(activity);
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.jy
    public void dq(int i) {
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.jy
    public void dq(Activity activity, com.bytedance.sdk.openadsdk.gh.dq.d.dq.dq dqVar) {
        this.f2319d = dqVar;
        no noVar = this.dq;
        if (noVar != null) {
            noVar.dq(activity, dqVar);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.jy
    public void dq(TTDislikeDialogAbstract tTDislikeDialogAbstract) {
        no noVar = this.dq;
        if (noVar != null) {
            noVar.dq(tTDislikeDialogAbstract);
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
        no noVar = this.dq;
        if (noVar != null) {
            noVar.dq(str);
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
        no noVar = this.dq;
        if (noVar != null) {
            return noVar.mn();
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.jy
    public p iw() {
        no noVar = this.dq;
        if (noVar != null) {
            return noVar.q();
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.jy
    public s kk() {
        return new o(new d(this.dq));
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.jy
    public void mn() {
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.jy
    public int ox() {
        no noVar = this.dq;
        if (noVar != null) {
            return noVar.mp();
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
        no noVar = this.dq;
        if (noVar != null) {
            noVar.ox();
        }
        if (this.iw != null) {
            this.iw = null;
        }
        if (this.mn != null) {
            this.mn = null;
        }
    }
}
