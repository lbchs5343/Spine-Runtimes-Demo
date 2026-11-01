package com.tencent.bugly.proguard;

/* loaded from: classes.dex */
public final class bn extends m implements Cloneable {

    /* renamed from: d, reason: collision with root package name */
    static byte[] f9703d;

    /* renamed from: a, reason: collision with root package name */
    public byte f9704a;

    /* renamed from: b, reason: collision with root package name */
    public String f9705b;

    /* renamed from: c, reason: collision with root package name */
    public byte[] f9706c;

    public bn() {
        this.f9704a = (byte) 0;
        this.f9705b = "";
        this.f9706c = null;
    }

    public bn(byte b2, String str, byte[] bArr) {
        this.f9704a = b2;
        this.f9705b = str;
        this.f9706c = bArr;
    }

    @Override // com.tencent.bugly.proguard.m
    public final void a(k kVar) {
        this.f9704a = kVar.a(this.f9704a, 0, true);
        this.f9705b = kVar.b(1, true);
        if (f9703d == null) {
            f9703d = new byte[]{0};
        }
        this.f9706c = kVar.c(2, false);
    }

    @Override // com.tencent.bugly.proguard.m
    public final void a(l lVar) {
        lVar.a(this.f9704a, 0);
        lVar.a(this.f9705b, 1);
        byte[] bArr = this.f9706c;
        if (bArr != null) {
            lVar.a(bArr, 2);
        }
    }

    @Override // com.tencent.bugly.proguard.m
    public final void a(StringBuilder sb, int i) {
    }
}
