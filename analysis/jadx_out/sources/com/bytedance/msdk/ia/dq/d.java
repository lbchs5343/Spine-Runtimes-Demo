package com.bytedance.msdk.ia.dq;

import java.text.SimpleDateFormat;
import java.util.Date;

/* loaded from: classes.dex */
public class d {

    /* renamed from: d, reason: collision with root package name */
    private String f1085d;
    private String dq;
    private String ox;
    private String p;
    private long s;

    public void d(String str) {
        this.f1085d = str;
    }

    public String dq() {
        return this.p;
    }

    public void dq(long j) {
        this.s = j;
    }

    public void dq(String str) {
        this.dq = str;
    }

    public void ox(String str) {
        this.ox = str;
    }

    public void p(String str) {
        this.p = str;
    }

    public String toString() {
        return "MediationBehaviorDbData{primeRit='" + this.dq + "', adnRit='" + this.f1085d + "', adnName='" + this.ox + "', adAction='" + this.p + "', timeStamp=" + new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date(this.s)) + '}';
    }
}
