package com.bytedance.sdk.openadsdk.core.o;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.bytedance.sdk.component.utils.d;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.openadsdk.core.ir.dq;
import com.bytedance.sdk.openadsdk.core.ir.er;
import com.bytedance.sdk.openadsdk.core.ir.iw;
import com.bytedance.sdk.openadsdk.core.no;
import com.bytedance.sdk.openadsdk.core.op;
import com.bytedance.sdk.openadsdk.core.r.c;
import com.bytedance.sdk.openadsdk.core.r.fw;
import com.bytedance.sdk.openadsdk.core.r.gx;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.wn;
import java.util.Map;

/* loaded from: classes3.dex */
public class ox {

    /* renamed from: d, reason: collision with root package name */
    private String f3285d;
    private j dq;
    private Context ox;

    public ox(j jVar, String str, Context context) {
        this.dq = jVar;
        this.f3285d = str;
        this.ox = context;
    }

    private fw d() {
        j jVar = this.dq;
        return jVar == null ? new fw() : jVar.kf();
    }

    public static String dq(j jVar, String str) {
        c eb;
        if (!TextUtils.isEmpty(str) && jVar != null && gx.dq(jVar) && (eb = jVar.eb()) != null) {
            try {
                String ox = eb.ox();
                String p = eb.p();
                Map<String, String> dq = er.dq(str);
                dq.put("live_short_touch_params", ox);
                dq.put("extra_pangle_scheme_params", p);
                String dq2 = er.dq(str, dq);
                com.bytedance.sdk.openadsdk.core.ox.dq().dq("is_reward_deep_link_to_live", true);
                return dq2;
            } catch (Exception unused) {
            }
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(int i) {
        j jVar = this.dq;
        if (jVar == null || jVar.ls() != 1) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.ig.ox.dq(this.dq, this.f3285d, 1, 1, i, op.iw());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(final Intent intent) {
        j jVar = this.dq;
        if (jVar == null || this.ox == null || intent == null) {
            return;
        }
        String ox = jVar.gm() != null ? this.dq.gm().ox() : "";
        com.bytedance.sdk.openadsdk.core.ir.iw.dq(this.ox, this.dq.fx(), ox, TextUtils.isEmpty(ox) ? "是否立即打开应用" : "是否立即打开".concat(String.valueOf(ox)), "立即打开", "退出", new iw.dq() { // from class: com.bytedance.sdk.openadsdk.core.o.ox.3
            @Override // com.bytedance.sdk.openadsdk.core.ir.iw.dq
            public void d() {
            }

            @Override // com.bytedance.sdk.openadsdk.core.ir.iw.dq
            public void dq() {
                com.bytedance.sdk.openadsdk.core.ig.ox.ia(ox.this.dq, ox.this.f3285d, "open_url_app", null);
                com.bytedance.sdk.component.utils.d.dq(ox.this.ox, intent, new d.dq() { // from class: com.bytedance.sdk.openadsdk.core.o.ox.3.1
                    @Override // com.bytedance.sdk.component.utils.d.dq
                    public void dq() {
                        com.bytedance.sdk.openadsdk.core.ig.iw.dq().dq(ox.this.dq, ox.this.f3285d, false);
                        com.bytedance.sdk.openadsdk.core.ig.ox.p(ox.this.dq, ox.this.f3285d, "deeplink_success_realtime");
                    }

                    @Override // com.bytedance.sdk.component.utils.d.dq
                    public void dq(Throwable th) {
                        com.bytedance.sdk.openadsdk.core.ig.ox.p(ox.this.dq, ox.this.f3285d, "deeplink_fail_realtime");
                    }
                }, TextUtils.equals("main", "internal"));
            }

            @Override // com.bytedance.sdk.openadsdk.core.ir.iw.dq
            public void ox() {
            }
        });
    }

    public Boolean dq(final int i, final Map<String, Object> map) {
        fw d2 = d();
        if (!TextUtils.isEmpty(d2.dq())) {
            String dq = dq(this.dq, d2.dq());
            fw.dq((String) null);
            Uri parse = Uri.parse(dq);
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(parse);
            com.bytedance.sdk.openadsdk.core.ir.c.d(intent);
            boolean z = false;
            if (!com.bytedance.sdk.openadsdk.core.ir.c.iw(this.ox)) {
                long currentTimeMillis = System.currentTimeMillis();
                try {
                    com.bytedance.sdk.openadsdk.core.ig.ox.ia(this.dq, this.f3285d, "open_url_app", null);
                    boolean dq2 = com.bytedance.sdk.openadsdk.core.ir.c.dq(false, false, this.dq, this.f3285d);
                    try {
                        com.bytedance.sdk.component.utils.d.startActivity(this.ox, intent, TextUtils.equals("main", "internal"));
                        dq(intent, currentTimeMillis);
                        com.bytedance.sdk.openadsdk.core.ig.ox.p(this.dq, this.f3285d, "deeplink_success_realtime");
                        com.bytedance.sdk.openadsdk.core.ig.iw.dq().dq(this.dq, this.f3285d, false);
                        dq(0);
                        return Boolean.TRUE;
                    } catch (Throwable unused) {
                        z = dq2;
                        com.bytedance.sdk.openadsdk.core.ig.ox.p(this.dq, this.f3285d, "deeplink_fail_realtime");
                        dq(3);
                        if (z) {
                            return Boolean.FALSE;
                        }
                        return null;
                    }
                } catch (Throwable unused2) {
                }
            } else {
                if (com.bytedance.sdk.openadsdk.core.ir.c.dq(this.ox, intent)) {
                    com.bytedance.sdk.openadsdk.core.ir.c.dq(false, false, this.dq, this.f3285d);
                    dq(intent, System.currentTimeMillis());
                    com.bytedance.sdk.component.utils.d.dq(this.ox, intent, new d.dq() { // from class: com.bytedance.sdk.openadsdk.core.o.ox.1
                        @Override // com.bytedance.sdk.component.utils.d.dq
                        public void dq() {
                            com.bytedance.sdk.openadsdk.core.ig.ox.p(ox.this.dq, ox.this.f3285d, "deeplink_success_realtime");
                            ox.this.dq(0);
                        }

                        @Override // com.bytedance.sdk.component.utils.d.dq
                        public void dq(Throwable th) {
                            if (ox.this.dq != null && !ox.this.dq.fn()) {
                                wn.dq(ox.this.ox, ox.this.dq.ae(), ox.this.dq, i, ox.this.f3285d, (Map<String, Object>) map);
                                ig.d("WebHelper", "openDetailPage() -> mContext.startActivity(intent) fail :", th);
                            }
                            com.bytedance.sdk.openadsdk.core.ig.ox.p(ox.this.dq, ox.this.f3285d, "deeplink_fail_realtime");
                            ox.this.dq(3);
                        }
                    }, TextUtils.equals("main", "internal"));
                    com.bytedance.sdk.openadsdk.core.ig.ox.ia(this.dq, this.f3285d, "open_url_app", null);
                    com.bytedance.sdk.openadsdk.core.ig.iw.dq().dq(this.dq, this.f3285d, false);
                    return Boolean.TRUE;
                }
                com.bytedance.sdk.openadsdk.core.ig.ox.p(this.dq, this.f3285d, "deeplink_fail_realtime");
                dq(1);
            }
        }
        return null;
    }

    public String dq() {
        fw d2 = d();
        return d2.ox() == 1 ? d2.d() : this.dq.ae();
    }

    public void dq(final Intent intent, final long j) {
        final com.bytedance.sdk.openadsdk.core.ir.dq p;
        j jVar = this.dq;
        if (jVar == null || intent == null || this.ox == null || !jVar.ax() || (p = no.ia().p()) == null) {
            return;
        }
        p.dq(new dq.InterfaceC0164dq() { // from class: com.bytedance.sdk.openadsdk.core.o.ox.2
            @Override // com.bytedance.sdk.openadsdk.core.ir.dq.InterfaceC0164dq
            public void dq() {
                if (System.currentTimeMillis() - j <= 3000) {
                    ox.this.dq(intent);
                }
                com.bytedance.sdk.openadsdk.core.ir.dq dqVar = p;
                if (dqVar != null) {
                    dqVar.ox();
                }
            }
        });
    }

    public boolean dq(com.bytedance.sdk.openadsdk.core.o.d.ox oxVar, boolean z, boolean z2) {
        boolean z3 = false;
        if (d().ox() != 2 || j.d(this.dq) || oxVar == null) {
            com.bytedance.sdk.openadsdk.core.ig.ox.ia(this.dq, this.f3285d, "open_fallback_url", null);
            return false;
        }
        if (oxVar.ox() && oxVar.dq(z, z2)) {
            z3 = true;
        }
        boolean z4 = (z3 || !oxVar.dq(com.bytedance.sdk.openadsdk.core.ir.c.gh(this.dq), z2)) ? z3 : true;
        com.bytedance.sdk.openadsdk.core.ig.ox.ia(this.dq, this.f3285d, "open_fallback_url", null);
        return z4;
    }
}
