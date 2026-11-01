package com.bytedance.sdk.gromore.dq.dq.p;

import android.app.Activity;
import android.app.Dialog;
import android.view.View;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.TTDislikeDialogAbstract;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class mp extends com.bytedance.sdk.openadsdk.f.d.d.jy {

    /* renamed from: d, reason: collision with root package name */
    private com.bytedance.msdk.api.p.dq.mn.dq f2353d;
    private com.bytedance.msdk.core.admanager.ia dq;
    private com.bytedance.sdk.openadsdk.f.d.dq.d iw;
    private com.bytedance.sdk.openadsdk.mediation.ad.dq.d.dq.d mn;
    private View ox;
    private com.bytedance.sdk.openadsdk.e.dq.d.dq.ox p;
    private com.bytedance.sdk.openadsdk.e.dq.d.dq.d s;

    public mp(com.bytedance.msdk.core.admanager.ia iaVar, com.bytedance.msdk.api.p.dq.mn.dq dqVar, com.bytedance.sdk.openadsdk.mediation.ad.dq.d.dq.d dVar) {
        this.dq = iaVar;
        this.mn = dVar;
        this.f2353d = dqVar;
        o();
    }

    private void o() {
        com.bytedance.msdk.api.p.dq.mn.dq dqVar = this.f2353d;
        if (dqVar != null) {
            dqVar.dq(new com.bytedance.msdk.api.p.dq.mn.mn() { // from class: com.bytedance.sdk.gromore.dq.dq.p.mp.1
                @Override // com.bytedance.msdk.api.p.dq.mn.ox
                public void dq() {
                    if (mp.this.s != null) {
                        mp.this.s.d(null, 0);
                    }
                }

                @Override // com.bytedance.msdk.api.p.dq.mn.mn
                public void dq(float f2, float f3) {
                    if (mp.this.s != null) {
                        mp.this.s.dq((View) null, f2, f3);
                    }
                }

                @Override // com.bytedance.msdk.api.p.dq.mn.ox
                public void dq(View view) {
                    if (mp.this.s != null) {
                        mp.this.s.dq(view, 0);
                    }
                }

                @Override // com.bytedance.msdk.api.p.dq.mn.mn
                public void dq(View view, String str, int i) {
                    if (mp.this.s != null) {
                        mp.this.s.dq(view, str, i);
                    }
                }
            });
            this.f2353d.dq(new com.bytedance.msdk.api.p.dq.mn.kk() { // from class: com.bytedance.sdk.gromore.dq.dq.p.mp.2
                @Override // com.bytedance.msdk.api.p.dq.mn.kk
                public void by() {
                    if (mp.this.p != null) {
                        mp.this.p.dq();
                    }
                }

                @Override // com.bytedance.msdk.api.p.dq.mn.kk
                public void dq(long j, long j2) {
                    if (mp.this.p != null) {
                        mp.this.p.dq(j, j2);
                    }
                }

                @Override // com.bytedance.msdk.api.p.dq.mn.kk
                public void dq(com.bytedance.msdk.api.dq dqVar2) {
                    if (dqVar2 == null || mp.this.p == null) {
                        return;
                    }
                    mp.this.p.dq(dqVar2.dq, -1);
                }

                @Override // com.bytedance.msdk.api.p.dq.mn.kk
                public void uh() {
                    if (mp.this.p != null) {
                        mp.this.p.d();
                    }
                }

                @Override // com.bytedance.msdk.api.p.dq.mn.kk
                public void v() {
                    if (mp.this.p != null) {
                        mp.this.p.s();
                    }
                }

                @Override // com.bytedance.msdk.api.p.dq.mn.kk
                public void xz() {
                    if (mp.this.p != null) {
                        mp.this.p.ox();
                    }
                }

                @Override // com.bytedance.msdk.api.p.dq.mn.kk
                public void yy() {
                    if (mp.this.p != null) {
                        mp.this.p.p();
                    }
                }
            });
            this.f2353d.dq(new com.bytedance.msdk.api.p.dq.d() { // from class: com.bytedance.sdk.gromore.dq.dq.p.mp.3
                @Override // com.bytedance.msdk.api.p.dq.d
                public void d(long j, long j2, String str, String str2) {
                    if (mp.this.iw != null) {
                        mp.this.iw.ox(j, j2, str, str2);
                    }
                }

                @Override // com.bytedance.msdk.api.p.dq.d
                public void dq() {
                    if (mp.this.iw != null) {
                        mp.this.iw.dq();
                    }
                }

                @Override // com.bytedance.msdk.api.p.dq.d
                public void dq(long j, long j2, int i, int i2, String str, String str2) {
                    if (mp.this.iw != null) {
                        mp.this.iw.dq(j, j2, str, str2);
                    }
                }

                @Override // com.bytedance.msdk.api.p.dq.d
                public void dq(long j, long j2, String str, String str2) {
                    if (mp.this.iw != null) {
                        mp.this.iw.d(j, j2, str, str2);
                    }
                }

                @Override // com.bytedance.msdk.api.p.dq.d
                public void dq(long j, String str, String str2) {
                    if (mp.this.iw != null) {
                        mp.this.iw.dq(j, str, str2);
                    }
                }

                @Override // com.bytedance.msdk.api.p.dq.d
                public void dq(String str, String str2) {
                    if (mp.this.iw != null) {
                        mp.this.iw.dq(str, str2);
                    }
                }
            });
        }
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.jy
    public int d() {
        com.bytedance.msdk.api.p.dq.mn.dq dqVar = this.f2353d;
        if (dqVar != null) {
            return dqVar.e();
        }
        return 0;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.kk
    public void d(Double d2) {
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.jy
    public View dq() {
        com.bytedance.msdk.api.p.dq.mn.dq dqVar = this.f2353d;
        if (dqVar == null) {
            return null;
        }
        if (dqVar.ir()) {
            this.ox = this.f2353d.ig();
        }
        return this.ox;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.jy
    public com.bytedance.sdk.openadsdk.f.d.d.ia dq(Activity activity) {
        com.bytedance.msdk.api.p.dq.mn.dq dqVar = this.f2353d;
        if (dqVar != null) {
            return dqVar.dq(activity);
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.jy
    public void dq(int i) {
        com.bytedance.msdk.api.p.dq.mn.dq dqVar = this.f2353d;
        if (dqVar != null) {
            dqVar.dq(i);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.jy
    public void dq(Activity activity, com.bytedance.sdk.openadsdk.gh.dq.d.dq.dq dqVar) {
        com.bytedance.msdk.api.p.dq.mn.dq dqVar2 = this.f2353d;
        if (dqVar2 == null || activity == null) {
            return;
        }
        dqVar2.dq(activity, dqVar);
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.jy
    public void dq(TTDislikeDialogAbstract tTDislikeDialogAbstract) {
        com.bytedance.msdk.api.p.dq.mn.dq dqVar = this.f2353d;
        if (dqVar != null) {
            dqVar.dq((Dialog) tTDislikeDialogAbstract);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.jy
    public void dq(com.bytedance.sdk.openadsdk.e.dq.d.dq.d dVar) {
        this.s = dVar;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.jy
    public void dq(com.bytedance.sdk.openadsdk.e.dq.d.dq.dq dqVar) {
        this.s = dqVar;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.jy
    public void dq(com.bytedance.sdk.openadsdk.e.dq.d.dq.ox oxVar) {
        this.p = oxVar;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.jy
    public void dq(com.bytedance.sdk.openadsdk.f.d.dq.d dVar) {
        this.iw = dVar;
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
        com.bytedance.msdk.api.p.dq.mn.dq dqVar = this.f2353d;
        if (dqVar != null) {
            dqVar.dq(str);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.jy
    public void dq(JSONObject jSONObject) {
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.jy
    public void dq(boolean z) {
        com.bytedance.msdk.api.p.dq.mn.dq dqVar = this.f2353d;
        if (dqVar != null) {
            dqVar.dq(z);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.jy
    public Map<String, Object> ia() {
        com.bytedance.msdk.api.p.dq.mn.dq dqVar = this.f2353d;
        if (dqVar != null) {
            return com.bytedance.sdk.gromore.dq.d.d.dq(dqVar.h(), this.f2353d.gx());
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.jy
    public com.bytedance.sdk.openadsdk.f.d.d.p iw() {
        com.bytedance.msdk.api.p.dq.mn.dq dqVar = this.f2353d;
        if (dqVar != null) {
            return dqVar.kk();
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.jy
    public com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.s kk() {
        return new o(new ig(this.dq, this.f2353d));
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.jy
    public void mn() {
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.jy
    public int ox() {
        com.bytedance.msdk.api.p.dq.mn.dq dqVar = this.f2353d;
        if (dqVar != null) {
            return dqVar.kx();
        }
        return -1;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.jy
    public void p() {
        com.bytedance.msdk.api.p.dq.mn.dq dqVar = this.f2353d;
        if (dqVar != null) {
            if (dqVar.ir()) {
                this.f2353d.op();
                return;
            }
            com.bytedance.sdk.openadsdk.mediation.ad.dq.d.dq.d dVar = this.mn;
            if (dVar == null) {
                com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", "--==-- 自渲染信息流转模板，开发者未提供MediationNativeToBannerListener，将无法展示该广告");
                return;
            }
            try {
                View dq = dVar.dq(new kk(this.f2353d));
                this.ox = dq;
                if (dq != null) {
                    com.bytedance.sdk.openadsdk.e.dq.d.dq.d dVar2 = this.s;
                    if (dVar2 != null) {
                        dVar2.dq(dq, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
                        return;
                    }
                    return;
                }
                com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", "--==-- 自渲染信息流转模板，getMediationBannerViewFromNativeAd()返回null，将无法展示该广告");
                com.bytedance.sdk.openadsdk.e.dq.d.dq.d dVar3 = this.s;
                if (dVar3 != null) {
                    dVar3.dq((View) null, "渲染失败", -99999);
                }
            } catch (Throwable th) {
                com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", "--==-- 自渲染信息流转模板，getMediationBannerViewFromNativeAd()发生异常，将无法展示该广告，信息如下：");
                th.printStackTrace();
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.jy
    public void s() {
        com.bytedance.msdk.api.p.dq.mn.dq dqVar = this.f2353d;
        if (dqVar != null) {
            dqVar.vf();
        }
    }
}
