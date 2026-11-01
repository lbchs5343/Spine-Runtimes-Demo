package com.tencent.bugly.proguard;

import java.util.ArrayList;
import java.util.Collection;

/* loaded from: classes.dex */
public final class bp extends m implements Cloneable {

    /* renamed from: b, reason: collision with root package name */
    static ArrayList<bo> f9714b;

    /* renamed from: a, reason: collision with root package name */
    public ArrayList<bo> f9715a = null;

    @Override // com.tencent.bugly.proguard.m
    public final void a(k kVar) {
        if (f9714b == null) {
            f9714b = new ArrayList<>();
            f9714b.add(new bo());
        }
        this.f9715a = (ArrayList) kVar.a((k) f9714b, 0, true);
    }

    @Override // com.tencent.bugly.proguard.m
    public final void a(l lVar) {
        lVar.a((Collection) this.f9715a, 0);
    }

    @Override // com.tencent.bugly.proguard.m
    public final void a(StringBuilder sb, int i) {
    }
}
