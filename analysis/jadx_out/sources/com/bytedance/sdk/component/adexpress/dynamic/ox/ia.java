package com.bytedance.sdk.component.adexpress.dynamic.ox;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class ia {

    /* renamed from: d, reason: collision with root package name */
    private float f1752d;
    private String dq;
    private float ia;
    private List<List<ia>> ig;
    private float iw;
    private s kk;
    private float mn;
    private String mp;
    private ia no;
    private List<ia> o;
    private float ox;
    private float p;
    private boolean q;
    private float s;
    private Map<String, String> jy = new HashMap();

    /* renamed from: f, reason: collision with root package name */
    private Map<Integer, String> f1753f = new HashMap();

    public boolean cd() {
        List<ia> list = this.o;
        return list == null || list.size() <= 0;
    }

    public Map<Integer, String> d() {
        return this.f1753f;
    }

    public void d(float f2) {
        this.s = f2;
    }

    public void d(String str) {
        this.dq = str;
    }

    public void d(List<List<ia>> list) {
        this.ig = list;
    }

    public String dq() {
        return this.mp;
    }

    public String dq(int i) {
        StringBuilder sb = new StringBuilder();
        sb.append(this.kk.getType());
        sb.append(":");
        sb.append(this.dq);
        if (this.kk.s() != null) {
            sb.append(":");
            sb.append(this.kk.s().g());
        }
        sb.append(":");
        sb.append(i);
        return sb.toString();
    }

    public void dq(float f2) {
        this.p = f2;
    }

    public void dq(ia iaVar) {
        this.no = iaVar;
    }

    public void dq(s sVar) {
        this.kk = sVar;
    }

    public void dq(String str) {
        this.mp = str;
    }

    public void dq(String str, String str2) {
        this.jy.put(str, str2);
    }

    public void dq(List<ia> list) {
        this.o = list;
    }

    public void dq(JSONArray jSONArray) {
        if (jSONArray != null) {
            try {
                if (jSONArray.length() == 0) {
                    return;
                }
                for (int i = 0; i < jSONArray.length(); i++) {
                    JSONObject optJSONObject = jSONArray.optJSONObject(i);
                    this.f1753f.put(Integer.valueOf(optJSONObject.optInt(TTDownloadField.TT_ID)), optJSONObject.optString("value"));
                }
            } catch (Throwable unused) {
            }
        }
    }

    public void dq(boolean z) {
        this.q = z;
    }

    public float f() {
        iw s = this.kk.s();
        return (s.ig() * 2.0f) + s.q() + s.fw() + q();
    }

    public List<List<ia>> fw() {
        return this.ig;
    }

    public boolean gh() {
        return this.q;
    }

    public void i() {
        List<List<ia>> list = this.ig;
        if (list == null || list.size() <= 0) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (List<ia> list2 : this.ig) {
            if (list2 != null && list2.size() > 0) {
                arrayList.add(list2);
            }
        }
        this.ig = arrayList;
    }

    public float ia() {
        return this.iw;
    }

    public ia ig() {
        return this.no;
    }

    public float iw() {
        return this.f1752d;
    }

    public void iw(float f2) {
        this.mn = f2;
    }

    public float jy() {
        iw s = this.kk.s();
        return (s.ig() * 2.0f) + s.f() + s.jy() + mp();
    }

    public String k() {
        return this.kk.s().k();
    }

    public float kk() {
        return this.mn;
    }

    public boolean le() {
        return TextUtils.equals(this.kk.s().ji(), "flex");
    }

    public float mn() {
        return this.ox;
    }

    public void mn(float f2) {
        this.ia = f2;
    }

    public int mp() {
        iw s = this.kk.s();
        return s.uh() + s.by();
    }

    public List<ia> no() {
        return this.o;
    }

    public s o() {
        return this.kk;
    }

    public String ox() {
        return this.dq;
    }

    public void ox(float f2) {
        this.f1752d = f2;
    }

    public void ox(String str) {
        this.kk.s().iw(str);
    }

    public float p() {
        return this.p;
    }

    public void p(float f2) {
        this.ox = f2;
    }

    public int q() {
        iw s = this.kk.s();
        return s.gx() + s.t();
    }

    public Map<String, String> r() {
        return this.jy;
    }

    public float s() {
        return this.s;
    }

    public void s(float f2) {
        this.iw = f2;
    }

    public String toString() {
        return "DynamicLayoutUnit{id='" + this.dq + "', x=" + this.f1752d + ", y=" + this.ox + ", width=" + this.iw + ", height=" + this.mn + ", remainWidth=" + this.ia + ", rootBrick=" + this.kk + ", childrenBrickUnits=" + this.o + '}';
    }

    public boolean wp() {
        return this.kk.s().wi() < 0 || this.kk.s().cc() < 0 || this.kk.s().m() < 0 || this.kk.s().xv() < 0;
    }
}
