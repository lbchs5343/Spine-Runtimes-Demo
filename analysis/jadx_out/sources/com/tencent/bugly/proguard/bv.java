package com.tencent.bugly.proguard;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public final class bv extends m implements Cloneable {

    /* renamed from: f, reason: collision with root package name */
    static ArrayList<bu> f9746f;

    /* renamed from: g, reason: collision with root package name */
    static Map<String, String> f9747g;

    /* renamed from: a, reason: collision with root package name */
    public byte f9748a = 0;

    /* renamed from: b, reason: collision with root package name */
    public String f9749b = "";

    /* renamed from: c, reason: collision with root package name */
    public String f9750c = "";

    /* renamed from: d, reason: collision with root package name */
    public ArrayList<bu> f9751d = null;

    /* renamed from: e, reason: collision with root package name */
    public Map<String, String> f9752e = null;

    @Override // com.tencent.bugly.proguard.m
    public final void a(k kVar) {
        this.f9748a = kVar.a(this.f9748a, 0, true);
        this.f9749b = kVar.b(1, false);
        this.f9750c = kVar.b(2, false);
        if (f9746f == null) {
            f9746f = new ArrayList<>();
            f9746f.add(new bu());
        }
        this.f9751d = (ArrayList) kVar.a((k) f9746f, 3, false);
        if (f9747g == null) {
            HashMap hashMap = new HashMap();
            f9747g = hashMap;
            hashMap.put("", "");
        }
        this.f9752e = (Map) kVar.a((k) f9747g, 4, false);
    }

    @Override // com.tencent.bugly.proguard.m
    public final void a(l lVar) {
        lVar.a(this.f9748a, 0);
        String str = this.f9749b;
        if (str != null) {
            lVar.a(str, 1);
        }
        String str2 = this.f9750c;
        if (str2 != null) {
            lVar.a(str2, 2);
        }
        ArrayList<bu> arrayList = this.f9751d;
        if (arrayList != null) {
            lVar.a((Collection) arrayList, 3);
        }
        Map<String, String> map = this.f9752e;
        if (map != null) {
            lVar.a((Map) map, 4);
        }
    }

    @Override // com.tencent.bugly.proguard.m
    public final void a(StringBuilder sb, int i) {
    }
}
