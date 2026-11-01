package g;

import java.util.BitSet;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;

/* loaded from: classes.dex */
public final class fdz implements Iterator {

    /* renamed from: a, reason: collision with root package name */
    public int f16635a;

    /* renamed from: b, reason: collision with root package name */
    public int f16636b;

    /* renamed from: c, reason: collision with root package name */
    public Object f16637c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f16638d;

    /* renamed from: e, reason: collision with root package name */
    public int f16639e;

    /* renamed from: f, reason: collision with root package name */
    public final Object f16640f;

    public fdz(jl jlVar) {
        this.f16638d = 1;
        this.f16640f = jlVar;
        this.f16639e = -1;
        int length = jlVar.f19491a.length();
        if (length < 0) {
            throw new IllegalArgumentException(awf.b(length, "Cannot coerce value to an empty range: maximum ", " is less than minimum 0."));
        }
        length = length >= 0 ? 0 : length;
        this.f16635a = length;
        this.f16636b = length;
    }

    public fdz(BitSet bitSet, int i, List list) {
        this.f16638d = 0;
        this.f16637c = bitSet;
        this.f16639e = i;
        this.f16640f = list;
    }

    public void g() {
        jl jlVar = (jl) this.f16640f;
        CharSequence charSequence = jlVar.f19491a;
        int i = this.f16636b;
        if (i < 0) {
            this.f16639e = 0;
            this.f16637c = null;
            return;
        }
        if (i > charSequence.length()) {
            this.f16637c = new gex(this.f16635a, dcv.bl(charSequence), 1);
            this.f16636b = -1;
        } else {
            ger gerVar = (ger) jlVar.f19492b.d(charSequence, Integer.valueOf(this.f16636b));
            if (gerVar == null) {
                this.f16637c = new gex(this.f16635a, dcv.bl(charSequence), 1);
                this.f16636b = -1;
            } else {
                int intValue = ((Number) gerVar.b()).intValue();
                int intValue2 = ((Number) gerVar.c()).intValue();
                this.f16637c = afo.ah(this.f16635a, intValue);
                int i2 = intValue + intValue2;
                this.f16635a = i2;
                this.f16636b = i2 + (intValue2 == 0 ? 1 : 0);
            }
        }
        this.f16639e = 1;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        switch (this.f16638d) {
            case 0:
                return this.f16635a != this.f16639e;
            default:
                if (this.f16639e == -1) {
                    g();
                }
                return this.f16639e == 1;
        }
    }

    @Override // java.util.Iterator
    public final Object next() {
        switch (this.f16638d) {
            case 0:
                int nextSetBit = ((BitSet) this.f16637c).nextSetBit(this.f16636b);
                if (nextSetBit == -1) {
                    throw new NoSuchElementException();
                }
                this.f16636b = nextSetBit + 1;
                this.f16635a++;
                return (fza) ((List) this.f16640f).get(nextSetBit);
            default:
                if (this.f16639e == -1) {
                    g();
                }
                if (this.f16639e == 0) {
                    throw new NoSuchElementException();
                }
                gex gexVar = (gex) this.f16637c;
                bff.ag(gexVar, "null cannot be cast to non-null type kotlin.ranges.IntRange");
                this.f16637c = null;
                this.f16639e = -1;
                return gexVar;
        }
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
