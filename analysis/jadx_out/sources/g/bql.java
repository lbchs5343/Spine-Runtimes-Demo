package g;

import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes3.dex */
public final class bql implements Iterator {

    /* renamed from: a, reason: collision with root package name */
    public int f12018a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ bny f12019b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f12020c;

    /* renamed from: d, reason: collision with root package name */
    public eqr f12021d;

    /* renamed from: e, reason: collision with root package name */
    public eqr f12022e = null;

    public bql(bny bnyVar, int i) {
        this.f12020c = i;
        this.f12019b = bnyVar;
        this.f12021d = bnyVar.header.f16006d;
        this.f12018a = bnyVar.modCount;
    }

    public final Object f() {
        return g();
    }

    public final eqr g() {
        eqr eqrVar = this.f12021d;
        bny bnyVar = this.f12019b;
        if (eqrVar == bnyVar.header) {
            throw new NoSuchElementException();
        }
        if (bnyVar.modCount != this.f12018a) {
            throw new ConcurrentModificationException();
        }
        this.f12021d = eqrVar.f16006d;
        this.f12022e = eqrVar;
        return eqrVar;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f12021d != this.f12019b.header;
    }

    @Override // java.util.Iterator
    public Object next() {
        switch (this.f12020c) {
            case 1:
                return g().i;
            default:
                return f();
        }
    }

    @Override // java.util.Iterator
    public final void remove() {
        eqr eqrVar = this.f12022e;
        if (eqrVar == null) {
            throw new IllegalStateException();
        }
        bny bnyVar = this.f12019b;
        bnyVar.g(eqrVar, true);
        this.f12022e = null;
        this.f12018a = bnyVar.modCount;
    }
}
