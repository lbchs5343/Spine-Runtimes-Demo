package com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bytedance.sdk.component.utils.d;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.ir.dq;
import com.bytedance.sdk.openadsdk.core.ir.er;
import com.bytedance.sdk.openadsdk.core.ir.iw;
import com.bytedance.sdk.openadsdk.core.no;
import com.bytedance.sdk.openadsdk.core.op;
import com.bytedance.sdk.openadsdk.core.r.fw;
import com.bytedance.sdk.openadsdk.core.r.gx;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.le;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import g.hat;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes3.dex */
public class ox implements com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq {

    /* renamed from: d, reason: collision with root package name */
    private j f2964d;
    private com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq dq;
    private String ig;
    private boolean kk;
    private com.bytedance.sdk.openadsdk.core.video.d.d mp;
    private com.bytedance.sdk.openadsdk.core.o.d.ox no;
    private boolean o;
    private String ox;
    private Context p;
    private fw s;
    private boolean iw = false;
    private boolean mn = false;
    private Bridge ia = no.ia().h();

    public ox(com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq dqVar, j jVar, String str, fw fwVar, Context context) {
        this.dq = dqVar;
        this.f2964d = jVar;
        this.ox = str;
        this.p = context;
        this.s = fwVar;
    }

    private Boolean d() {
        if (TextUtils.isEmpty(this.ig) || !le.dq(this.f2964d, this.ig)) {
            return null;
        }
        if (le.d(this.f2964d, this.ig) == 1) {
            return Boolean.valueOf(ox());
        }
        return dq(new HashMap(), le.ox(this.f2964d, this.ig));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(final Intent intent) {
        j jVar = this.f2964d;
        if (jVar == null || this.p == null || intent == null) {
            return;
        }
        String ox = jVar.gm() != null ? this.f2964d.gm().ox() : "";
        com.bytedance.sdk.openadsdk.core.ir.iw.dq(this.p, this.f2964d.fx(), ox, TextUtils.isEmpty(ox) ? "是否立即打开应用" : "是否立即打开".concat(String.valueOf(ox)), "立即打开", "退出", new iw.dq() { // from class: com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq.ox.3
            @Override // com.bytedance.sdk.openadsdk.core.ir.iw.dq
            public void d() {
            }

            @Override // com.bytedance.sdk.openadsdk.core.ir.iw.dq
            public void dq() {
                com.bytedance.sdk.openadsdk.core.ig.ox.ia(ox.this.f2964d, ox.this.ox, "open_url_app", null);
                com.bytedance.sdk.component.utils.d.dq(ox.this.p, intent, new d.dq() { // from class: com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq.ox.3.1
                    @Override // com.bytedance.sdk.component.utils.d.dq
                    public void dq() {
                        com.bytedance.sdk.openadsdk.core.ig.iw.dq().dq(ox.this.f2964d, ox.this.ox, false);
                        com.bytedance.sdk.openadsdk.core.ig.ox.p(ox.this.f2964d, ox.this.ox, "deeplink_success_realtime");
                    }

                    @Override // com.bytedance.sdk.component.utils.d.dq
                    public void dq(Throwable th) {
                        com.bytedance.sdk.openadsdk.core.ig.ox.p(ox.this.f2964d, ox.this.ox, "deeplink_fail_realtime");
                    }
                }, TextUtils.equals("main", "internal"));
            }

            @Override // com.bytedance.sdk.openadsdk.core.ir.iw.dq
            public void ox() {
            }
        });
    }

    private fw dq() {
        fw fwVar = this.s;
        return fwVar == null ? new fw() : fwVar;
    }

    private Boolean dq(final Map<String, Object> map, Intent intent, final boolean z) {
        c.d(intent);
        dq(intent);
        if (!this.mn || !dq(this.ox, "open_fallback_url", this.f2964d, map)) {
            com.bytedance.sdk.openadsdk.core.ig.ox.ia(this.f2964d, this.ox, "open_url_app", null);
        }
        final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        com.bytedance.sdk.component.utils.d.dq(this.p, intent, new d.dq() { // from class: com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq.ox.1
            @Override // com.bytedance.sdk.component.utils.d.dq
            public void dq() {
                atomicBoolean.set(true);
                if (ox.this.iw) {
                    com.bytedance.sdk.openadsdk.core.ig.ox.p(ox.this.f2964d, ox.this.ox, "lp_openurl");
                    com.bytedance.sdk.openadsdk.core.ig.ox.p(ox.this.f2964d, ox.this.ox, "lp_deeplink_success_realtime");
                } else {
                    com.bytedance.sdk.openadsdk.core.ig.ox.p(ox.this.f2964d, ox.this.ox, "deeplink_success_realtime");
                }
                com.bytedance.sdk.openadsdk.core.ig.iw.dq().dq(ox.this.f2964d, ox.this.ox, ox.this.iw);
                ox.this.dq(0);
            }

            @Override // com.bytedance.sdk.component.utils.d.dq
            public void dq(Throwable th) {
                atomicBoolean.set(false);
                ox.this.dq((Map<String, Object>) map, z);
                ox.this.dq(3);
            }
        }, TextUtils.equals("main", "internal"));
        return Boolean.valueOf(atomicBoolean.get());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(int i) {
        j jVar = this.f2964d;
        if (jVar == null || jVar.ls() != 1) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.ig.ox.dq(this.f2964d, this.ox, 1, 1, i, op.iw());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x003c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void dq(Map<String, Object> map, boolean z) {
        if (this.mn && !z) {
            com.bytedance.sdk.openadsdk.core.ig.ox.ox(this.f2964d, this.ox, "open_fallback_download");
        }
        if (this.mn) {
            com.bytedance.sdk.openadsdk.core.ig.ox.ox(this.f2964d, this.ox, "lp_openurl_failed");
            if (!this.o && !dq(this.ox, "open_fallback_url", this.f2964d, map)) {
                this.o = true;
            }
            if (this.kk) {
                com.bytedance.sdk.openadsdk.core.ig.ox.p(this.f2964d, this.ox, (this.mn && this.iw) ? "lp_deeplink_fail_realtime" : "deeplink_fail_realtime");
                return;
            }
            return;
        }
        com.bytedance.sdk.openadsdk.core.ig.ox.ia(this.f2964d, this.ox, "open_fallback_url", null);
        if (this.kk) {
        }
    }

    private boolean dq(String str, String str2, j jVar, Map<String, Object> map) {
        if (this.ia == null) {
            return false;
        }
        com.bytedance.sdk.openadsdk.core.ir.op<String, Object> dq = new com.bytedance.sdk.openadsdk.core.ir.op().dq(TTDownloadField.TT_TAG_INTERCEPT, str).dq(TTDownloadField.TT_LABEL, str2).dq(TTDownloadField.TT_HASHCODE, Integer.valueOf(dq.ox(map))).dq(TTDownloadField.TT_META, jVar.ve().toString());
        Bridge bridge = this.ia;
        hat f2 = hat.f();
        f2.f19148c.put(0, dq);
        return ((Boolean) bridge.call(2, f2.k(), Boolean.class)).booleanValue();
    }

    private String ox(String str) {
        j jVar;
        com.bytedance.sdk.openadsdk.core.r.c eb;
        if (!TextUtils.isEmpty(str) && (jVar = this.f2964d) != null && gx.dq(jVar) && (eb = this.f2964d.eb()) != null) {
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

    private boolean ox() {
        String ox = le.ox(this.f2964d, this.ig);
        j jVar = this.f2964d;
        Context context = this.p;
        String str = this.ox;
        com.bytedance.sdk.openadsdk.core.ia.dq.dq.d.dq dqVar = new com.bytedance.sdk.openadsdk.core.ia.dq.dq.d.dq(jVar, context, str, c.dq(str));
        dqVar.p(true);
        dqVar.dq(ox);
        dqVar.dq(this.mp);
        return dqVar.dq((Map<String, Object>) new HashMap());
    }

    public String d(String str) {
        Uri parse;
        return (TextUtils.isEmpty(str) || (parse = Uri.parse(str)) == null || TextUtils.isEmpty(parse.getScheme())) ? "" : parse.getScheme().toLowerCase(Locale.US);
    }

    public void d(boolean z) {
        this.mn = z;
    }

    public Boolean dq(Map<String, Object> map, String str) {
        String ox = ox(str);
        if (TextUtils.isEmpty(ox)) {
            return null;
        }
        fw.dq((String) null);
        Uri parse = Uri.parse(ox);
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(parse);
        if (this.iw) {
            com.bytedance.sdk.openadsdk.core.ig.ox.d(this.f2964d, this.ox, "lp_open_dpl", d(ox));
        }
        if (!c.iw(this.p)) {
            return dq(map, intent, false);
        }
        if (c.dq(this.p, intent)) {
            return dq(map, intent, true);
        }
        dq(map, true);
        dq(1);
        return null;
    }

    public void dq(final Intent intent) {
        final com.bytedance.sdk.openadsdk.core.ir.dq p;
        final long currentTimeMillis = System.currentTimeMillis();
        j jVar = this.f2964d;
        if (jVar == null || intent == null || this.p == null || !jVar.ax() || (p = no.ia().p()) == null) {
            return;
        }
        p.dq(new dq.InterfaceC0164dq() { // from class: com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq.ox.2
            @Override // com.bytedance.sdk.openadsdk.core.ir.dq.InterfaceC0164dq
            public void dq() {
                if (System.currentTimeMillis() - currentTimeMillis <= 3000) {
                    ox.this.d(intent);
                }
                com.bytedance.sdk.openadsdk.core.ir.dq dqVar = p;
                if (dqVar != null) {
                    dqVar.ox();
                }
            }
        });
    }

    public void dq(com.bytedance.sdk.openadsdk.core.o.d.ox oxVar) {
        this.no = oxVar;
    }

    public void dq(com.bytedance.sdk.openadsdk.core.video.d.d dVar) {
        this.mp = dVar;
    }

    public void dq(String str) {
        this.ig = str;
    }

    public void dq(boolean z) {
        this.iw = z;
    }

    @Override // com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq
    public boolean dq(Map<String, Object> map) {
        com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq dqVar;
        Boolean d2 = d();
        if (d2 != null && d2.booleanValue()) {
            return true;
        }
        fw dq = dq();
        if (dq == null) {
            dq = this.f2964d.kf();
        }
        if (dq == null || TextUtils.isEmpty(dq.dq())) {
            com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq dqVar2 = this.dq;
            return dqVar2 != null && dqVar2.dq(map);
        }
        Boolean dq2 = dq(map, dq.dq());
        if (dq.ox() != 2 || this.no == null || this.mn || (dq2 != null && dq2.booleanValue())) {
            return (dq2 == null || this.mn) ? this.mn && (dq2 == null || !dq2.booleanValue()) && (dqVar = this.dq) != null && dqVar.dq(map) : dq2.booleanValue();
        }
        this.no.p(false);
        this.no.dq(this.f2964d, com.bytedance.sdk.openadsdk.core.ia.dq.p.dq.dq(map));
        return true;
    }

    public void ox(boolean z) {
        this.kk = z;
    }
}
