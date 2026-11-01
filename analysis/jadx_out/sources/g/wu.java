package g;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes.dex */
public final class wu implements Iterator, bdp {

    /* renamed from: a, reason: collision with root package name */
    public Iterator f20245a;

    /* renamed from: b, reason: collision with root package name */
    public bdp f20246b;

    /* renamed from: c, reason: collision with root package name */
    public int f20247c;

    /* renamed from: d, reason: collision with root package name */
    public Object f20248d;

    @Override // g.bdp
    public final void _z(Object obj) {
        eg.k(obj);
        this.f20247c = 4;
    }

    public final RuntimeException e() {
        int i = this.f20247c;
        if (i == 4) {
            return new NoSuchElementException();
        }
        if (i == 5) {
            return new IllegalStateException("Iterator has failed.");
        }
        return new IllegalStateException("Unexpected state of the iterator: " + this.f20247c);
    }

    @Override // g.bdp
    public final boj getContext() {
        return cgq.f12850a;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        while (true) {
            int i = this.f20247c;
            if (i != 0) {
                if (i != 1) {
                    if (i == 2 || i == 3) {
                        return true;
                    }
                    if (i == 4) {
                        return false;
                    }
                    throw e();
                }
                Iterator it = this.f20245a;
                bff.d(it);
                if (it.hasNext()) {
                    this.f20247c = 2;
                    return true;
                }
                this.f20245a = null;
            }
            this.f20247c = 5;
            bdp bdpVar = this.f20246b;
            bff.d(bdpVar);
            this.f20246b = null;
            bdpVar._z(dgi.f14134a);
        }
    }

    @Override // java.util.Iterator
    public final Object next() {
        int i = this.f20247c;
        if (i == 0 || i == 1) {
            if (hasNext()) {
                return next();
            }
            throw new NoSuchElementException();
        }
        if (i == 2) {
            this.f20247c = 1;
            Iterator it = this.f20245a;
            bff.d(it);
            return it.next();
        }
        if (i != 3) {
            throw e();
        }
        this.f20247c = 0;
        Object obj = this.f20248d;
        this.f20248d = null;
        return obj;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
