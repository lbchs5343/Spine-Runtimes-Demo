package com.bytedance.msdk.api.p.dq.d.ia;

import android.view.View;
import com.bytedance.msdk.api.p.jy;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class dq extends com.bytedance.msdk.api.p.dq.d.d.dq {
    private double cd;

    /* renamed from: d, reason: collision with root package name */
    private String f767d;

    /* renamed from: f, reason: collision with root package name */
    private int f768f;
    private com.bytedance.msdk.api.p.dq.mn.d fw;
    private jy gh;
    private String ia;
    private double ig;
    private int iw;
    private int jy;
    private int kk;
    private int mn;
    private List<String> mp;
    private String no;
    private int o;
    private String ox;
    private String p;
    private String q;
    private String s;

    public dq() {
        jy jyVar = new jy() { // from class: com.bytedance.msdk.api.p.dq.d.ia.dq.1
            @Override // com.bytedance.msdk.api.p.jy
            public void dq(boolean z, double d2, int i, Map<String, Object> map) {
                dq.this.dq(z, d2, i, map);
            }
        };
        this.gh = jyVar;
        com.bytedance.msdk.api.p.dq.d.ox oxVar = this.dq;
        if (oxVar != null) {
            oxVar.dq(jyVar);
        }
    }

    public int bl() {
        return this.iw;
    }

    public String c() {
        return this.no;
    }

    public double ce() {
        return this.ig;
    }

    public View d() {
        return null;
    }

    public void d(double d2) {
        this.cd = d2;
    }

    public void d(int i) {
        this.iw = i;
    }

    public void d(String str) {
        this.ox = str;
    }

    public final void dq(mn mnVar) {
        com.bytedance.msdk.api.p.dq.d.ox oxVar = this.dq;
        if (oxVar == null || mnVar == null) {
            return;
        }
        oxVar.dq(mnVar);
    }

    public void dq(com.bytedance.msdk.api.p.dq.mn.d dVar) {
        this.fw = dVar;
    }

    public void dq(String str) {
        this.f767d = str;
    }

    public void dq(List<String> list) {
        this.mp = list;
    }

    public void dq(boolean z) {
        com.bytedance.msdk.api.p.dq.d.ox oxVar = this.dq;
        if (oxVar != null) {
            oxVar.mn(z);
        }
    }

    public void dq(boolean z, double d2, int i, Map<String, Object> map) {
    }

    public String e() {
        return this.f767d;
    }

    public List<String> er() {
        return this.mp;
    }

    public String h() {
        return this.p;
    }

    public int ir() {
        return this.o;
    }

    public void iw(int i) {
        this.jy = i;
    }

    public void iw(String str) {
        this.no = str;
    }

    public int j() {
        return this.jy;
    }

    public String ji() {
        return this.s;
    }

    public String kk() {
        return null;
    }

    public String kx() {
        return this.ox;
    }

    public final boolean l() {
        com.bytedance.msdk.api.p.dq.d.ox oxVar = this.dq;
        if (oxVar != null) {
            return oxVar.yy();
        }
        return false;
    }

    public void mn(int i) {
        this.f768f = i;
    }

    public void mn(String str) {
        this.q = str;
    }

    public int n() {
        return this.mn;
    }

    public int nh() {
        return this.f768f;
    }

    public boolean ob() {
        return this.dq.y() == 2;
    }

    public int op() {
        return this.kk;
    }

    public void ox(double d2) {
        this.ig = d2;
    }

    public void ox(int i) {
        this.mn = i;
    }

    public void ox(String str) {
        this.p = str;
    }

    public void p(int i) {
        this.kk = i;
    }

    public void p(String str) {
        this.s = str;
    }

    public void s(int i) {
        this.o = i;
    }

    public void s(String str) {
        this.ia = str;
    }

    public final String t() {
        try {
            return kk();
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public String u() {
        return this.ia;
    }

    public com.bytedance.msdk.api.p.dq.mn.d vf() {
        return this.fw;
    }

    public String wn() {
        return this.q;
    }

    public double wp() {
        return this.cd;
    }
}
