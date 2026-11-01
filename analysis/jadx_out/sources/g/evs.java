package g;

import java.util.RandomAccess;

/* loaded from: classes.dex */
public final class evs extends dfj implements RandomAccess {

    /* renamed from: b, reason: collision with root package name */
    public final int f16247b;

    /* renamed from: c, reason: collision with root package name */
    public final dfj f16248c;

    /* renamed from: d, reason: collision with root package name */
    public final int f16249d;

    public evs(dfj dfjVar, int i, int i2) {
        this.f16248c = dfjVar;
        this.f16249d = i;
        ffb.p(i, i2, dfjVar.a());
        this.f16247b = i2 - i;
    }

    @Override // g.dfj
    public final int a() {
        return this.f16247b;
    }

    @Override // java.util.List
    public final Object get(int i) {
        int i2 = this.f16247b;
        if (i < 0 || i >= i2) {
            throw new IndexOutOfBoundsException(tn.t(i, i2, "index: ", ", size: "));
        }
        return this.f16248c.get(this.f16249d + i);
    }
}
