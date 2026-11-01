package g;

import j$.lang.Iterable;
import j$.util.Spliterator;
import j$.util.Spliterators;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.function.Consumer;

/* loaded from: classes.dex */
public final class fon implements Iterable, Iterable {

    /* renamed from: a, reason: collision with root package name */
    public final hed f17142a;

    /* renamed from: b, reason: collision with root package name */
    public final BitSet f17143b;

    public fon(hed hedVar) {
        this.f17142a = hedVar;
        this.f17143b = new BitSet(hedVar.ak.size());
    }

    public final void c(fza fzaVar) {
        this.f17143b.set(fzaVar.x);
    }

    public final boolean d(fza fzaVar) {
        return this.f17143b.get(fzaVar.x);
    }

    public final List e() {
        BitSet bitSet = this.f17143b;
        if (bitSet == null || bitSet == giu.f18223a) {
            return Collections.EMPTY_LIST;
        }
        int cardinality = bitSet.cardinality();
        if (cardinality == 0) {
            return Collections.EMPTY_LIST;
        }
        List list = this.f17142a.ak;
        ArrayList arrayList = new ArrayList(cardinality);
        int i = 0;
        while (true) {
            int nextSetBit = bitSet.nextSetBit(i);
            if (nextSetBit < 0) {
                return arrayList;
            }
            arrayList.add((fza) list.get(nextSetBit));
            i = nextSetBit + 1;
        }
    }

    @Override // java.lang.Iterable, j$.lang.Iterable
    public final void forEach(Consumer consumer) {
        BitSet bitSet = this.f17143b;
        if (bitSet.isEmpty()) {
            return;
        }
        List list = this.f17142a.ak;
        int i = 0;
        while (true) {
            int nextSetBit = bitSet.nextSetBit(i);
            if (nextSetBit < 0) {
                return;
            }
            consumer.n(list.get(nextSetBit));
            i = nextSetBit + 1;
        }
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        BitSet bitSet = this.f17143b;
        return new fdz(bitSet, bitSet.cardinality(), this.f17142a.ak);
    }

    @Override // java.lang.Iterable, j$.lang.Iterable, j$.util.Collection
    public final Spliterator spliterator() {
        BitSet bitSet = this.f17143b;
        int cardinality = bitSet.cardinality();
        return Spliterators.spliterator(new fdz(bitSet, cardinality, this.f17142a.ak), cardinality, 17);
    }

    @Override // java.lang.Iterable
    public final /* synthetic */ java.util.Spliterator spliterator() {
        return Spliterator.Wrapper.convert(spliterator());
    }

    public final String toString() {
        return e().toString();
    }
}
