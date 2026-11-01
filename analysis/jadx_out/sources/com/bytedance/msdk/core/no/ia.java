package com.bytedance.msdk.core.no;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class ia {

    /* renamed from: d, reason: collision with root package name */
    private String f988d;
    private String dq;
    private JSONObject ia;
    private List<mn> iw;
    private double kk;
    private List<kk> mn;
    private double no;
    private int o;
    private String ox;
    private kk p;
    private dq s;

    public static class dq {

        /* renamed from: d, reason: collision with root package name */
        private List<no> f989d = new ArrayList();
        private String dq;

        public void dq(String str) {
            this.dq = str;
        }

        public void dq(List<no> list) {
            this.f989d = list;
        }
    }

    public int d() {
        return this.o;
    }

    public void d(String str) {
        try {
            this.no = Double.valueOf(str).doubleValue();
        } catch (Throwable unused) {
        }
    }

    public void d(List<mn> list) {
        this.iw = list;
    }

    public double dq() {
        return this.kk;
    }

    public void dq(int i) {
        this.o = i;
    }

    public void dq(dq dqVar) {
        this.s = dqVar;
    }

    public void dq(kk kkVar) {
        this.p = kkVar;
    }

    public void dq(String str) {
        try {
            this.kk = Double.valueOf(str).doubleValue();
        } catch (Throwable unused) {
        }
    }

    public void dq(List<kk> list) {
        this.mn = list;
    }

    public void dq(JSONObject jSONObject) {
        this.ia = jSONObject;
    }

    public boolean ia() {
        dq dqVar = this.s;
        return (dqVar == null || TextUtils.isEmpty(dqVar.dq)) ? false : true;
    }

    public String iw() {
        return this.ox;
    }

    public List<no> kk() {
        dq dqVar = this.s;
        if (dqVar == null) {
            return null;
        }
        return dqVar.f989d;
    }

    public JSONObject mn() {
        return this.ia;
    }

    public double ox() {
        return this.no;
    }

    public void ox(String str) {
        this.dq = str;
    }

    public List<kk> p() {
        return this.mn;
    }

    public void p(String str) {
        this.f988d = str;
    }

    public List<mn> s() {
        return this.iw;
    }

    public void s(String str) {
        this.ox = str;
    }
}
