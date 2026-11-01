package g;

import java.util.ListIterator;
import java.util.NoSuchElementException;

/* loaded from: classes.dex */
public final class ami extends bve implements ListIterator {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ dfj f10472a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ami(dfj dfjVar, int i) {
        super(0, (Object) dfjVar);
        this.f10472a = dfjVar;
        int a2 = dfjVar.a();
        if (i < 0 || i > a2) {
            throw new IndexOutOfBoundsException(tn.t(i, a2, "index: ", ", size: "));
        }
        this.f12262d = i;
    }

    @Override // java.util.ListIterator
    public final void add(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f12262d > 0;
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f12262d;
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        if (!hasPrevious()) {
            throw new NoSuchElementException();
        }
        int i = this.f12262d - 1;
        this.f12262d = i;
        return this.f10472a.get(i);
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f12262d - 1;
    }

    @Override // java.util.ListIterator
    public final void set(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
