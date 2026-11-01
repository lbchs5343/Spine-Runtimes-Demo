package g;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes.dex */
public final class hx implements Iterator {

    /* renamed from: a, reason: collision with root package name */
    public boolean f19394a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f19395b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f19396c;

    /* renamed from: d, reason: collision with root package name */
    public int f19397d;

    /* renamed from: e, reason: collision with root package name */
    public int f19398e;

    public hx(int i) {
        this.f19397d = i;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public hx(glm glmVar) {
        this(glmVar.f18350a);
        this.f19395b = 2;
        this.f19396c = glmVar;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public hx(tl tlVar, int i) {
        this(tlVar.f11294g);
        this.f19395b = i;
        switch (i) {
            case 1:
                this.f19396c = tlVar;
                this(tlVar.f11294g);
                break;
            default:
                this.f19396c = tlVar;
                break;
        }
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f19398e < this.f19397d;
    }

    @Override // java.util.Iterator
    public final Object next() {
        Object n;
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        int i = this.f19398e;
        switch (this.f19395b) {
            case 0:
                n = ((tl) this.f19396c).n(i);
                break;
            case 1:
                n = ((tl) this.f19396c).o(i);
                break;
            default:
                n = ((glm) this.f19396c).f18352c[i];
                break;
        }
        this.f19398e++;
        this.f19394a = true;
        return n;
    }

    @Override // java.util.Iterator
    public final void remove() {
        if (!this.f19394a) {
            throw new IllegalStateException("Call next() before removing an element.");
        }
        int i = this.f19398e - 1;
        this.f19398e = i;
        switch (this.f19395b) {
            case 0:
                ((tl) this.f19396c).r(i);
                break;
            case 1:
                ((tl) this.f19396c).r(i);
                break;
            default:
                ((glm) this.f19396c).d(i);
                break;
        }
        this.f19397d--;
        this.f19394a = false;
    }
}
