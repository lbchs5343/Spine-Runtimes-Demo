package com.bytedance.pangle.res.a;

import java.io.InputStream;

/* loaded from: classes.dex */
public final class e extends j {

    /* renamed from: a, reason: collision with root package name */
    private long f1573a;

    public e(InputStream inputStream) {
        super(inputStream);
    }

    public final int a() {
        long b2 = b();
        if (b2 <= 2147483647L) {
            return (int) b2;
        }
        throw new ArithmeticException("The byte count " + b2 + " is too large to be converted to an int");
    }

    @Override // com.bytedance.pangle.res.a.j
    public final synchronized void a(int i) {
        if (i != -1) {
            this.f1573a += i;
        }
    }

    public final synchronized long b() {
        return this.f1573a;
    }

    @Override // com.bytedance.pangle.res.a.j, java.io.FilterInputStream, java.io.InputStream
    public final synchronized long skip(long j) {
        long skip;
        skip = super.skip(j);
        this.f1573a += skip;
        return skip;
    }
}
