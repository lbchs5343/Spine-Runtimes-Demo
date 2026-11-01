package g;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes.dex */
public final class duj implements Iterator {

    /* renamed from: a, reason: collision with root package name */
    public boolean f14831a = false;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ akj f14832b;

    /* renamed from: c, reason: collision with root package name */
    public int f14833c;

    /* renamed from: d, reason: collision with root package name */
    public int f14834d;

    public duj(akj akjVar) {
        this.f14832b = akjVar;
        this.f14833c = ((cmg) akjVar.f10384f).f13116g;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f14834d < this.f14833c;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        int i = this.f14834d;
        Object obj = ((cmg) this.f14832b.f10384f).j[i];
        this.f14834d = i + 1;
        this.f14831a = true;
        return obj;
    }

    @Override // java.util.Iterator
    public final void remove() {
        if (!this.f14831a) {
            throw new IllegalStateException();
        }
        int i = this.f14834d - 1;
        this.f14834d = i;
        this.f14833c--;
        this.f14831a = false;
        ((cmg) this.f14832b.f10384f).m(i);
    }
}
