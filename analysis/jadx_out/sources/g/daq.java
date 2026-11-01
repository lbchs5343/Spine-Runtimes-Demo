package g;

import java.util.Iterator;
import java.util.Map;

/* loaded from: classes3.dex */
public final class daq implements Iterator {

    /* renamed from: a, reason: collision with root package name */
    public Iterator f13866a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ eol f13867b;

    /* renamed from: c, reason: collision with root package name */
    public int f13868c = -1;

    /* renamed from: d, reason: collision with root package name */
    public boolean f13869d;

    public /* synthetic */ daq(eol eolVar) {
        this.f13867b = eolVar;
    }

    public final Iterator e() {
        if (this.f13866a == null) {
            this.f13866a = this.f13867b.f15900b.entrySet().iterator();
        }
        return this.f13866a;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int i = this.f13868c + 1;
        eol eolVar = this.f13867b;
        if (i >= eolVar.f15904f) {
            return !eolVar.f15900b.isEmpty() && e().hasNext();
        }
        return true;
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        this.f13869d = true;
        int i = this.f13868c + 1;
        this.f13868c = i;
        eol eolVar = this.f13867b;
        return i < eolVar.f15904f ? (asf) eolVar.f15903e[i] : (Map.Entry) e().next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        if (!this.f13869d) {
            throw new IllegalStateException("remove() was called before next()");
        }
        this.f13869d = false;
        int i = eol.f15899a;
        eol eolVar = this.f13867b;
        eolVar.n();
        int i2 = this.f13868c;
        if (i2 >= eolVar.f15904f) {
            e().remove();
        } else {
            this.f13868c = i2 - 1;
            eolVar.i(i2);
        }
    }
}
