package g;

import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class cst implements Iterable {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f13452a = new ArrayList();

    /* renamed from: b, reason: collision with root package name */
    public final ub f13453b;

    public cst(ub ubVar) {
        this.f13453b = ubVar;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return this.f13452a.iterator();
    }
}
