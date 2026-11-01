package g;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes.dex */
public final class dvu implements Iterator {

    /* renamed from: a, reason: collision with root package name */
    public int f14901a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Iterable f14902b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f14903c;

    /* renamed from: d, reason: collision with root package name */
    public int f14904d;

    public dvu(aki akiVar) {
        this.f14903c = 1;
        this.f14902b = akiVar;
        this.f14904d = 0;
        this.f14901a = akiVar.g();
    }

    public dvu(cyb cybVar) {
        this.f14903c = 2;
        this.f14902b = cybVar;
        this.f14904d = 0;
        this.f14901a = cybVar.c();
    }

    public dvu(dqh dqhVar) {
        this.f14903c = 0;
        this.f14902b = dqhVar;
        this.f14904d = dqhVar.f14638a.length;
        this.f14901a = 0;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        switch (this.f14903c) {
            case 0:
                if (this.f14901a < this.f14904d) {
                }
                break;
            case 1:
                if (this.f14904d < this.f14901a) {
                }
                break;
            default:
                if (this.f14904d < this.f14901a) {
                }
                break;
        }
        return false;
    }

    @Override // java.util.Iterator
    public final Object next() {
        switch (this.f14903c) {
            case 0:
                try {
                    Object[] objArr = ((dqh) this.f14902b).f14638a;
                    int i = this.f14901a;
                    this.f14901a = i + 1;
                    return objArr[i];
                } catch (IndexOutOfBoundsException e2) {
                    throw new NoSuchElementException(e2.getMessage());
                }
            case 1:
                int i2 = this.f14904d;
                if (i2 >= this.f14901a) {
                    throw new NoSuchElementException();
                }
                this.f14904d = i2 + 1;
                return Byte.valueOf(((aki) this.f14902b).f(i2));
            default:
                int i3 = this.f14904d;
                if (i3 >= this.f14901a) {
                    throw new NoSuchElementException();
                }
                this.f14904d = i3 + 1;
                return Byte.valueOf(((cyb) this.f14902b).b(i3));
        }
    }

    @Override // java.util.Iterator
    public void remove() {
        switch (this.f14903c) {
            case 1:
                throw new UnsupportedOperationException();
            default:
                throw new UnsupportedOperationException();
        }
    }
}
