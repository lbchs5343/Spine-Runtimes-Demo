package g;

import java.util.List;
import java.util.ListIterator;

/* loaded from: classes3.dex */
public final class ol extends dqw implements ListIterator {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ dtv f19768a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ol(dtv dtvVar) {
        super(dtvVar);
        this.f19768a = dtvVar;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ol(dtv dtvVar, int i) {
        super(dtvVar, ((List) dtvVar.f14799e).listIterator(i));
        this.f19768a = dtvVar;
    }

    @Override // java.util.ListIterator
    public final void add(Object obj) {
        dtv dtvVar = this.f19768a;
        boolean isEmpty = dtvVar.isEmpty();
        f();
        ((ListIterator) this.f14656e).add(obj);
        dtvVar.f14800f.f18558e++;
        if (isEmpty) {
            dtvVar.g();
        }
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        f();
        return ((ListIterator) this.f14656e).hasPrevious();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        f();
        return ((ListIterator) this.f14656e).nextIndex();
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        f();
        return ((ListIterator) this.f14656e).previous();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        f();
        return ((ListIterator) this.f14656e).previousIndex();
    }

    @Override // java.util.ListIterator
    public final void set(Object obj) {
        f();
        ((ListIterator) this.f14656e).set(obj);
    }
}
