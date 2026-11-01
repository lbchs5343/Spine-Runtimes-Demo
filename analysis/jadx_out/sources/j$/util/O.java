package j$.util;

import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.function.Consumer;

/* loaded from: classes2.dex */
public final class O implements Iterator, Consumer {

    /* renamed from: a, reason: collision with root package name */
    public boolean f20677a = false;

    /* renamed from: b, reason: collision with root package name */
    public Object f20678b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Spliterator f20679c;

    public O(Spliterator spliterator) {
        this.f20679c = spliterator;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        this.f20677a = true;
        this.f20678b = obj;
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return j$.util.function.j.$default$andThen(this, consumer);
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (!this.f20677a) {
            this.f20679c.tryAdvance(this);
        }
        return this.f20677a;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!this.f20677a && !hasNext()) {
            throw new NoSuchElementException();
        }
        this.f20677a = false;
        return this.f20678b;
    }
}
