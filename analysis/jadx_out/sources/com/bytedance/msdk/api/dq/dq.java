package com.bytedance.msdk.api.dq;

import org.json.JSONObject;

/* loaded from: classes.dex */
public class dq implements ox {

    /* renamed from: d, reason: collision with root package name */
    private String f758d;
    private int ia;
    private String iw;
    private boolean mn;
    private int no;
    private JSONObject o;
    private int ox;
    private int p = 1;
    private int s = 0;
    public int dq = 0;
    private int kk = 2;

    @Override // com.bytedance.msdk.api.dq.ox
    public int d() {
        return this.ox;
    }

    @Override // com.bytedance.msdk.api.dq.ox
    public void d(int i) {
        this.p = i;
    }

    @Override // com.bytedance.msdk.api.dq.ox
    public void d(String str) {
        this.iw = str;
    }

    @Override // com.bytedance.msdk.api.dq.ox
    public String dq() {
        return this.f758d;
    }

    @Override // com.bytedance.msdk.api.dq.ox
    public void dq(int i) {
        this.ox = i;
    }

    @Override // com.bytedance.msdk.api.dq.ox
    public void dq(String str) {
        this.f758d = str;
    }

    @Override // com.bytedance.msdk.api.dq.ox
    public void dq(JSONObject jSONObject) {
        this.o = jSONObject;
    }

    @Override // com.bytedance.msdk.api.dq.ox
    public void dq(boolean z) {
        this.mn = z;
    }

    @Override // com.bytedance.msdk.api.dq.ox
    public int ia() {
        return this.ia;
    }

    public int ig() {
        return com.bytedance.msdk.mn.dq.dq.jy().kk() ? 1 : 0;
    }

    @Override // com.bytedance.msdk.api.dq.ox
    public String iw() {
        return this.iw;
    }

    @Override // com.bytedance.msdk.api.dq.ox
    public void iw(int i) {
        this.kk = i;
    }

    @Override // com.bytedance.msdk.api.dq.ox, com.bytedance.msdk.api.dq.p
    public void kk() {
        com.bytedance.msdk.dq.s.ox.d("AdLinkInfo", "getLinkedId = " + dq());
        com.bytedance.msdk.dq.s.ox.d("AdLinkInfo", "getAdloadSeq = " + d());
        com.bytedance.msdk.dq.s.ox.d("AdLinkInfo", "getPrimeRitReqType = " + ox());
        com.bytedance.msdk.dq.s.ox.d("AdLinkInfo", "getReqType = " + p());
        com.bytedance.msdk.dq.s.ox.d("AdLinkInfo", "getIfTest = " + s());
        com.bytedance.msdk.dq.s.ox.d("AdLinkInfo", "getTransparentParams = " + iw());
        com.bytedance.msdk.dq.s.ox.d("AdLinkInfo", "isAdRequestOptmize = " + mn());
        com.bytedance.msdk.dq.s.ox.d("AdLinkInfo", "getIsRa = " + ia());
        com.bytedance.msdk.dq.s.ox.d("AdLinkInfo", "getBehaviorRequestType = " + o());
        com.bytedance.msdk.dq.s.ox.d("AdLinkInfo", "adapterPluginLoader = " + ig());
    }

    @Override // com.bytedance.msdk.api.dq.ox
    public void mn(int i) {
        this.no = i;
    }

    @Override // com.bytedance.msdk.api.dq.ox
    public boolean mn() {
        return this.mn;
    }

    @Override // com.bytedance.msdk.api.dq.ox
    public int mp() {
        return this.no;
    }

    @Override // com.bytedance.msdk.api.dq.ox
    public JSONObject no() {
        return this.o;
    }

    @Override // com.bytedance.msdk.api.dq.ox
    public int o() {
        return this.kk;
    }

    @Override // com.bytedance.msdk.api.dq.ox
    public int ox() {
        return this.p;
    }

    @Override // com.bytedance.msdk.api.dq.ox
    public void ox(int i) {
        this.s = i;
    }

    @Override // com.bytedance.msdk.api.dq.ox
    public int p() {
        return this.s;
    }

    @Override // com.bytedance.msdk.api.dq.ox
    public void p(int i) {
        this.dq = i;
    }

    @Override // com.bytedance.msdk.api.dq.ox
    public int s() {
        return this.dq;
    }

    @Override // com.bytedance.msdk.api.dq.ox
    public void s(int i) {
        this.ia = i;
    }
}
