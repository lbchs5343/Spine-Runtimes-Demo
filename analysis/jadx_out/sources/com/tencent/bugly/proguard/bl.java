package com.tencent.bugly.proguard;

/* loaded from: classes.dex */
public final class bl extends m implements Cloneable {

    /* renamed from: a, reason: collision with root package name */
    public String f9695a = "";

    /* renamed from: b, reason: collision with root package name */
    public String f9696b = "";

    /* renamed from: c, reason: collision with root package name */
    public String f9697c = "";

    /* renamed from: d, reason: collision with root package name */
    public String f9698d = "";

    /* renamed from: e, reason: collision with root package name */
    public String f9699e = "";

    @Override // com.tencent.bugly.proguard.m
    public final void a(k kVar) {
        this.f9695a = kVar.b(0, true);
        this.f9696b = kVar.b(1, false);
        this.f9697c = kVar.b(2, false);
        this.f9698d = kVar.b(3, false);
        this.f9699e = kVar.b(4, false);
    }

    @Override // com.tencent.bugly.proguard.m
    public final void a(l lVar) {
        lVar.a(this.f9695a, 0);
        String str = this.f9696b;
        if (str != null) {
            lVar.a(str, 1);
        }
        String str2 = this.f9697c;
        if (str2 != null) {
            lVar.a(str2, 2);
        }
        String str3 = this.f9698d;
        if (str3 != null) {
            lVar.a(str3, 3);
        }
        String str4 = this.f9699e;
        if (str4 != null) {
            lVar.a(str4, 4);
        }
    }

    @Override // com.tencent.bugly.proguard.m
    public final void a(StringBuilder sb, int i) {
    }
}
