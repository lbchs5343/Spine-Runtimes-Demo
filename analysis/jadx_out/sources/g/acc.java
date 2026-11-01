package g;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes.dex */
public final class acc implements Iterator {

    /* renamed from: a, reason: collision with root package name */
    public boolean f9963a;

    /* renamed from: b, reason: collision with root package name */
    public int f9964b;

    /* renamed from: c, reason: collision with root package name */
    public final int f9965c;

    /* renamed from: d, reason: collision with root package name */
    public final int f9966d;

    public acc(int i, int i2, int i3) {
        this.f9965c = i3;
        this.f9966d = i2;
        boolean z = false;
        if (i3 <= 0 ? i >= i2 : i <= i2) {
            z = true;
        }
        this.f9963a = z;
        this.f9964b = z ? i : i2;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f9963a;
    }

    @Override // java.util.Iterator
    public final Object next() {
        int i = this.f9964b;
        if (i != this.f9966d) {
            this.f9964b = this.f9965c + i;
        } else {
            if (!this.f9963a) {
                throw new NoSuchElementException();
            }
            this.f9963a = false;
        }
        return Integer.valueOf(i);
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
