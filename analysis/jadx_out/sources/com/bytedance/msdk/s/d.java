package com.bytedance.msdk.s;

import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class d {
    private static volatile d dq;

    /* renamed from: d, reason: collision with root package name */
    private List<dq> f1243d = new CopyOnWriteArrayList();

    public static class dq {

        /* renamed from: d, reason: collision with root package name */
        private JSONObject f1245d;
        private p dq;

        public dq(p pVar, JSONObject jSONObject) {
            this.dq = pVar;
            this.f1245d = jSONObject;
        }

        public JSONObject d() {
            return this.f1245d;
        }

        public p dq() {
            return this.dq;
        }
    }

    private d() {
    }

    public static d dq() {
        if (dq == null) {
            synchronized (d.class) {
                try {
                    if (dq == null) {
                        dq = new d();
                    }
                } finally {
                }
            }
        }
        return dq;
    }

    public List<dq> d() {
        return this.f1243d;
    }

    public void dq(p pVar, JSONObject jSONObject) {
        com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", "--==-- 保存到埋点辅助模块");
        this.f1243d.add(new dq(pVar, jSONObject));
    }

    public void ox() {
        com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", "--==-- 清空埋点辅助模块");
        List<dq> list = this.f1243d;
        if (list != null) {
            list.clear();
        }
    }
}
