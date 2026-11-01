package g;

import java.util.AbstractList;
import java.util.ListIterator;

/* loaded from: classes3.dex */
public final class fyf extends auh implements ListIterator {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AbstractList f17632c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f17633d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ fyf(AbstractList abstractList, ListIterator listIterator, int i) {
        super(listIterator);
        this.f17633d = i;
        this.f17632c = abstractList;
    }

    @Override // g.auh
    public final Object a(Object obj) {
        switch (this.f17633d) {
            case 0:
                return ((gqa) this.f17632c).zzb.apply(obj);
            default:
                return ((cfc) this.f17632c).zzb.apply(obj);
        }
    }

    @Override // java.util.ListIterator
    public final void add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return ((ListIterator) this.f10864b).hasPrevious();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return ((ListIterator) this.f10864b).nextIndex();
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        return a(((ListIterator) this.f10864b).previous());
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return ((ListIterator) this.f10864b).previousIndex();
    }

    @Override // java.util.ListIterator
    public final void set(Object obj) {
        throw new UnsupportedOperationException();
    }
}
