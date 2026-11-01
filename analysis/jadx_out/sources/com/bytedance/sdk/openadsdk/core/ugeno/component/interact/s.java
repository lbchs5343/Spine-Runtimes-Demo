package com.bytedance.sdk.openadsdk.core.ugeno.component.interact;

import android.view.View;
import android.view.ViewGroup;
import com.bytedance.sdk.component.adexpress.d.q;
import com.bytedance.sdk.openadsdk.core.nativeexpress.cd;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.kx;
import com.bytedance.sdk.openadsdk.core.ugeno.ox.dq;
import com.bytedance.sdk.openadsdk.core.wp;
import g.dbw;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class s extends d {
    private boolean ia;
    private com.bytedance.sdk.openadsdk.core.ugeno.ox.ox iw;
    private final mn kk;
    private View mn;

    public s(j jVar, dq dqVar, ox oxVar) {
        super(jVar, dqVar, oxVar);
        this.ia = false;
        this.kk = new mn() { // from class: com.bytedance.sdk.openadsdk.core.ugeno.component.interact.s.1
            @Override // com.bytedance.sdk.openadsdk.core.ugeno.component.interact.mn
            public void d() {
                s.this.ia = true;
                s.this.s();
            }

            @Override // com.bytedance.sdk.openadsdk.core.ugeno.component.interact.mn
            public void dq() {
            }

            @Override // com.bytedance.sdk.openadsdk.core.ugeno.component.interact.mn
            public void dq(boolean z) {
            }

            @Override // com.bytedance.sdk.openadsdk.core.ugeno.component.interact.mn
            public void ox() {
                s.this.ia = false;
                if (s.this.mn != null) {
                    s.this.mn.setVisibility(8);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.ugeno.component.interact.mn
            public void p() {
                s sVar = s.this;
                if (sVar.p) {
                    sVar.p = false;
                    com.bytedance.sdk.openadsdk.h.mn.dq(sVar.s);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.ugeno.component.interact.mn
            public boolean s() {
                return false;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(final JSONObject jSONObject, final ViewGroup viewGroup, final View view, final boolean z) {
        this.s = new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.ugeno.component.interact.s.3
            @Override // java.lang.Runnable
            public void run() {
                if (s.this.dq == null) {
                    return;
                }
                dq.C0191dq c0191dq = new dq.C0191dq();
                c0191dq.s(com.bytedance.sdk.openadsdk.core.ugeno.kk.dq(s.this.dq, viewGroup));
                c0191dq.dq(jSONObject);
                c0191dq.dq((dbw) new cd());
                int height = viewGroup.getHeight();
                int width = viewGroup.getWidth();
                c0191dq.d(height);
                c0191dq.dq(width);
                c0191dq.dq(com.bytedance.sdk.openadsdk.core.no.ia().s());
                s.this.iw = new com.bytedance.sdk.openadsdk.core.ugeno.ox.ox(wp.getContext(), s.this.dq, c0191dq.dq(), viewGroup);
                s.this.iw.dq(new com.bytedance.sdk.component.adexpress.d.ia() { // from class: com.bytedance.sdk.openadsdk.core.ugeno.component.interact.s.3.1
                    @Override // com.bytedance.sdk.component.adexpress.d.ia
                    public void dq(View view2, int i, com.bytedance.sdk.component.adexpress.ox oxVar) {
                        s.this.f3559d.dq(view2, i, oxVar);
                    }

                    @Override // com.bytedance.sdk.component.adexpress.d.ia
                    public void dq(View view2, int i, com.bytedance.sdk.component.adexpress.ox oxVar, int i2) {
                        s.this.f3559d.dq(view2, i, oxVar);
                    }
                });
                s.this.iw.dq(new ia() { // from class: com.bytedance.sdk.openadsdk.core.ugeno.component.interact.s.3.2
                    @Override // com.bytedance.sdk.openadsdk.core.ugeno.component.interact.ia
                    public void dq() {
                        s.this.mn.setVisibility(8);
                        try {
                            if (s.this.mn == null || s.this.mn.getParent() == null) {
                                return;
                            }
                            ((ViewGroup) s.this.mn.getParent()).removeView(s.this.mn);
                        } catch (Exception unused) {
                        }
                    }
                });
                s sVar = s.this;
                sVar.ox.dq(sVar.dq());
                s.this.iw.dq(new com.bytedance.sdk.component.adexpress.d.mn() { // from class: com.bytedance.sdk.openadsdk.core.ugeno.component.interact.s.3.3
                    @Override // com.bytedance.sdk.component.adexpress.d.mn
                    public void dq(int i, String str) {
                        AnonymousClass3 anonymousClass3 = AnonymousClass3.this;
                        s.this.f3559d.dq(viewGroup);
                        HashMap hashMap = new HashMap();
                        hashMap.put("error_code", Integer.valueOf(i));
                        hashMap.put("error_msg", str);
                        hashMap.put("render_type", Integer.valueOf(s.this.dq()));
                        s.this.ox.dq(false, (Map<String, Object>) hashMap);
                    }

                    @Override // com.bytedance.sdk.component.adexpress.d.mn
                    public void dq(View view2, q qVar) {
                        boolean z2;
                        if (view2 == null) {
                            return;
                        }
                        s.this.mn = view2;
                        s.this.mn.setVisibility(8);
                        boolean z3 = false;
                        if (!(s.this.mn instanceof ViewGroup) || ((ViewGroup) s.this.mn).getChildCount() <= 0) {
                            z2 = false;
                        } else {
                            View childAt = ((ViewGroup) s.this.mn).getChildAt(0);
                            if (childAt != null && childAt.getVisibility() == 8) {
                                z3 = true;
                            }
                            z2 = z3;
                        }
                        AnonymousClass3 anonymousClass3 = AnonymousClass3.this;
                        s sVar2 = s.this;
                        sVar2.dq(viewGroup, view, sVar2.mn, z, z2);
                        s.this.s();
                    }
                });
            }
        };
        viewGroup.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.ugeno.component.interact.s.4
            @Override // java.lang.Runnable
            public void run() {
                int height = viewGroup.getHeight();
                int width = viewGroup.getWidth();
                if (height > 0 || width > 0) {
                    s.this.s.run();
                } else {
                    s.this.p = true;
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s() {
        View view = this.mn;
        if (view == null || !this.ia) {
            return;
        }
        view.setVisibility(0);
    }

    @Override // com.bytedance.sdk.openadsdk.core.ugeno.component.interact.d
    public mn d() {
        return this.kk;
    }

    @Override // com.bytedance.sdk.openadsdk.core.ugeno.component.interact.d
    public void d(final ViewGroup viewGroup, final View view, final boolean z) {
        if (viewGroup == null) {
            HashMap hashMap = new HashMap();
            hashMap.put("render_type", Integer.valueOf(dq()));
            hashMap.put("error_code", 100);
            this.ox.dq(false, (Map<String, Object>) hashMap);
            return;
        }
        String ox = kx.iw(this.dq).ox();
        String p = kx.iw(this.dq).p();
        JSONObject d2 = com.bytedance.sdk.openadsdk.core.ugeno.kk.d(ox, p);
        if (d2 == null || d2.length() <= 0) {
            com.bytedance.sdk.openadsdk.core.ugeno.kk.dq(ox, p, new com.bytedance.sdk.openadsdk.core.ugeno.ox() { // from class: com.bytedance.sdk.openadsdk.core.ugeno.component.interact.s.2
                @Override // com.bytedance.sdk.openadsdk.core.ugeno.ox
                public void dq(String str) {
                    try {
                        s.this.dq(new JSONObject(str), viewGroup, view, z);
                    } catch (Throwable unused) {
                    }
                }
            });
        } else {
            dq(d2, viewGroup, view, z);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.ugeno.component.interact.d
    public int dq() {
        return 1;
    }

    @Override // com.bytedance.sdk.openadsdk.core.ugeno.component.interact.d
    public boolean dq(int i, int i2) {
        return kx.iw(this.dq).dq(i, i2);
    }

    public boolean ox() {
        return kx.dq(this.dq);
    }

    public void p() {
        this.mn = null;
        com.bytedance.sdk.openadsdk.core.ugeno.ox.ox oxVar = this.iw;
        if (oxVar != null) {
            oxVar.o();
        }
    }
}
