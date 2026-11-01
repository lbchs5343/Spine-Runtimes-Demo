package com.bykv.vk.openvk.component.video.api.ox;

import android.os.Build;
import android.text.TextUtils;
import java.io.Serializable;
import java.util.HashMap;
import java.util.List;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class p implements Serializable {
    private boolean cd;

    /* renamed from: d, reason: collision with root package name */
    public int f515d;
    public String dq;

    /* renamed from: f, reason: collision with root package name */
    private long f517f;
    private boolean fw;
    private int gh;
    private int ig;
    private String iw;
    private String jy;
    private int mn;
    private int mp;
    private String no;
    private ox p;
    private List<String> q;
    private int r;
    private ox s;
    private int ia = 204800;
    private int kk = 0;
    private int o = 0;
    public final HashMap<String, Object> ox = new HashMap<>();
    private int i = 10000;
    private int le = 10000;
    private int k = 10000;
    private int wp = 0;

    /* renamed from: e, reason: collision with root package name */
    private JSONObject f516e = new JSONObject();

    public p(String str, ox oxVar, ox oxVar2, int i, int i2) {
        this.gh = 0;
        this.r = 0;
        this.iw = str;
        this.p = oxVar;
        this.s = oxVar2;
        this.gh = i;
        this.r = i2;
    }

    public int cd() {
        return this.gh;
    }

    public int d() {
        return this.f516e.optInt("pitaya_cache_size", 0);
    }

    public void d(int i) {
        this.ig = i;
    }

    public void d(String str) {
        this.no = str;
    }

    public void d(boolean z) {
        this.fw = z;
    }

    public JSONObject dq() {
        return this.f516e;
    }

    public void dq(int i) {
        this.mn = i;
    }

    public void dq(long j) {
        this.f517f = j;
    }

    public void dq(String str) {
        this.iw = str;
    }

    public synchronized void dq(String str, Object obj) {
        this.ox.put(str, obj);
    }

    public void dq(List<String> list) {
        this.q = list;
    }

    public void dq(boolean z) {
        this.cd = z;
    }

    public ox e() {
        if (q()) {
            return this.s;
        }
        ox oxVar = this.p;
        if (oxVar != null) {
            return oxVar;
        }
        return null;
    }

    public String f() {
        if (q()) {
            return this.s.ig();
        }
        ox oxVar = this.p;
        if (oxVar != null) {
            return oxVar.ig();
        }
        return null;
    }

    public String fw() {
        if (q()) {
            return this.s.jy();
        }
        ox oxVar = this.p;
        if (oxVar != null) {
            return oxVar.jy();
        }
        return null;
    }

    public int gh() {
        return this.i;
    }

    public int i() {
        return this.k;
    }

    public int ia() {
        return this.ig;
    }

    public void ia(int i) {
        this.k = i;
    }

    public long ig() {
        if (q()) {
            return this.s.s();
        }
        ox oxVar = this.p;
        if (oxVar != null) {
            return oxVar.s();
        }
        return 0L;
    }

    public int iw() {
        if (q()) {
            return this.s.f();
        }
        ox oxVar = this.p;
        if (oxVar != null) {
            return oxVar.f();
        }
        return 0;
    }

    public void iw(int i) {
        this.i = i;
    }

    public float jy() {
        if (q()) {
            return this.s.ia();
        }
        ox oxVar = this.p;
        if (oxVar != null) {
            return oxVar.ia();
        }
        return -1.0f;
    }

    public ox k() {
        return this.p;
    }

    public int kk() {
        return this.mp;
    }

    public void kk(int i) {
        this.wp = i;
    }

    public int le() {
        return this.wp;
    }

    public void mn(int i) {
        this.le = i;
    }

    public boolean mn() {
        return this.cd;
    }

    public boolean mp() {
        if (q()) {
            return this.s.k();
        }
        ox oxVar = this.p;
        if (oxVar != null) {
            return oxVar.k();
        }
        return true;
    }

    public boolean no() {
        return this.fw;
    }

    public long o() {
        return this.f517f;
    }

    public int ox() {
        return this.f516e.optInt("pitaya_code", 0);
    }

    public void ox(int i) {
        this.mp = i;
    }

    public void ox(String str) {
        this.jy = str;
    }

    public String p() {
        return this.f516e.optString("pitaya_msg");
    }

    public void p(int i) {
        this.f515d = i;
    }

    public void p(String str) {
        this.dq = str;
    }

    public boolean q() {
        ox oxVar;
        if (this.r != 1 || (oxVar = this.s) == null || TextUtils.isEmpty(oxVar.ig())) {
            return false;
        }
        return com.bykv.vk.openvk.component.video.api.ox.s() == 2 ? Build.VERSION.SDK_INT >= 26 : this.gh == 1;
    }

    public int r() {
        return this.le;
    }

    public synchronized Object s(String str) {
        return this.ox.get(str);
    }

    public String s() {
        return this.iw;
    }

    public void s(int i) {
        this.gh = i;
    }

    public ox wp() {
        return this.s;
    }
}
