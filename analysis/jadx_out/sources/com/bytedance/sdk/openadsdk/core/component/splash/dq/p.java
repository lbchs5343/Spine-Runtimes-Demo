package com.bytedance.sdk.openadsdk.core.component.splash.dq;

import android.text.TextUtils;
import com.bytedance.sdk.component.o.kk;
import com.bytedance.sdk.component.o.mn;
import com.bytedance.sdk.openadsdk.core.component.splash.dq.dq;
import com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.iw;
import com.bytedance.sdk.openadsdk.core.gh.ig;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.ir.n;
import com.bytedance.sdk.openadsdk.core.ji;
import com.bytedance.sdk.openadsdk.core.r.ds;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.wp;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class p extends com.bytedance.sdk.openadsdk.core.component.splash.dq.dq {
    private d iw;
    private volatile com.bytedance.sdk.component.mn.dq mn = null;
    private com.bytedance.sdk.component.mn.dq ia = n.dq("tt_materialMeta");

    public class d extends kk {

        /* renamed from: d, reason: collision with root package name */
        private ds f2718d;

        public d(ds dsVar) {
            super("WriteCacheTask");
            this.f2718d = dsVar;
        }

        private void d() {
            try {
                int dq = com.bytedance.sdk.openadsdk.core.component.splash.kk.dq(this.f2718d);
                if (dq <= 0) {
                    return;
                }
                String d2 = p.this.ia.d("net_ad_already_shown", "");
                if (!TextUtils.isEmpty(d2) && d2.equals(this.f2718d.dq().el())) {
                    com.bytedance.sdk.openadsdk.core.iw.dq.ox("lqmt", "缓存已show： rit: " + dq + "   reqId: " + this.f2718d.dq().el());
                    return;
                }
                JSONObject ox = this.f2718d.d().ox();
                if (ox != null) {
                    p.this.ia.dq("materialMeta".concat(String.valueOf(dq)), ox.toString());
                }
                p.this.ia.dq("net_ad_save_success".concat(String.valueOf(dq)), this.f2718d.dq().el());
                com.bytedance.sdk.openadsdk.core.iw.dq.ox("lqmt", "缓存成功： rit: " + dq + "   reqId: " + this.f2718d.dq().el());
            } catch (Throwable unused) {
            }
        }

        public void dq(ds dsVar) {
            this.f2718d = dsVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            d();
        }
    }

    public static class dq {
        boolean dq = true;

        /* renamed from: d, reason: collision with root package name */
        long f2719d = 0;
        long ox = 0;
        long p = 0;
    }

    private dq d(String str) {
        dq dqVar = new dq();
        if (TextUtils.isEmpty(str)) {
            return dqVar;
        }
        com.bytedance.sdk.component.mn.dq iw = iw();
        long d2 = iw.d("expiration".concat(String.valueOf(str)), 0L);
        long d3 = iw.d("update".concat(String.valueOf(str)), 0L);
        long currentTimeMillis = System.currentTimeMillis() / 1000;
        dqVar.dq = currentTimeMillis < d3 || currentTimeMillis >= d2;
        dqVar.f2719d = d3;
        dqVar.ox = d2;
        dqVar.p = currentTimeMillis;
        return dqVar;
    }

    private void dq(int i, long j) {
        com.bytedance.sdk.component.mn.dq iw = iw();
        iw.dq("expiration".concat(String.valueOf(i)), j);
        iw.dq("update".concat(String.valueOf(i)), System.currentTimeMillis() / 1000);
        iw.dq("has_ad_cache".concat(String.valueOf(i)), true);
    }

    private void dq(ds dsVar) {
        d dVar = this.iw;
        if (dVar == null) {
            this.iw = new d(dsVar);
        } else {
            dVar.dq(dsVar);
        }
        mn.dq(this.iw, 10);
    }

    private boolean dq(com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.mn mnVar, String str) {
        if (dq(str)) {
            return true;
        }
        if (mnVar != null) {
            mnVar.p(0);
            mnVar.d(1);
            mnVar.dq("no cache");
        }
        return false;
    }

    private com.bytedance.sdk.component.mn.dq iw() {
        if (this.mn == null) {
            this.mn = n.dq("tt_splash");
        }
        return this.mn;
    }

    private boolean ox(final String str) {
        final dq d2 = d(str);
        if (d2.dq) {
            ig.dq().mn(new com.bytedance.sdk.openadsdk.no.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.component.splash.dq.p.1
                @Override // com.bytedance.sdk.openadsdk.no.dq.dq
                public com.bytedance.sdk.openadsdk.core.gh.dq.dq dq() throws Exception {
                    dq dqVar = d2;
                    long j = dqVar.p - dqVar.f2719d;
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.putOpt("available_type", 0);
                    jSONObject.putOpt("creative_timeout_duration", Long.valueOf(j / 3600));
                    return com.bytedance.sdk.openadsdk.core.gh.dq.ox.d().dq(4).ox(str).d(jSONObject.toString());
                }
            });
        }
        return d2.dq;
    }

    private void p(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.iw.dq.dq("lqmt", "清除缓存： rit: ".concat(String.valueOf(str)));
        com.bytedance.sdk.component.mn.dq iw = iw();
        this.ia.dq("materialMeta".concat(String.valueOf(str)));
        if (iw != null) {
            iw.dq("has_ad_cache".concat(String.valueOf(str)));
            iw.dq("expiration".concat(String.valueOf(str)));
        }
    }

    private com.bytedance.sdk.openadsdk.core.r.dq s(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String d2 = this.ia.d("materialMeta".concat(String.valueOf(str)), (String) null);
        if (!TextUtils.isEmpty(d2)) {
            try {
                ji.dq dq2 = ji.dq.dq(new JSONObject(d2));
                if (dq2 != null) {
                    com.bytedance.sdk.openadsdk.core.r.dq dqVar = dq2.ia;
                    if (dqVar != null) {
                        return dqVar;
                    }
                }
            } catch (JSONException unused) {
            }
        }
        return null;
    }

    public static void s() {
        wp.d().bn();
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.splash.dq.dq
    public void d() {
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x003f A[Catch: all -> 0x004d, TryCatch #1 {all -> 0x004d, blocks: (B:28:0x0020, B:30:0x0026, B:32:0x0030, B:15:0x003f, B:16:0x0042, B:24:0x004f), top: B:27:0x0020 }] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:23:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x004f A[Catch: all -> 0x004d, TRY_LEAVE, TryCatch #1 {all -> 0x004d, blocks: (B:28:0x0020, B:30:0x0026, B:32:0x0030, B:15:0x003f, B:16:0x0042, B:24:0x004f), top: B:27:0x0020 }] */
    @Override // com.bytedance.sdk.openadsdk.core.component.splash.dq.dq
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void dq(com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.mn mnVar, String str, dq.InterfaceC0152dq interfaceC0152dq) {
        com.bytedance.sdk.openadsdk.core.r.dq s;
        iw iwVar;
        j jVar;
        if (TextUtils.isEmpty(str) || interfaceC0152dq == null) {
            return;
        }
        if (!dq(mnVar, str)) {
            interfaceC0152dq.dq();
            return;
        }
        iw iwVar2 = null;
        try {
            s = s(str);
            iwVar = new iw(s, true);
        } catch (Throwable unused) {
        }
        if (s != null) {
            if (s.d() != null && !s.d().isEmpty()) {
                jVar = s.d().get(0);
                if (jVar != null) {
                    iwVar.dq(jVar);
                }
                if (com.bytedance.sdk.openadsdk.core.live.d.dq().ox(jVar) == 3) {
                    iwVar.dq((j) null);
                    interfaceC0152dq.dq(iwVar2);
                    if (com.bytedance.sdk.openadsdk.core.ox.p.dq().bl()) {
                        return;
                    }
                    p(str);
                    return;
                }
                iwVar2 = iwVar;
                interfaceC0152dq.dq(iwVar2);
                if (com.bytedance.sdk.openadsdk.core.ox.p.dq().bl()) {
                }
            }
        }
        jVar = null;
        if (jVar != null) {
        }
        if (com.bytedance.sdk.openadsdk.core.live.d.dq().ox(jVar) == 3) {
        }
        iwVar2 = iwVar;
        interfaceC0152dq.dq(iwVar2);
        if (com.bytedance.sdk.openadsdk.core.ox.p.dq().bl()) {
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.splash.dq.dq
    public void dq(com.bytedance.sdk.openadsdk.core.component.splash.ox.ox.p<com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.kk, com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.mn> pVar, j jVar, com.bytedance.sdk.openadsdk.f.d.ox.d dVar, boolean z) {
        if (jVar == null) {
            return;
        }
        if (z) {
            this.ia.dq("net_ad_already_shown", jVar.el());
        }
        if (this.s.get()) {
            return;
        }
        String d2 = this.ia.d("net_ad_save_success" + c.kk(jVar), "");
        if (TextUtils.isEmpty(d2) || !d2.equals(jVar.el())) {
            return;
        }
        this.s.set(true);
        com.bytedance.sdk.openadsdk.core.iw.dq.dq("lqmt", "缓存reqId:  ".concat(d2));
        p(dVar != null ? dVar.mn() : null);
        if (pVar != null) {
            pVar.dq();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.splash.dq.dq
    public void dq(ds dsVar, com.bytedance.sdk.openadsdk.f.d.ox.d dVar, boolean z) {
        int dq2;
        if (dsVar != null && (dq2 = com.bytedance.sdk.openadsdk.core.component.splash.kk.dq(dsVar)) > 0) {
            dq(dq2, dsVar.dq().ix());
            dq(dsVar);
        }
    }

    public boolean dq(String str) {
        return (TextUtils.isEmpty(str) || !iw().d("has_ad_cache".concat(String.valueOf(str)), false) || ox(str)) ? false : true;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.splash.dq.dq
    public void ox() {
        try {
            n.dq("tt_materialMeta").d();
            n.dq("tt_splash").d();
        } catch (Throwable unused) {
        }
    }
}
