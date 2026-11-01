package g;

import j$.util.Objects;

/* loaded from: classes3.dex */
public final class fun extends fkz {

    /* renamed from: a, reason: collision with root package name */
    public static final fun f17435a = new fun(0, new Object[0]);

    /* renamed from: b, reason: collision with root package name */
    public final transient Object[] f17436b;

    /* renamed from: f, reason: collision with root package name */
    public final transient int f17437f;

    public fun(int i, Object[] objArr) {
        this.f17436b = objArr;
        this.f17437f = i;
    }

    @Override // g.fkz, g.esj
    public final int d(Object[] objArr) {
        Object[] objArr2 = this.f17436b;
        int i = this.f17437f;
        System.arraycopy(objArr2, 0, objArr, 0, i);
        return i;
    }

    @Override // java.util.List
    public final Object get(int i) {
        acr.bt(i, this.f17437f);
        Object obj = this.f17436b[i];
        Objects.requireNonNull(obj);
        return obj;
    }

    @Override // g.esj
    public final boolean i() {
        return false;
    }

    @Override // g.esj
    public final int j() {
        return this.f17437f;
    }

    @Override // g.esj
    public final int k() {
        return 0;
    }

    @Override // g.esj
    public final Object[] l() {
        return this.f17436b;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f17437f;
    }
}
