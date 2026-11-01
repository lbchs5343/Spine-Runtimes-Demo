package g;

import j$.util.Objects;
import java.util.AbstractMap;

/* loaded from: classes3.dex */
public final class exc extends fkz {
    final /* synthetic */ eix zza;

    public exc(eix eixVar) {
        this.zza = eixVar;
    }

    @Override // java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i) {
        eix eixVar = this.zza;
        acr.bt(i, eixVar.f15617e);
        Object[] objArr = eixVar.f15616b;
        int i2 = i + i;
        Object obj = objArr[i2];
        Objects.requireNonNull(obj);
        Object obj2 = objArr[i2 + 1];
        Objects.requireNonNull(obj2);
        return new AbstractMap.SimpleImmutableEntry(obj, obj2);
    }

    @Override // g.esj
    public final boolean i() {
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zza.f15617e;
    }
}
