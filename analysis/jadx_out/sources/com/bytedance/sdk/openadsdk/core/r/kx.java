package com.bytedance.sdk.openadsdk.core.r;

import android.text.TextUtils;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class kx {

    /* renamed from: d, reason: collision with root package name */
    private dq f3479d;
    private boolean dq;
    private d ox;
    private int p;

    public static class d {

        /* renamed from: d, reason: collision with root package name */
        dq f3480d;
        dq dq;

        public static class dq {

            /* renamed from: d, reason: collision with root package name */
            int f3481d;
            String dq;

            public dq(JSONObject jSONObject) {
                if (jSONObject == null) {
                    return;
                }
                this.dq = jSONObject.optString("entry");
                this.f3481d = jSONObject.optInt("displayAreaAndroid");
            }

            public boolean dq() {
                return !TextUtils.isEmpty(this.dq);
            }
        }

        public d(JSONObject jSONObject) {
            if (jSONObject == null) {
                return;
            }
            this.dq = new dq(jSONObject.optJSONObject("vertical"));
            this.f3480d = new dq(jSONObject.optJSONObject("horizontal"));
        }

        public int d() {
            dq dqVar = this.dq;
            if (dqVar != null) {
                return dqVar.f3481d;
            }
            dq dqVar2 = this.f3480d;
            if (dqVar2 != null) {
                return dqVar2.f3481d;
            }
            return 0;
        }

        public String dq(boolean z) {
            dq dqVar;
            if (z && (dqVar = this.dq) != null) {
                return dqVar.dq;
            }
            dq dqVar2 = this.f3480d;
            return dqVar2 != null ? dqVar2.dq : "";
        }

        public boolean dq() {
            dq dqVar = this.f3480d;
            if (dqVar != null && dqVar.dq()) {
                return true;
            }
            dq dqVar2 = this.dq;
            return dqVar2 != null && dqVar2.dq();
        }
    }

    public static class dq {

        /* renamed from: d, reason: collision with root package name */
        private String f3482d;
        private int dq;
        private String ia;
        private int iw;
        private int mn;
        private String ox;
        private int p;
        private int s;

        public dq(JSONObject jSONObject) {
            if (jSONObject == null) {
                return;
            }
            this.dq = jSONObject.optInt("displayAreaAndroid");
            this.f3482d = jSONObject.optString("ugen_md5");
            this.ox = jSONObject.optString("ugen_url");
            this.p = jSONObject.optInt("need_backup_convert_area", 0);
            this.s = jSONObject.optInt("min_height", 0);
            this.iw = jSONObject.optInt("min_width", 0);
            this.mn = jSONObject.optInt("min_ratio", 0);
            this.ia = jSONObject.optString("ugen_id");
        }

        public int d() {
            return this.dq;
        }

        public String dq() {
            return this.ia;
        }

        public boolean dq(int i, int i2) {
            int p = com.bytedance.sdk.openadsdk.core.ir.ce.p(com.bytedance.sdk.openadsdk.core.wp.getContext(), i);
            int p2 = com.bytedance.sdk.openadsdk.core.ir.ce.p(com.bytedance.sdk.openadsdk.core.wp.getContext(), i2);
            int i3 = this.iw;
            if (i3 != 0 && p < i3) {
                return false;
            }
            int i4 = this.s;
            if (i4 == 0 || p2 >= i4) {
                return p == 0 || p2 == 0 || ((float) p2) / ((float) p) >= ((float) this.mn);
            }
            return false;
        }

        public boolean iw() {
            return !TextUtils.isEmpty(this.ox);
        }

        public String ox() {
            return this.f3482d;
        }

        public String p() {
            return this.ox;
        }

        public boolean s() {
            return this.p == 1;
        }
    }

    public kx(JSONObject jSONObject) {
        this.dq = false;
        if (jSONObject == null) {
            return;
        }
        this.dq = jSONObject.optBoolean("use_interact_webview", false);
        JSONObject optJSONObject = jSONObject.optJSONObject("easy_playable_client");
        if (optJSONObject != null) {
            this.f3479d = new dq(optJSONObject.optJSONObject("components"));
        }
        JSONObject optJSONObject2 = jSONObject.optJSONObject("easy_playable");
        if (optJSONObject2 != null) {
            this.ox = new d(optJSONObject2.optJSONObject("components"));
        }
        this.p = jSONObject.optInt("style_category");
    }

    public static boolean d(j jVar) {
        kx mb;
        d dVar;
        return (jVar == null || (mb = jVar.mb()) == null || !mb.dq || (dVar = mb.ox) == null || !dVar.dq()) ? false : true;
    }

    public static boolean dq() {
        int i = com.bytedance.sdk.openadsdk.core.op.f3334d;
        return (i >= 6322 && i < 6400) || i >= 6406;
    }

    public static boolean dq(j jVar) {
        kx mb;
        dq dqVar;
        return (jVar == null || (mb = jVar.mb()) == null || (dqVar = mb.f3479d) == null || !dqVar.iw()) ? false : true;
    }

    public static dq iw(j jVar) {
        kx mb;
        if (jVar == null || (mb = jVar.mb()) == null) {
            return null;
        }
        return mb.f3479d;
    }

    public static String ox(j jVar) {
        kx mb;
        dq dqVar;
        if (jVar == null || (mb = jVar.mb()) == null || (dqVar = mb.f3479d) == null) {
            return null;
        }
        return dqVar.dq();
    }

    public static int p(j jVar) {
        if (jVar == null) {
            return 0;
        }
        return jVar.mb().p;
    }

    public static d s(j jVar) {
        kx mb;
        if (jVar == null || (mb = jVar.mb()) == null) {
            return null;
        }
        return mb.ox;
    }
}
