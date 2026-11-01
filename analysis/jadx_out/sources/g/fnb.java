package g;

import com.google.android.gms.internal.ads.zzfwq;
import com.google.android.gms.internal.ads.zzfzo;
import com.google.android.gms.internal.ads.zzgbv;
import java.util.NoSuchElementException;

/* loaded from: classes3.dex */
public final class fnb extends zzgbv {

    /* renamed from: a, reason: collision with root package name */
    public final zzfzo f17065a;

    /* renamed from: b, reason: collision with root package name */
    public final int f17066b;

    /* renamed from: c, reason: collision with root package name */
    public int f17067c;

    public fnb(int i, zzfzo zzfzoVar) {
        int size = zzfzoVar.size();
        zzfwq.zzb(i, size, "index");
        this.f17066b = size;
        this.f17067c = i;
        this.f17065a = zzfzoVar;
    }

    public final Object d(int i) {
        return this.f17065a.get(i);
    }

    @Override // java.util.Iterator, java.util.ListIterator
    public final boolean hasNext() {
        return this.f17067c < this.f17066b;
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f17067c > 0;
    }

    @Override // java.util.Iterator, java.util.ListIterator
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        int i = this.f17067c;
        this.f17067c = i + 1;
        return d(i);
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f17067c;
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        if (!hasPrevious()) {
            throw new NoSuchElementException();
        }
        int i = this.f17067c - 1;
        this.f17067c = i;
        return d(i);
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f17067c - 1;
    }
}
