package com.bytedance.sdk.openadsdk.core.r;

import android.graphics.Color;
import android.text.TextUtils;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class ha {

    /* renamed from: d, reason: collision with root package name */
    private String f3445d;
    private int dq;
    private int ia;
    private d ig;
    private int iw;
    private int jy;
    private int mn;
    private int mp;
    private d no;
    private int p;
    private dq q;
    private int s;
    private boolean ox = false;
    private String kk = "#008DEA";
    private String o = "点击查看";

    public class d {
        int dq;

        public d(JSONObject jSONObject, int i) {
            this.dq = 14;
            if (jSONObject == null) {
                return;
            }
            this.dq = jSONObject.optInt("font_size", i);
        }

        public int d() {
            return this.dq;
        }

        public JSONObject dq() {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("font_size", this.dq);
            } catch (Exception unused) {
            }
            return jSONObject;
        }
    }

    public class dq {

        /* renamed from: d, reason: collision with root package name */
        int f3447d;
        int dq;
        int ox;
        int p;

        public dq(JSONObject jSONObject, int i) {
            this.dq = 30;
            this.f3447d = 30;
            this.ox = 150;
            this.p = 40;
            if (jSONObject == null) {
                if (i == 2) {
                    this.ox = 40;
                    this.p = 20;
                    return;
                }
                return;
            }
            int optInt = jSONObject.optInt("left_margin", 30);
            this.dq = optInt;
            if (optInt < 0 || optInt > ha.this.fw()) {
                this.dq = 30;
            }
            int optInt2 = jSONObject.optInt("right_margin", 30);
            this.f3447d = optInt2;
            if (optInt2 < 0 || optInt2 > ha.this.fw()) {
                this.f3447d = 30;
            }
            if (i == 2) {
                int optInt3 = jSONObject.optInt("top_margin", 40);
                this.ox = optInt3;
                if (optInt3 < 0 || optInt3 > ha.this.f()) {
                    this.ox = 40;
                }
                int optInt4 = jSONObject.optInt("bottom_margin", 20);
                this.p = optInt4;
                if (optInt4 < 0 || optInt4 > ha.this.f()) {
                    this.p = 20;
                    return;
                }
                return;
            }
            int optInt5 = jSONObject.optInt("top_margin", 150);
            this.ox = optInt5;
            if (optInt5 < 0 || optInt5 > ha.this.f()) {
                this.ox = 150;
            }
            int optInt6 = jSONObject.optInt("bottom_margin", 40);
            this.p = optInt6;
            if (optInt6 < 0 || optInt6 > ha.this.f()) {
                this.p = 40;
            }
        }

        public int d() {
            return this.f3447d;
        }

        public int dq() {
            return this.dq;
        }

        public int ox() {
            return this.ox;
        }

        public int p() {
            return this.p;
        }

        public JSONObject s() {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("left_margin", 30);
                jSONObject.put("right_margin", 30);
                jSONObject.put("top_margin", 150);
                jSONObject.put("bottom_margin", 40);
            } catch (Exception unused) {
            }
            return jSONObject;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int f() {
        return com.bytedance.sdk.openadsdk.core.ir.ce.p(com.bytedance.sdk.openadsdk.core.wp.getContext(), com.bytedance.sdk.openadsdk.core.ir.ce.s(com.bytedance.sdk.openadsdk.core.wp.getContext()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int fw() {
        return com.bytedance.sdk.openadsdk.core.ir.ce.p(com.bytedance.sdk.openadsdk.core.wp.getContext(), com.bytedance.sdk.openadsdk.core.ir.ce.p(com.bytedance.sdk.openadsdk.core.wp.getContext()));
    }

    public String d() {
        if (this.p == 4 && !com.bytedance.sdk.openadsdk.core.no.ia().dq(com.bytedance.sdk.openadsdk.core.wp.getContext())) {
            this.f3445d = "点击跳转至详情页或第三方应用";
        } else if (this.p == 7 && !com.bytedance.sdk.openadsdk.core.no.ia().d(com.bytedance.sdk.openadsdk.core.wp.getContext())) {
            this.f3445d = "点击跳转至详情页或第三方应用";
        }
        return this.f3445d;
    }

    public void d(int i) {
        this.s = i;
    }

    public void d(String str) {
        try {
            Color.parseColor(str);
            this.kk = str;
        } catch (Throwable unused) {
            this.kk = "#008DEA";
        }
    }

    public void d(JSONObject jSONObject) {
        this.ig = new d(jSONObject, 20);
    }

    public int dq() {
        return this.dq;
    }

    public void dq(int i) {
        this.dq = i;
    }

    public void dq(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.f3445d = str;
            return;
        }
        this.ox = true;
        int i = this.p;
        if (i == 3) {
            this.f3445d = "跳转至详情页或第三方应用";
            return;
        }
        if (i == 4) {
            this.f3445d = "前往详情页或第三方应用";
        } else if (i == 5 || i == 7) {
            this.f3445d = "前往详情页或第三方应用";
        } else {
            this.f3445d = "点击跳转至详情页或第三方应用";
        }
    }

    public void dq(JSONObject jSONObject) {
        this.no = new d(jSONObject, 14);
    }

    public void dq(JSONObject jSONObject, int i) {
        this.q = new dq(jSONObject, i);
    }

    public int ia() {
        return this.jy;
    }

    public void ia(int i) {
        if (i <= 0 || i >= f()) {
            this.mp = 5;
        } else {
            this.mp = i;
        }
    }

    public d ig() {
        return this.no;
    }

    public int iw() {
        return this.mn;
    }

    public void iw(int i) {
        this.jy = i;
    }

    public int jy() {
        return this.mp;
    }

    public int kk() {
        if (this.p == 4 && !com.bytedance.sdk.openadsdk.core.no.ia().dq(com.bytedance.sdk.openadsdk.core.wp.getContext())) {
            this.p = 0;
        } else if (this.p == 7 && !com.bytedance.sdk.openadsdk.core.no.ia().d(com.bytedance.sdk.openadsdk.core.wp.getContext())) {
            this.p = 0;
        }
        return this.p;
    }

    public int mn() {
        return this.ia;
    }

    public void mn(int i) {
        this.p = i;
    }

    public d mp() {
        return this.ig;
    }

    public String no() {
        return this.o;
    }

    public String o() {
        return this.kk;
    }

    public void ox(int i) {
        this.iw = i;
    }

    public void ox(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.o = str;
            return;
        }
        int i = this.p;
        if (i == 7) {
            this.o = "扭动手机";
        } else if (i == 5) {
            this.o = "向上滑动";
        } else if (i == 4) {
            this.o = "摇一摇";
        }
    }

    public boolean ox() {
        return this.ox;
    }

    public int p() {
        return this.s;
    }

    public void p(int i) {
        this.mn = i;
    }

    public dq q() {
        return this.q;
    }

    public int s() {
        return this.iw;
    }

    public void s(int i) {
        this.ia = i;
    }
}
