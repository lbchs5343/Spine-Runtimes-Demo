package g;

import java.util.Iterator;

/* loaded from: classes.dex */
public final class fgr implements Iterable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ jl f16750a;

    public fgr(jl jlVar) {
        this.f16750a = jlVar;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new fdz(this.f16750a);
    }
}
