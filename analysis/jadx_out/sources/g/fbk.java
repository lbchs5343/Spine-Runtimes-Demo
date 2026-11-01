package g;

import j$.util.Objects;

/* loaded from: classes3.dex */
public final class fbk extends fkz {

    /* renamed from: a, reason: collision with root package name */
    public final transient Object[] f16513a;

    /* renamed from: b, reason: collision with root package name */
    public final transient int f16514b;

    /* renamed from: f, reason: collision with root package name */
    public final transient int f16515f;

    public fbk(int i, int i2, Object[] objArr) {
        this.f16513a = objArr;
        this.f16514b = i;
        this.f16515f = i2;
    }

    @Override // java.util.List
    public final Object get(int i) {
        acr.bt(i, this.f16515f);
        Object obj = this.f16513a[i + i + this.f16514b];
        Objects.requireNonNull(obj);
        return obj;
    }

    @Override // g.esj
    public final boolean i() {
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f16515f;
    }
}
