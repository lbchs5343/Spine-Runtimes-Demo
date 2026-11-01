package g;

import java.util.Iterator;

/* loaded from: classes3.dex */
public abstract class auh implements Iterator {

    /* renamed from: b, reason: collision with root package name */
    public final Iterator f10864b;

    public auh(Iterator it) {
        it.getClass();
        this.f10864b = it;
    }

    public abstract Object a(Object obj);

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f10864b.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        return a(this.f10864b.next());
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.f10864b.remove();
    }
}
