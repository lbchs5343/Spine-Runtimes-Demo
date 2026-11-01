package g;

import java.util.RandomAccess;

/* loaded from: classes3.dex */
public final class hck extends dfj implements RandomAccess {

    /* renamed from: b, reason: collision with root package name */
    public final gei[] f19218b;

    /* renamed from: c, reason: collision with root package name */
    public final int[] f19219c;

    public hck(gei[] geiVarArr, int[] iArr) {
        this.f19218b = geiVarArr;
        this.f19219c = iArr;
    }

    @Override // g.dfj
    public final int a() {
        return this.f19218b.length;
    }

    @Override // g.dfj, java.util.List, java.util.Collection
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof gei) {
            return super.contains((gei) obj);
        }
        return false;
    }

    @Override // java.util.List
    public final Object get(int i) {
        return this.f19218b[i];
    }

    @Override // g.dfj, java.util.List
    public final /* bridge */ int indexOf(Object obj) {
        if (obj instanceof gei) {
            return super.indexOf((gei) obj);
        }
        return -1;
    }

    @Override // g.dfj, java.util.List
    public final /* bridge */ int lastIndexOf(Object obj) {
        if (obj instanceof gei) {
            return super.lastIndexOf((gei) obj);
        }
        return -1;
    }
}
