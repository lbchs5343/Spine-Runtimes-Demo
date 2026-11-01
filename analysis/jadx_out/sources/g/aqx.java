package g;

import java.util.AbstractList;
import java.util.ConcurrentModificationException;
import java.util.ListIterator;
import java.util.NoSuchElementException;

/* loaded from: classes.dex */
public final class aqx implements ListIterator {

    /* renamed from: b, reason: collision with root package name */
    public int f10676b;

    /* renamed from: c, reason: collision with root package name */
    public final ddt f10677c;

    /* renamed from: e, reason: collision with root package name */
    public int f10679e;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f10678d = 0;

    /* renamed from: a, reason: collision with root package name */
    public int f10675a = -1;

    public aqx(dcf dcfVar, int i) {
        int i2;
        this.f10677c = dcfVar;
        this.f10679e = i;
        i2 = ((AbstractList) dcfVar).modCount;
        this.f10676b = i2;
    }

    public aqx(fsq fsqVar, int i) {
        int i2;
        this.f10677c = fsqVar;
        this.f10679e = i;
        i2 = ((AbstractList) fsqVar).modCount;
        this.f10676b = i2;
    }

    @Override // java.util.ListIterator
    public final void add(Object obj) {
        int i;
        int i2;
        switch (this.f10678d) {
            case 0:
                f();
                dcf dcfVar = (dcf) this.f10677c;
                int i3 = this.f10679e;
                this.f10679e = i3 + 1;
                dcfVar.add(i3, obj);
                this.f10675a = -1;
                i = ((AbstractList) dcfVar).modCount;
                this.f10676b = i;
                break;
            default:
                g();
                fsq fsqVar = (fsq) this.f10677c;
                int i4 = this.f10679e;
                this.f10679e = i4 + 1;
                fsqVar.add(i4, obj);
                this.f10675a = -1;
                i2 = ((AbstractList) fsqVar).modCount;
                this.f10676b = i2;
                break;
        }
    }

    public void f() {
        fsq fsqVar;
        int i;
        fsqVar = ((dcf) this.f10677c).root;
        i = ((AbstractList) fsqVar).modCount;
        if (i != this.f10676b) {
            throw new ConcurrentModificationException();
        }
    }

    public void g() {
        int i;
        i = ((AbstractList) ((fsq) this.f10677c)).modCount;
        if (i != this.f10676b) {
            throw new ConcurrentModificationException();
        }
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final boolean hasNext() {
        int i;
        int i2;
        switch (this.f10678d) {
            case 0:
                int i3 = this.f10679e;
                i = ((dcf) this.f10677c).length;
                if (i3 < i) {
                }
                break;
            default:
                int i4 = this.f10679e;
                i2 = ((fsq) this.f10677c).length;
                if (i4 < i2) {
                }
                break;
        }
        return false;
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        switch (this.f10678d) {
            case 0:
                if (this.f10679e > 0) {
                }
                break;
            default:
                if (this.f10679e > 0) {
                }
                break;
        }
        return false;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final Object next() {
        int i;
        Object[] objArr;
        int i2;
        int i3;
        Object[] objArr2;
        switch (this.f10678d) {
            case 0:
                f();
                int i4 = this.f10679e;
                dcf dcfVar = (dcf) this.f10677c;
                i = dcfVar.length;
                if (i4 >= i) {
                    throw new NoSuchElementException();
                }
                int i5 = this.f10679e;
                this.f10679e = i5 + 1;
                this.f10675a = i5;
                objArr = dcfVar.backing;
                i2 = dcfVar.offset;
                return objArr[i2 + this.f10675a];
            default:
                g();
                int i6 = this.f10679e;
                fsq fsqVar = (fsq) this.f10677c;
                i3 = fsqVar.length;
                if (i6 >= i3) {
                    throw new NoSuchElementException();
                }
                int i7 = this.f10679e;
                this.f10679e = i7 + 1;
                this.f10675a = i7;
                objArr2 = fsqVar.backing;
                return objArr2[this.f10675a];
        }
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        switch (this.f10678d) {
        }
        return this.f10679e;
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        Object[] objArr;
        int i;
        Object[] objArr2;
        switch (this.f10678d) {
            case 0:
                dcf dcfVar = (dcf) this.f10677c;
                f();
                int i2 = this.f10679e;
                if (i2 <= 0) {
                    throw new NoSuchElementException();
                }
                int i3 = i2 - 1;
                this.f10679e = i3;
                this.f10675a = i3;
                objArr = dcfVar.backing;
                i = dcfVar.offset;
                return objArr[i + this.f10675a];
            default:
                g();
                int i4 = this.f10679e;
                if (i4 <= 0) {
                    throw new NoSuchElementException();
                }
                int i5 = i4 - 1;
                this.f10679e = i5;
                this.f10675a = i5;
                objArr2 = ((fsq) this.f10677c).backing;
                return objArr2[this.f10675a];
        }
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        int i;
        switch (this.f10678d) {
            case 0:
                i = this.f10679e;
                break;
            default:
                i = this.f10679e;
                break;
        }
        return i - 1;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final void remove() {
        int i;
        int i2;
        switch (this.f10678d) {
            case 0:
                dcf dcfVar = (dcf) this.f10677c;
                f();
                int i3 = this.f10675a;
                if (i3 == -1) {
                    throw new IllegalStateException("Call next() or previous() before removing element from the iterator.");
                }
                dcfVar.m(i3);
                this.f10679e = this.f10675a;
                this.f10675a = -1;
                i = ((AbstractList) dcfVar).modCount;
                this.f10676b = i;
                return;
            default:
                fsq fsqVar = (fsq) this.f10677c;
                g();
                int i4 = this.f10675a;
                if (i4 == -1) {
                    throw new IllegalStateException("Call next() or previous() before removing element from the iterator.");
                }
                fsqVar.m(i4);
                this.f10679e = this.f10675a;
                this.f10675a = -1;
                i2 = ((AbstractList) fsqVar).modCount;
                this.f10676b = i2;
                return;
        }
    }

    @Override // java.util.ListIterator
    public final void set(Object obj) {
        switch (this.f10678d) {
            case 0:
                f();
                int i = this.f10675a;
                if (i == -1) {
                    throw new IllegalStateException("Call next() or previous() before replacing element from the iterator.");
                }
                ((dcf) this.f10677c).set(i, obj);
                return;
            default:
                g();
                int i2 = this.f10675a;
                if (i2 == -1) {
                    throw new IllegalStateException("Call next() or previous() before replacing element from the iterator.");
                }
                ((fsq) this.f10677c).set(i2, obj);
                return;
        }
    }
}
