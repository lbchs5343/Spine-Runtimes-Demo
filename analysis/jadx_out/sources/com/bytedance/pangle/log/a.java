package com.bytedance.pangle.log;

import g.tn;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    private String f1482a;

    /* renamed from: b, reason: collision with root package name */
    private String f1483b;

    /* renamed from: c, reason: collision with root package name */
    private String f1484c;

    /* renamed from: d, reason: collision with root package name */
    private long f1485d;

    /* renamed from: e, reason: collision with root package name */
    private long f1486e;

    private a(String str, String str2, String str3) {
        this.f1482a = str;
        this.f1483b = str2;
        this.f1484c = str3;
        long currentTimeMillis = System.currentTimeMillis();
        this.f1486e = currentTimeMillis;
        this.f1485d = currentTimeMillis;
        String str4 = this.f1482a;
        StringBuilder sb = new StringBuilder();
        sb.append(this.f1483b);
        sb.append(" watcher[" + str3 + "]-start");
        ZeusLogger.i(str4, sb.toString());
    }

    public static a a(String str, String str2, String str3) {
        return new a(str, str2, str3);
    }

    public final long a() {
        return System.currentTimeMillis() - this.f1485d;
    }

    public final long a(String str) {
        long currentTimeMillis = System.currentTimeMillis() - this.f1486e;
        long currentTimeMillis2 = System.currentTimeMillis() - this.f1485d;
        String str2 = this.f1482a;
        StringBuilder sb = new StringBuilder();
        sb.append(this.f1483b);
        StringBuilder o = tn.o(" watcher[", this.f1484c, "]-", str, " cost=");
        o.append(currentTimeMillis);
        o.append(", total=");
        o.append(currentTimeMillis2);
        sb.append(o.toString());
        ZeusLogger.i(str2, sb.toString());
        return currentTimeMillis2;
    }
}
