package com.bytedance.sdk.component.no.dq;

import android.text.TextUtils;
import com.bytedance.sdk.component.no.p.ox;
import com.bytedance.sdk.component.no.p.p;
import com.bytedance.sdk.component.no.p.s;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class d implements p {

    /* renamed from: d, reason: collision with root package name */
    private JSONObject f2008d;
    private String dq;
    private int iw;
    private Map<String, Object> ox;
    private ox p;
    private com.bytedance.sdk.component.no.dq.dq s;

    public static class dq {

        /* renamed from: d, reason: collision with root package name */
        private String f2009d;
        private int dq = 1;
        private ox iw;
        private JSONObject mn;
        private StringBuilder ox;
        private JSONObject p;
        private Map<String, Object> s;

        public dq(String str) {
            this.f2009d = str;
        }

        public dq d(JSONObject jSONObject) {
            this.mn = jSONObject;
            return this;
        }

        public dq dq(ox oxVar) {
            this.iw = oxVar;
            return this;
        }

        public dq dq(Map<String, Object> map) {
            this.s = map;
            return this;
        }

        public dq dq(JSONObject jSONObject) {
            this.p = jSONObject;
            return this;
        }

        public d dq() {
            return new d(this);
        }
    }

    private d(dq dqVar) {
        this.iw = 1;
        this.iw = dqVar.dq;
        if (dqVar.dq == 2) {
            this.s = new com.bytedance.sdk.component.no.dq.dq(dqVar.ox, dqVar.p, (Map<String, Object>) dqVar.s);
            this.iw = 2;
        } else {
            this.dq = dqVar.f2009d;
            if (dqVar.mn != null) {
                com.bytedance.sdk.component.no.ox.d.INSTANCE.dq(dqVar.mn);
            }
        }
        this.f2008d = dqVar.p;
        this.ox = dqVar.s;
        this.p = dqVar.iw;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(com.bytedance.sdk.component.no.ox.dq dqVar, Map<String, Object> map) {
        if (dqVar == null) {
            return;
        }
        if (map == null) {
            map = new HashMap<>();
        }
        com.bytedance.sdk.component.no.dq.dq dqVar2 = new com.bytedance.sdk.component.no.dq.dq(dqVar, this.f2008d, map);
        dqVar2.dq(this.dq);
        dqVar2.dq(this);
        ox oxVar = this.p;
        if (oxVar != null) {
            oxVar.dq(dqVar2);
        }
        dqVar2.iw();
        for (com.bytedance.sdk.component.no.ox.dq dqVar3 : com.bytedance.sdk.component.no.ox.d.INSTANCE.dq(this.dq).ox(dqVar, dqVar2.ox(), map)) {
            if (dqVar3 != null) {
                dq(dqVar3, map);
            }
        }
    }

    @Override // com.bytedance.sdk.component.no.p.p
    public s d() {
        return new s() { // from class: com.bytedance.sdk.component.no.dq.d.1
            @Override // com.bytedance.sdk.component.no.p.s
            public void d(com.bytedance.sdk.component.no.dq.dq dqVar, Map<String, Object> map) {
                Iterator<com.bytedance.sdk.component.no.ox.dq> it = com.bytedance.sdk.component.no.ox.d.INSTANCE.dq(d.this.dq).d(dqVar.mn(), dqVar.ox(), map).iterator();
                while (it.hasNext()) {
                    d.this.dq(it.next(), map);
                }
            }

            @Override // com.bytedance.sdk.component.no.p.s
            public void dq(com.bytedance.sdk.component.no.dq.dq dqVar, Map<String, Object> map) {
                Iterator<com.bytedance.sdk.component.no.ox.dq> it = com.bytedance.sdk.component.no.ox.d.INSTANCE.dq(d.this.dq).dq(dqVar.mn(), dqVar.ox(), map).iterator();
                while (it.hasNext()) {
                    d.this.dq(it.next(), map);
                }
            }
        };
    }

    public void dq() {
        com.bytedance.sdk.component.no.ox.ox dq2;
        if (this.iw == 2) {
            ox oxVar = this.p;
            if (oxVar != null) {
                oxVar.dq(this.s);
            }
            this.s.iw();
            return;
        }
        if (TextUtils.isEmpty(this.dq) || (dq2 = com.bytedance.sdk.component.no.ox.d.INSTANCE.dq(this.dq)) == null) {
            return;
        }
        dq(dq2.dq(), this.ox);
    }
}
