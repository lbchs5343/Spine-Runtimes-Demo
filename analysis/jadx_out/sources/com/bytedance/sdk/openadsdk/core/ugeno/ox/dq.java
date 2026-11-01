package com.bytedance.sdk.openadsdk.core.ugeno.ox;

import com.bytedance.sdk.component.adexpress.d.mp;
import g.dbw;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class dq extends mp {

    /* renamed from: d, reason: collision with root package name */
    private dbw f3611d;
    private JSONObject dq;
    private float ox;
    private float p;
    private boolean s;

    /* renamed from: com.bytedance.sdk.openadsdk.core.ugeno.ox.dq$dq, reason: collision with other inner class name */
    public static class C0191dq extends mp.dq {

        /* renamed from: d, reason: collision with root package name */
        private dbw f3612d;
        private JSONObject dq;
        private float ox;
        private float p;
        private boolean s;

        public C0191dq d(float f2) {
            this.p = f2;
            return this;
        }

        @Override // com.bytedance.sdk.component.adexpress.d.mp.dq
        /* renamed from: d, reason: merged with bridge method [inline-methods] */
        public dq dq() {
            return new dq(this);
        }

        public C0191dq dq(float f2) {
            this.ox = f2;
            return this;
        }

        public C0191dq dq(dbw dbwVar) {
            this.f3612d = dbwVar;
            return this;
        }

        public C0191dq p(boolean z) {
            this.s = z;
            return this;
        }

        public C0191dq s(JSONObject jSONObject) {
            this.dq = jSONObject;
            return this;
        }
    }

    public dq(C0191dq c0191dq) {
        super(c0191dq);
        this.dq = c0191dq.dq;
        this.f3611d = c0191dq.f3612d;
        this.ox = c0191dq.ox;
        this.p = c0191dq.p;
        this.s = c0191dq.s;
    }

    public JSONObject bl() {
        return this.dq;
    }

    public float h() {
        return this.ox;
    }

    public float ji() {
        return this.p;
    }

    public dbw n() {
        return this.f3611d;
    }

    public boolean op() {
        return this.s;
    }
}
