package com.bytedance.sdk.openadsdk.mediation.ad;

import java.util.Map;

/* loaded from: classes3.dex */
public class MediationNativeAdAppInfo {

    /* renamed from: d, reason: collision with root package name */
    private String f3809d;
    private String dq;
    private String ia;
    private String iw;
    private Map<String, Object> kk;
    private String mn;
    private long ox;
    private String p;
    private Map<String, String> s;

    public Map<String, Object> getAppInfoExtra() {
        return this.kk;
    }

    public String getAppName() {
        return this.dq;
    }

    public String getAuthorName() {
        return this.f3809d;
    }

    public String getFunctionDescUrl() {
        return this.ia;
    }

    public long getPackageSizeBytes() {
        return this.ox;
    }

    public Map<String, String> getPermissionsMap() {
        return this.s;
    }

    public String getPermissionsUrl() {
        return this.p;
    }

    public String getPrivacyAgreement() {
        return this.iw;
    }

    public String getVersionName() {
        return this.mn;
    }

    public void setAppInfoExtra(Map<String, Object> map) {
        this.kk = map;
    }

    public void setAppName(String str) {
        this.dq = str;
    }

    public void setAuthorName(String str) {
        this.f3809d = str;
    }

    public void setFunctionDescUrl(String str) {
        this.ia = str;
    }

    public void setPackageSizeBytes(long j) {
        this.ox = j;
    }

    public void setPermissionsMap(Map<String, String> map) {
        this.s = map;
    }

    public void setPermissionsUrl(String str) {
        this.p = str;
    }

    public void setPrivacyAgreement(String str) {
        this.iw = str;
    }

    public void setVersionName(String str) {
        this.mn = str;
    }
}
