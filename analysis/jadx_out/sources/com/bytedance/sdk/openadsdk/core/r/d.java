package com.bytedance.sdk.openadsdk.core.r;

import java.util.ArrayList;
import java.util.Collection;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class d {

    /* renamed from: d, reason: collision with root package name */
    public int f3430d;
    public String dq;
    private long ia;
    private JSONObject ig;
    public com.bytedance.sdk.openadsdk.f.d.ox.d iw;
    private long kk;
    private int mn;
    private long no;
    private long o;
    public int ox = 1;
    public String p;
    public ArrayList<Integer> s;

    public static void dq(d dVar) {
        int d2;
        if (dVar == null || dVar.mn() == null || (d2 = dVar.d()) >= 0 || d2 == -8) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.gh.ig.dq().d(new com.bytedance.sdk.openadsdk.no.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.r.d.1
            @Override // com.bytedance.sdk.openadsdk.no.dq.dq
            public com.bytedance.sdk.openadsdk.core.gh.dq.dq dq() throws Exception {
                JSONObject s = d.this.s();
                if (s == null) {
                    s = new JSONObject();
                }
                s.put("from", d.this.iw());
                s.put("err_code", d.this.d());
                s.put("err_msg", d.this.p());
                s.put("server_res_str", d.this.dq());
                if (d.this.ia() != null && d.this.ia().size() > 0) {
                    s.put("mate_unavailable_code_list", new JSONArray((Collection) d.this.ia()).toString());
                }
                com.bytedance.sdk.component.utils.ig.dq("AdLogInfoModel", "rd_client_custom_error = ", s);
                return com.bytedance.sdk.openadsdk.core.gh.dq.ox.d().dq("rd_client_custom_error").dq(d.this.mn().k()).d(s.toString());
            }
        }, "rd_client_custom_error");
    }

    public int d() {
        return this.f3430d;
    }

    public void d(int i) {
        this.mn = i;
    }

    public void d(long j) {
        this.kk = j;
    }

    public void d(String str) {
        this.p = str;
    }

    public String dq() {
        return this.dq;
    }

    public void dq(int i) {
        this.f3430d = i;
    }

    public void dq(long j) {
        this.ia = j;
    }

    public void dq(com.bytedance.sdk.openadsdk.f.d.ox.d dVar) {
        this.iw = dVar;
    }

    public void dq(String str) {
        this.dq = str;
    }

    public void dq(ArrayList<Integer> arrayList) {
        this.s = arrayList;
    }

    public void dq(JSONObject jSONObject) {
        this.ig = jSONObject;
    }

    public ArrayList<Integer> ia() {
        return this.s;
    }

    public long ig() {
        return this.no;
    }

    public int iw() {
        return this.ox;
    }

    public long kk() {
        return this.ia;
    }

    public com.bytedance.sdk.openadsdk.f.d.ox.d mn() {
        return this.iw;
    }

    public long no() {
        return this.o;
    }

    public long o() {
        return this.kk;
    }

    public int ox() {
        return this.mn;
    }

    public void ox(int i) {
        this.ox = i;
    }

    public void ox(long j) {
        this.o = j;
    }

    public String p() {
        return this.p;
    }

    public void p(long j) {
        this.no = j;
    }

    public JSONObject s() {
        return this.ig;
    }
}
