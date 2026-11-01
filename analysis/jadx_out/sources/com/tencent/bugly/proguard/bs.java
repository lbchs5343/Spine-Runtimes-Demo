package com.tencent.bugly.proguard;

/* loaded from: classes.dex */
public final class bs extends m implements Cloneable {

    /* renamed from: a, reason: collision with root package name */
    public String f9730a = "";

    /* renamed from: b, reason: collision with root package name */
    public String f9731b = "";

    @Override // com.tencent.bugly.proguard.m
    public final void a(k kVar) {
        this.f9730a = kVar.b(0, true);
        this.f9731b = kVar.b(1, true);
    }

    @Override // com.tencent.bugly.proguard.m
    public final void a(l lVar) {
        lVar.a(this.f9730a, 0);
        lVar.a(this.f9731b, 1);
    }

    @Override // com.tencent.bugly.proguard.m
    public final void a(StringBuilder sb, int i) {
    }
}
