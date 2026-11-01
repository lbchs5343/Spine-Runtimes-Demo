package com.tencent.bugly.proguard;

import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public final class br extends m {
    static byte[] i = {0};
    static Map<String, String> j;

    /* renamed from: a, reason: collision with root package name */
    public byte f9723a = 0;

    /* renamed from: b, reason: collision with root package name */
    public int f9724b = 0;

    /* renamed from: c, reason: collision with root package name */
    public byte[] f9725c = null;

    /* renamed from: d, reason: collision with root package name */
    public String f9726d = "";

    /* renamed from: e, reason: collision with root package name */
    public long f9727e = 0;

    /* renamed from: f, reason: collision with root package name */
    public String f9728f = "";

    /* renamed from: g, reason: collision with root package name */
    public String f9729g = "";
    public Map<String, String> h = null;

    static {
        HashMap hashMap = new HashMap();
        j = hashMap;
        hashMap.put("", "");
    }

    @Override // com.tencent.bugly.proguard.m
    public final void a(k kVar) {
        this.f9723a = kVar.a(this.f9723a, 0, true);
        this.f9724b = kVar.a(this.f9724b, 1, true);
        this.f9725c = kVar.c(2, false);
        this.f9726d = kVar.b(3, false);
        this.f9727e = kVar.a(this.f9727e, 4, false);
        this.f9728f = kVar.b(5, false);
        this.f9729g = kVar.b(6, false);
        this.h = (Map) kVar.a((k) j, 7, false);
    }

    @Override // com.tencent.bugly.proguard.m
    public final void a(l lVar) {
        lVar.a(this.f9723a, 0);
        lVar.a(this.f9724b, 1);
        byte[] bArr = this.f9725c;
        if (bArr != null) {
            lVar.a(bArr, 2);
        }
        String str = this.f9726d;
        if (str != null) {
            lVar.a(str, 3);
        }
        lVar.a(this.f9727e, 4);
        String str2 = this.f9728f;
        if (str2 != null) {
            lVar.a(str2, 5);
        }
        String str3 = this.f9729g;
        if (str3 != null) {
            lVar.a(str3, 6);
        }
        Map<String, String> map = this.h;
        if (map != null) {
            lVar.a((Map) map, 7);
        }
    }
}
