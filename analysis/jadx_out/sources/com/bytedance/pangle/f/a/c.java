package com.bytedance.pangle.f.a;

/* loaded from: classes.dex */
final class c {

    /* renamed from: a, reason: collision with root package name */
    int[] f1407a = new int[32];

    /* renamed from: b, reason: collision with root package name */
    int f1408b;

    /* renamed from: c, reason: collision with root package name */
    int f1409c;

    public final void a() {
        b();
        int i = this.f1408b;
        int[] iArr = this.f1407a;
        iArr[i] = 0;
        iArr[i + 1] = 0;
        this.f1408b = i + 2;
        this.f1409c++;
    }

    public final void b() {
        int[] iArr = this.f1407a;
        int length = iArr.length;
        int i = this.f1408b;
        int i2 = length - i;
        if (i2 <= 2) {
            int[] iArr2 = new int[(iArr.length + i2) * 2];
            System.arraycopy(iArr, 0, iArr2, 0, i);
            this.f1407a = iArr2;
        }
    }
}
