package com.bytedance.sdk.openadsdk.core.q.ox;

import android.os.SystemClock;
import com.bykv.vk.openvk.preload.geckox.ig.s;
import com.bytedance.sdk.component.o.kk;
import com.bytedance.sdk.openadsdk.core.gh.ig;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.h.mn;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class ox {

    /* renamed from: d, reason: collision with root package name */
    private String f3419d;
    public volatile d dq;
    private long iw;
    private AtomicInteger ox = new AtomicInteger(0);
    private AtomicInteger p = new AtomicInteger(0);
    private volatile boolean s = false;
    private boolean mn = false;

    public ox(String str) {
        this.f3419d = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(boolean z, long j, String str) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("channel", this.f3419d);
            if (z) {
                jSONObject.put("success", true);
                jSONObject.put(MediationConstant.EXTRA_DURATION, j);
            } else {
                jSONObject.put("success", false);
                jSONObject.put("errMsg", str);
            }
            ig.dq().mn(jSONObject);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
    }

    private void p() {
        this.p.set(3);
        if (mn.dq()) {
            com.bytedance.sdk.component.o.mn.d(new kk("gecko_preload") { // from class: com.bytedance.sdk.openadsdk.core.q.ox.ox.1
                @Override // java.lang.Runnable
                public void run() {
                    ox.this.s();
                }
            });
        } else {
            s();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s() {
        try {
            Object d2 = com.bytedance.sdk.openadsdk.core.q.d.dq().d();
            if (this.dq == null) {
                this.dq = com.bytedance.sdk.openadsdk.core.q.d.dq().dq(this.f3419d, d2);
            }
            if (this.dq == null) {
                this.ox.set(0);
                this.p.set(0);
                return;
            }
            com.bytedance.sdk.openadsdk.core.q.dq.dq dqVar = new com.bytedance.sdk.openadsdk.core.q.dq.dq(this.iw);
            if (!dqVar.dq()) {
                dq.dq().ox();
                if (!dqVar.dq()) {
                    this.p.set(0);
                    return;
                }
            }
            if (this.s) {
                this.p.set(0);
                return;
            }
            com.bytedance.sdk.openadsdk.core.q.d.dq().dq(this.dq, d2);
            if (this.dq.f3416d > 0) {
                this.dq.dq.size();
            }
            if (this.s) {
                d();
            } else {
                this.p.set(4);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void d() {
        if (this.dq != null) {
            this.dq.dq();
        }
        AtomicInteger atomicInteger = this.p;
        if (atomicInteger != null) {
            atomicInteger.set(0);
        }
    }

    public void dq(long j) {
        this.iw = j;
    }

    public void dq(j jVar) {
        if (this.ox.get() != 0) {
            return;
        }
        this.ox.set(1);
        final long elapsedRealtime = SystemClock.elapsedRealtime();
        com.bytedance.sdk.openadsdk.core.q.d.dq().dq(this.f3419d, new com.bykv.vk.openvk.preload.geckox.o.dq() { // from class: com.bytedance.sdk.openadsdk.core.q.ox.ox.2
            @Override // com.bykv.vk.openvk.preload.geckox.o.dq
            public void dq() {
                super.dq();
                if (ox.this.ox != null && ox.this.ox.get() == 1) {
                    ox.this.ox.set(2);
                    ox.this.dq();
                }
                ox.this.mn = false;
            }

            @Override // com.bykv.vk.openvk.preload.geckox.o.dq
            public void dq(s sVar) {
                super.dq(sVar);
                ox.this.mn = true;
            }

            @Override // com.bykv.vk.openvk.preload.geckox.o.dq
            public void dq(s sVar, Throwable th) {
                super.dq(sVar, th);
                ox.this.mn = true;
            }

            @Override // com.bykv.vk.openvk.preload.geckox.o.dq
            public void dq(String str, long j) {
                super.dq(str, j);
                long elapsedRealtime2 = SystemClock.elapsedRealtime();
                if (ox.this.ox != null && ox.this.ox.get() != 2) {
                    ox.this.ox.set(2);
                    ox.this.dq();
                }
                if (ox.this.mn) {
                    ox.this.dq(true, elapsedRealtime2 - elapsedRealtime, null);
                }
            }

            @Override // com.bykv.vk.openvk.preload.geckox.o.dq
            public void dq(String str, Throwable th) {
                super.dq(str, th);
                if (ox.this.ox != null && ox.this.ox.get() != 2) {
                    ox.this.ox.set(0);
                }
                ox.this.dq(false, -1L, th.getMessage());
            }
        }, jVar);
    }

    public void dq(boolean z, j jVar) {
        this.s = false;
        if (dq() || !z) {
            return;
        }
        dq(jVar);
    }

    public boolean dq() {
        if (this.s || this.p.get() != 0) {
            return false;
        }
        if (this.dq != null) {
            p();
            return true;
        }
        if (this.ox.get() != 2) {
            return false;
        }
        p();
        return true;
    }

    public void ox() {
        this.s = true;
        d();
    }
}
