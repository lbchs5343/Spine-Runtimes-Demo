package j$.util.stream;

import j$.util.Collection;
import j$.util.Objects;
import j$.util.Spliterator;
import java.util.Collection;
import java.util.Iterator;
import java.util.function.Consumer;
import java.util.function.IntFunction;

/* loaded from: classes2.dex */
public final class M0 implements I0 {

    /* renamed from: a, reason: collision with root package name */
    public final Collection f20905a;

    public M0(Collection collection) {
        this.f20905a = collection;
    }

    @Override // j$.util.stream.I0
    public final I0 a(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // j$.util.stream.I0
    public final long count() {
        return this.f20905a.size();
    }

    @Override // j$.util.stream.I0
    public final void forEach(Consumer consumer) {
        Collection collection = this.f20905a;
        if (collection instanceof j$.util.Collection) {
            ((j$.util.Collection) collection).forEach(consumer);
            return;
        }
        Objects.requireNonNull(consumer);
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            consumer.n(it.next());
        }
    }

    @Override // j$.util.stream.I0
    public final /* synthetic */ I0 i(long j, long j2, IntFunction intFunction) {
        return AbstractC0405x1.V(this, j, j2, intFunction);
    }

    @Override // j$.util.stream.I0
    public final void k(Object[] objArr, int i) {
        Iterator it = this.f20905a.iterator();
        while (it.hasNext()) {
            objArr[i] = it.next();
            i++;
        }
    }

    @Override // j$.util.stream.I0
    public final Object[] m(IntFunction intFunction) {
        Collection collection = this.f20905a;
        return collection.toArray((Object[]) intFunction.apply(collection.size()));
    }

    @Override // j$.util.stream.I0
    public final /* synthetic */ int o() {
        return 0;
    }

    @Override // j$.util.stream.I0
    public final Spliterator spliterator() {
        return Collection.b.stream(this.f20905a).spliterator();
    }

    public final String toString() {
        return String.format("CollectionNode[%d][%s]", Integer.valueOf(this.f20905a.size()), this.f20905a);
    }
}
