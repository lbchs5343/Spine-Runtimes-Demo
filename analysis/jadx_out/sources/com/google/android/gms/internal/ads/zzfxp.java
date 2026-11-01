package com.google.android.gms.internal.ads;

import java.util.NoSuchElementException;

/* loaded from: classes3.dex */
public abstract class zzfxp extends zzgbu {

    /* renamed from: a, reason: collision with root package name */
    public Object f8221a;

    /* renamed from: b, reason: collision with root package name */
    public int f8222b = 2;

    public abstract Object c();

    @Override // java.util.Iterator
    public final boolean hasNext() {
        zzfwq.zzk(this.f8222b != 4);
        int i = this.f8222b;
        int i2 = i - 1;
        if (i == 0) {
            throw null;
        }
        if (i2 == 0) {
            return true;
        }
        if (i2 != 2) {
            this.f8222b = 4;
            this.f8221a = c();
            if (this.f8222b != 3) {
                this.f8222b = 1;
                return true;
            }
        }
        return false;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        this.f8222b = 2;
        Object obj = this.f8221a;
        this.f8221a = null;
        return obj;
    }
}
