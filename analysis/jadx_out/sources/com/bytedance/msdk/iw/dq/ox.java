package com.bytedance.msdk.iw.dq;

import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Pair;
import com.bytedance.msdk.ia.bl;
import com.bytedance.msdk.ia.e;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public abstract class ox {
    private com.bytedance.msdk.dq.dq.ox dq;

    /* renamed from: d, reason: collision with root package name */
    private final Set<String> f1110d = new CopyOnWriteArraySet();
    private final AtomicBoolean ox = new AtomicBoolean(false);

    private void d(com.bytedance.msdk.api.p.no noVar) {
        com.bytedance.msdk.core.no.dq dq = com.bytedance.msdk.core.dq.d().dq(d());
        if (noVar != null || dq != null || "pangle_custom".equals(d()) || MediationConstant.ADN_PANGLE.equals(d())) {
            ox(noVar);
        }
    }

    private synchronized void dq(com.bytedance.msdk.dq.dq.p pVar, Map<String, Object> map) {
        final long elapsedRealtime = SystemClock.elapsedRealtime();
        com.bytedance.msdk.dq.s.ox.dq("TMe", "--==--time: start " + d());
        pVar.dq(com.bytedance.msdk.core.dq.getContext(), map, new com.bytedance.msdk.dq.dq.ox() { // from class: com.bytedance.msdk.iw.dq.ox.1
            @Override // com.bytedance.msdk.dq.dq.ox
            public void dq() {
                if (ox.this.dq != null) {
                    ox.this.dq.dq();
                }
                if (TextUtils.equals(ox.this.d(), MediationConstant.ADN_PANGLE)) {
                    e.dq();
                }
                long elapsedRealtime2 = SystemClock.elapsedRealtime() - elapsedRealtime;
                com.bytedance.msdk.dq.s.ox.dq("TMe", "--==--time: " + ox.this.d() + ", ----==----- " + elapsedRealtime2);
                if (!ox.this.f1110d.contains(ox.this.d())) {
                    ox.this.f1110d.add(ox.this.d());
                    bl.ox(ox.this.d(), elapsedRealtime2);
                }
                com.bytedance.msdk.iw.d.dq.dq(ox.this.d(), (Pair<Boolean, String>) new Pair(Boolean.TRUE, ""));
            }

            @Override // com.bytedance.msdk.dq.dq.ox
            public void dq(com.bytedance.msdk.api.dq dqVar) {
                if (ox.this.dq != null) {
                    ox.this.dq.dq(dqVar);
                }
                if (dqVar != null) {
                    com.bytedance.msdk.iw.d.dq.dq(ox.this.d(), (Pair<Boolean, String>) new Pair(Boolean.FALSE, "errorCode = " + dqVar.dq + " errorMessage = " + dqVar.f756d));
                }
            }
        });
    }

    private synchronized void ox(com.bytedance.msdk.api.p.no noVar) {
        try {
            if (s()) {
                return;
            }
            String ox = ox();
            if (!TextUtils.isEmpty(ox)) {
                throw new Exception("adn init ".concat(String.valueOf(ox)));
            }
            Map<String, Object> dq = dq();
            if (dq == null) {
                throw new Exception("adn init getConfig() is null");
            }
            dq.put(MediationConstant.EXTRA_ADN_NAME, d());
            dq.put("q_x_c", Integer.valueOf(com.bytedance.msdk.mn.dq.dq.jy().iw()));
            dq.put("wf_q_x_c", Integer.valueOf(com.bytedance.msdk.mn.dq.dq.jy().mn()));
            com.bytedance.msdk.dq.dq.p dq2 = com.bytedance.msdk.iw.d.d.dq().dq(d(), noVar);
            if (dq2 == null) {
                throw new Exception("configuration is null");
            }
            dq(dq2, dq);
            p();
        } catch (Throwable th) {
            th.printStackTrace();
            com.bytedance.msdk.iw.d.dq.dq(d(), (Pair<Boolean, String>) new Pair(Boolean.FALSE, th.toString()));
        }
    }

    public abstract String d();

    public abstract Map<String, Object> dq();

    public void dq(com.bytedance.msdk.api.p.no noVar) {
        d(noVar);
    }

    public void dq(com.bytedance.msdk.api.p.no noVar, com.bytedance.msdk.dq.dq.ox oxVar) {
        this.dq = oxVar;
        d(noVar);
    }

    public synchronized void ia() {
        if (!s()) {
            iw();
        }
    }

    public void iw() {
        d((com.bytedance.msdk.api.p.no) null);
    }

    public com.bytedance.msdk.core.no.dq mn() {
        return com.bytedance.msdk.core.dq.d().dq(d());
    }

    public abstract String ox();

    public final synchronized void p() {
        this.ox.set(true);
    }

    public final synchronized boolean s() {
        return this.ox.get();
    }
}
