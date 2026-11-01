package com.tencent.bugly.proguard;

import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public final class bu extends m {
    static Map<String, String> i;

    /* renamed from: a, reason: collision with root package name */
    public long f9739a = 0;

    /* renamed from: b, reason: collision with root package name */
    public byte f9740b = 0;

    /* renamed from: c, reason: collision with root package name */
    public String f9741c = "";

    /* renamed from: d, reason: collision with root package name */
    public String f9742d = "";

    /* renamed from: e, reason: collision with root package name */
    public String f9743e = "";

    /* renamed from: f, reason: collision with root package name */
    public Map<String, String> f9744f = null;

    /* renamed from: g, reason: collision with root package name */
    public String f9745g = "";
    public boolean h = true;

    static {
        HashMap hashMap = new HashMap();
        i = hashMap;
        hashMap.put("", "");
    }

    @Override // com.tencent.bugly.proguard.m
    public final void a(k kVar) {
        this.f9739a = kVar.a(this.f9739a, 0, true);
        this.f9740b = kVar.a(this.f9740b, 1, true);
        this.f9741c = kVar.b(2, false);
        this.f9742d = kVar.b(3, false);
        this.f9743e = kVar.b(4, false);
        this.f9744f = (Map) kVar.a((k) i, 5, false);
        this.f9745g = kVar.b(6, false);
        this.h = kVar.a(7, false);
    }

    @Override // com.tencent.bugly.proguard.m
    public final void a(l lVar) {
        lVar.a(this.f9739a, 0);
        lVar.a(this.f9740b, 1);
        String str = this.f9741c;
        if (str != null) {
            lVar.a(str, 2);
        }
        String str2 = this.f9742d;
        if (str2 != null) {
            lVar.a(str2, 3);
        }
        String str3 = this.f9743e;
        if (str3 != null) {
            lVar.a(str3, 4);
        }
        Map<String, String> map = this.f9744f;
        if (map != null) {
            lVar.a((Map) map, 5);
        }
        String str4 = this.f9745g;
        if (str4 != null) {
            lVar.a(str4, 6);
        }
        lVar.a(this.h, 7);
    }
}
