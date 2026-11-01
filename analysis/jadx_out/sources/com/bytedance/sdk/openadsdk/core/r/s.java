package com.bytedance.sdk.openadsdk.core.r;

import android.text.TextUtils;
import java.util.HashMap;
import org.json.JSONArray;

/* loaded from: classes3.dex */
public class s {

    /* renamed from: d, reason: collision with root package name */
    private String f3511d;
    private String dq;
    private JSONArray ia;
    private JSONArray ig;
    private String iw;
    private String kk;
    private String mn;
    private HashMap<String, String> mp = new HashMap<>();
    private float no;
    private String o;
    private String ox;
    private String p;
    private String s;

    public String d() {
        return this.s;
    }

    public void d(String str) {
        this.dq = str;
    }

    public void d(JSONArray jSONArray) {
        this.ia = jSONArray;
    }

    public HashMap<String, String> dq() {
        return this.mp;
    }

    public void dq(float f2) {
        this.no = f2;
    }

    public void dq(String str) {
        this.s = str;
    }

    public void dq(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.mp.put(str, str2);
    }

    public void dq(JSONArray jSONArray) {
        this.ig = jSONArray;
    }

    public String ia() {
        return this.p;
    }

    public void ia(String str) {
        this.kk = str;
    }

    public String ig() {
        return this.kk;
    }

    public String iw() {
        return this.f3511d;
    }

    public void iw(String str) {
        this.iw = str;
    }

    public String kk() {
        return this.iw;
    }

    public void kk(String str) {
        this.o = str;
    }

    public String mn() {
        return this.ox;
    }

    public void mn(String str) {
        this.mn = str;
    }

    public String mp() {
        return this.o;
    }

    public JSONArray no() {
        return this.ia;
    }

    public String o() {
        return this.mn;
    }

    public float ox() {
        return this.no;
    }

    public void ox(String str) {
        this.f3511d = str;
    }

    public JSONArray p() {
        return this.ig;
    }

    public void p(String str) {
        this.ox = str;
    }

    public String s() {
        return this.dq;
    }

    public void s(String str) {
        this.p = str;
    }
}
