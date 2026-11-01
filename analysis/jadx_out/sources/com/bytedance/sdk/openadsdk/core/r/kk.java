package com.bytedance.sdk.openadsdk.core.r;

import android.util.SparseArray;
import com.bykv.vk.component.ttvideo.player.MediaFormat;
import com.bytedance.sdk.openadsdk.core.d.p;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import g.abn;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class kk {
    private final String cd;

    /* renamed from: d, reason: collision with root package name */
    private final int[] f3473d;
    private final int[] dq;

    /* renamed from: e, reason: collision with root package name */
    private String f3474e;

    /* renamed from: f, reason: collision with root package name */
    private final float f3475f;
    private final int fw;
    private final String gh;
    private final String i;
    private final float ia;
    private final int ig;
    private final float iw;
    private final int jy;
    private int k;
    private final long kk;
    private int kx;
    private SparseArray<p.dq> le;
    private final float mn;
    private final int mp;
    private final int no;
    private final long o;
    private final int[] ox;
    private final int[] p;
    private final float q;
    private final String r;
    private final float s;
    private int wp;

    public static class dq {
        private int cd;

        /* renamed from: d, reason: collision with root package name */
        int f3476d;
        float dq;

        /* renamed from: e, reason: collision with root package name */
        private String f3477e;
        private SparseArray<p.dq> fw;
        private String gh;
        private String i;
        private int[] ig;
        private String le;
        private int[] mp;
        private int[] no;
        private int[] o;
        float ox;
        private String r;
        private long p = -1;
        private long s = -1;
        private float iw = -1.0f;
        private float mn = -1.0f;
        private float ia = -1.0f;
        private float kk = -1.0f;
        private int q = -1;
        private int jy = -1;

        /* renamed from: f, reason: collision with root package name */
        private int f3478f = -1024;
        private int k = -1;
        private int wp = -1;
        private int kx = -1;

        public dq d(float f2) {
            this.ox = f2;
            return this;
        }

        public dq d(int i) {
            this.cd = i;
            return this;
        }

        public dq d(long j) {
            this.s = j;
            return this;
        }

        public dq d(String str) {
            this.r = str;
            return this;
        }

        public dq d(int[] iArr) {
            this.no = iArr;
            return this;
        }

        public dq dq(float f2) {
            this.dq = f2;
            return this;
        }

        public dq dq(int i) {
            this.f3476d = i;
            return this;
        }

        public dq dq(long j) {
            this.p = j;
            return this;
        }

        public dq dq(SparseArray<p.dq> sparseArray) {
            this.fw = sparseArray;
            return this;
        }

        public dq dq(String str) {
            this.gh = str;
            return this;
        }

        public dq dq(int[] iArr) {
            this.o = iArr;
            return this;
        }

        public kk dq() {
            return new kk(this);
        }

        public dq ia(int i) {
            this.kx = i;
            return this;
        }

        public dq iw(float f2) {
            this.kk = f2;
            return this;
        }

        public dq iw(int i) {
            this.k = i;
            return this;
        }

        public dq mn(int i) {
            this.wp = i;
            return this;
        }

        public dq ox(float f2) {
            this.iw = f2;
            return this;
        }

        public dq ox(int i) {
            this.q = i;
            return this;
        }

        public dq ox(String str) {
            this.i = str;
            return this;
        }

        public dq ox(int[] iArr) {
            this.ig = iArr;
            return this;
        }

        public dq p(float f2) {
            this.mn = f2;
            return this;
        }

        public dq p(int i) {
            this.jy = i;
            return this;
        }

        public dq p(String str) {
            this.le = str;
            return this;
        }

        public dq p(int[] iArr) {
            this.mp = iArr;
            return this;
        }

        public dq s(float f2) {
            this.ia = f2;
            return this;
        }

        public dq s(int i) {
            this.f3478f = i;
            return this;
        }

        public dq s(String str) {
            this.f3477e = str;
            return this;
        }
    }

    private kk(dq dqVar) {
        this.wp = -1;
        this.kx = -1;
        this.dq = dqVar.no;
        this.f3473d = dqVar.ig;
        this.p = dqVar.mp;
        this.ox = dqVar.o;
        this.s = dqVar.kk;
        this.iw = dqVar.ia;
        this.mn = dqVar.mn;
        this.ia = dqVar.iw;
        this.kk = dqVar.s;
        this.o = dqVar.p;
        this.no = dqVar.q;
        this.ig = dqVar.jy;
        this.mp = dqVar.f3478f;
        this.q = dqVar.dq;
        this.cd = dqVar.gh;
        this.gh = dqVar.r;
        this.i = dqVar.le;
        this.r = dqVar.i;
        this.jy = dqVar.f3476d;
        this.f3475f = dqVar.ox;
        this.fw = dqVar.cd;
        this.le = dqVar.fw;
        this.k = dqVar.k;
        this.wp = dqVar.wp;
        this.f3474e = dqVar.f3477e;
        this.kx = dqVar.kx;
    }

    public JSONObject dq() {
        JSONObject jSONObject = new JSONObject();
        try {
            int[] iArr = this.dq;
            if (iArr != null && iArr.length == 2) {
                jSONObject.putOpt("ad_x", Integer.valueOf(iArr[0])).putOpt("ad_y", Integer.valueOf(this.dq[1]));
            }
            int[] iArr2 = this.f3473d;
            if (iArr2 != null && iArr2.length == 2) {
                jSONObject.putOpt(MediaFormat.KEY_WIDTH, Integer.valueOf(iArr2[0])).putOpt(MediaFormat.KEY_HEIGHT, Integer.valueOf(this.f3473d[1]));
            }
            int[] iArr3 = this.ox;
            if (iArr3 != null && iArr3.length == 2) {
                jSONObject.putOpt("button_x", Integer.valueOf(iArr3[0])).putOpt("button_y", Integer.valueOf(this.ox[1]));
            }
            int[] iArr4 = this.p;
            if (iArr4 != null && iArr4.length == 2) {
                jSONObject.putOpt("button_width", Integer.valueOf(iArr4[0])).putOpt("button_height", Integer.valueOf(this.p[1]));
            }
            JSONObject jSONObject2 = new JSONObject();
            JSONArray jSONArray = new JSONArray();
            if (this.le != null) {
                for (int i = 0; i < this.le.size(); i++) {
                    p.dq valueAt = this.le.valueAt(i);
                    if (valueAt != null) {
                        JSONObject jSONObject3 = new JSONObject();
                        jSONObject3.putOpt(TTDownloadField.TT_FORCE, Double.valueOf(valueAt.ox)).putOpt("mr", Double.valueOf(valueAt.f2798d)).putOpt("phase", Integer.valueOf(valueAt.dq)).putOpt("ts", Long.valueOf(valueAt.p));
                        jSONArray.put(jSONObject3);
                    }
                }
            }
            jSONObject2.putOpt("ftc", Integer.valueOf(this.fw)).putOpt("info", jSONArray);
            jSONObject.putOpt("down_x", Float.toString(this.s)).putOpt("down_y", Float.toString(this.iw)).putOpt("up_x", Float.toString(this.mn)).putOpt("up_y", Float.toString(this.ia)).putOpt("down_time", Long.valueOf(this.kk)).putOpt("up_time", Long.valueOf(this.o)).putOpt("toolType", Integer.valueOf(this.no)).putOpt("deviceId", Integer.valueOf(this.ig)).putOpt(abn.EXTRA_SOURCE, Integer.valueOf(this.mp)).putOpt("density", Float.valueOf(this.q)).putOpt("densityDpi", Integer.valueOf(this.jy)).putOpt("scaleDensity", Float.valueOf(this.f3475f)).putOpt("ft", jSONObject2).putOpt("click_area_type", this.cd).putOpt("areaType", this.gh).putOpt("rectInfo", this.i).putOpt("click_area_id", this.r);
            int i2 = this.k;
            if (i2 != -1) {
                jSONObject.putOpt("if_shake", Integer.valueOf(i2));
            }
            int i3 = this.wp;
            if (i3 != -1) {
                jSONObject.putOpt("if_twist", Integer.valueOf(i3));
            }
            int i4 = this.kx;
            if (i4 != -1) {
                jSONObject.putOpt("dpa_position", Integer.valueOf(i4)).putOpt("dpa_pid", this.f3474e);
            }
        } catch (Exception unused) {
        }
        return jSONObject;
    }
}
