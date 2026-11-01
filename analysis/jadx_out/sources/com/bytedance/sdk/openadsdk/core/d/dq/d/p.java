package com.bytedance.sdk.openadsdk.core.d.dq.d;

import android.content.Context;
import android.text.TextUtils;
import android.widget.Toast;
import com.bytedance.sdk.openadsdk.core.h;
import com.bytedance.sdk.openadsdk.core.le;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.q;
import com.bytedance.sdk.openadsdk.core.wp;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class p {

    /* renamed from: d, reason: collision with root package name */
    private final j f2783d;
    private Toast dq;
    private d iw;
    private final Context ox;
    private String p;
    private final AtomicBoolean s = new AtomicBoolean(true);

    public interface d {
        void dq();

        void dq(String str, boolean z);
    }

    public interface dq {
        void dq();
    }

    public p(j jVar, Context context) {
        this.f2783d = jVar;
        this.ox = context;
    }

    private void d(final q qVar) {
        if (qVar == null) {
            return;
        }
        try {
            wp.dq().dq(qVar.d(), new h.ox<com.bytedance.sdk.component.kk.d>() { // from class: com.bytedance.sdk.openadsdk.core.d.dq.d.p.3
                @Override // com.bytedance.sdk.openadsdk.core.h.ox
                public void dq(int i, String str) {
                    p.this.dq();
                    p.this.ox(qVar);
                }

                @Override // com.bytedance.sdk.openadsdk.core.h.ox
                public void dq(com.bytedance.sdk.component.kk.d dVar) {
                    if (dVar == null || !dVar.ia() || TextUtils.isEmpty(dVar.p())) {
                        p.this.dq();
                        p.this.ox(qVar);
                    } else {
                        try {
                            p.this.dq(new JSONObject(dVar.p()));
                        } catch (Throwable unused) {
                        }
                    }
                }
            });
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private void d(JSONObject jSONObject) {
        boolean optBoolean = jSONObject.optBoolean("is_apply_coupon");
        String optString = jSONObject.optString("error_type");
        if (optBoolean && "success".equals(optString)) {
            com.bytedance.sdk.openadsdk.core.ig.ox.d(this.f2783d, this.p, 1);
        } else if (optBoolean && "has_applied".equals(optString)) {
            com.bytedance.sdk.openadsdk.core.ig.ox.d(this.f2783d, this.p, 2);
        } else if (!optBoolean) {
            com.bytedance.sdk.openadsdk.core.ig.ox.d(this.f2783d, this.p, 3);
        }
        if (this.iw != null) {
            if (optBoolean && "success".equals(optString)) {
                this.iw.dq();
            } else {
                this.iw.dq(optString, optBoolean);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq() {
        com.bytedance.sdk.openadsdk.core.ig.ox.d(this.f2783d, this.p, 4);
        d dVar = this.iw;
        if (dVar != null) {
            dVar.dq("net_fail", false);
        }
    }

    private void dq(q qVar) {
        if (qVar == null || TextUtils.isEmpty(qVar.p())) {
            return;
        }
        final String p = qVar.p();
        com.bytedance.sdk.openadsdk.h.mn.dq(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.d.dq.d.p.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    p pVar = p.this;
                    pVar.dq = Toast.makeText(pVar.ox.getApplicationContext(), p, 0);
                    p.this.dq.setGravity(17, 0, 0);
                    p.this.dq.show();
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(JSONObject jSONObject) {
        try {
            if (jSONObject.has("is_apply_coupon")) {
                d(jSONObject);
            }
        } catch (Throwable unused) {
            dq();
        }
    }

    public static boolean dq(j jVar, boolean z) {
        q vr = jVar != null ? jVar.vr() : null;
        return vr != null && vr.dq(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ox(q qVar) {
        if (this.s.getAndSet(false)) {
            d(qVar);
        }
    }

    public int dq(final dq dqVar) {
        j jVar = this.f2783d;
        q vr = jVar != null ? jVar.vr() : null;
        dq(vr);
        d(vr);
        le.iw().postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.d.dq.d.p.1
            @Override // java.lang.Runnable
            public void run() {
                dq dqVar2 = dqVar;
                if (dqVar2 != null) {
                    dqVar2.dq();
                }
            }
        }, 500L);
        return 1;
    }

    public p dq(String str) {
        this.p = str;
        return this;
    }

    public void dq(d dVar) {
        this.iw = dVar;
    }
}
