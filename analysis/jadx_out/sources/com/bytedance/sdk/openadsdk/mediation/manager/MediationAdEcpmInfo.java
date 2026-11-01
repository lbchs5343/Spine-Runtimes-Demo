package com.bytedance.sdk.openadsdk.mediation.manager;

import java.util.HashMap;
import java.util.Map;

/* loaded from: classes3.dex */
public class MediationAdEcpmInfo {

    /* renamed from: d, reason: collision with root package name */
    private String f3840d;
    private String dq;

    /* renamed from: f, reason: collision with root package name */
    private Map<String, String> f3841f;
    private String ia;
    private String ig;
    private int iw;
    private String jy;
    private String kk;
    private String mn;
    private String mp;
    private String no;
    private String o;
    private String ox;
    private String p;
    private String q;
    private String s;

    public MediationAdEcpmInfo() {
        this.f3841f = new HashMap();
    }

    public MediationAdEcpmInfo(String str, String str2, String str3, String str4, String str5, int i, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, Map<String, String> map) {
        HashMap hashMap = new HashMap();
        this.f3841f = hashMap;
        this.dq = str;
        this.f3840d = str2;
        this.ox = str3;
        this.p = str4;
        this.s = str5;
        this.iw = i;
        this.mn = str6;
        this.ia = str7;
        this.kk = str8;
        this.o = str9;
        this.no = str10;
        this.ig = str11;
        this.mp = str12;
        this.q = str13;
        this.jy = str14;
        if (map != null) {
            this.f3841f = map;
        } else {
            hashMap.clear();
        }
    }

    public String getAbTestId() {
        return this.q;
    }

    public String getChannel() {
        return this.ig;
    }

    public Map<String, String> getCustomData() {
        return this.f3841f;
    }

    public String getCustomSdkName() {
        return this.f3840d;
    }

    public String getEcpm() {
        return this.s;
    }

    public String getErrorMsg() {
        return this.mn;
    }

    public String getLevelTag() {
        return this.p;
    }

    public int getReqBiddingType() {
        return this.iw;
    }

    public String getRequestId() {
        return this.ia;
    }

    public String getRitType() {
        return this.kk;
    }

    public String getScenarioId() {
        return this.jy;
    }

    public String getSdkName() {
        return this.dq;
    }

    public String getSegmentId() {
        return this.no;
    }

    public String getSlotId() {
        return this.ox;
    }

    public String getSubChannel() {
        return this.mp;
    }

    public String getSubRitType() {
        return this.o;
    }
}
