package com.tencent.bugly.proguard;

import java.util.ArrayList;
import java.util.Collection;

/* loaded from: classes.dex */
public final class bm extends m implements Cloneable {

    /* renamed from: c, reason: collision with root package name */
    static ArrayList<String> f9700c;

    /* renamed from: a, reason: collision with root package name */
    public String f9701a = "";

    /* renamed from: b, reason: collision with root package name */
    public ArrayList<String> f9702b = null;

    @Override // com.tencent.bugly.proguard.m
    public final void a(k kVar) {
        this.f9701a = kVar.b(0, true);
        if (f9700c == null) {
            ArrayList<String> arrayList = new ArrayList<>();
            f9700c = arrayList;
            arrayList.add("");
        }
        this.f9702b = (ArrayList) kVar.a((k) f9700c, 1, false);
    }

    @Override // com.tencent.bugly.proguard.m
    public final void a(l lVar) {
        lVar.a(this.f9701a, 0);
        ArrayList<String> arrayList = this.f9702b;
        if (arrayList != null) {
            lVar.a((Collection) arrayList, 1);
        }
    }

    @Override // com.tencent.bugly.proguard.m
    public final void a(StringBuilder sb, int i) {
    }
}
