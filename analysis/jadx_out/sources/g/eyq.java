package g;

/* loaded from: classes3.dex */
public final class eyq extends fkz {

    /* renamed from: a, reason: collision with root package name */
    public final transient int f16384a;

    /* renamed from: b, reason: collision with root package name */
    public final transient int f16385b;
    final /* synthetic */ fkz zzc;

    public eyq(fkz fkzVar, int i, int i2) {
        this.zzc = fkzVar;
        this.f16384a = i;
        this.f16385b = i2;
    }

    @Override // g.fkz, java.util.List
    /* renamed from: e */
    public final fkz subList(int i, int i2) {
        acr.bq(i, i2, this.f16385b);
        fkz fkzVar = this.zzc;
        int i3 = this.f16384a;
        return fkzVar.subList(i + i3, i2 + i3);
    }

    @Override // java.util.List
    public final Object get(int i) {
        acr.bt(i, this.f16385b);
        return this.zzc.get(i + this.f16384a);
    }

    @Override // g.esj
    public final boolean i() {
        return true;
    }

    @Override // g.esj
    public final int j() {
        return this.zzc.k() + this.f16384a + this.f16385b;
    }

    @Override // g.esj
    public final int k() {
        return this.zzc.k() + this.f16384a;
    }

    @Override // g.esj
    public final Object[] l() {
        return this.zzc.l();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f16385b;
    }
}
