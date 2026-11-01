package g;

import android.view.View;
import j$.util.Collection;
import j$.util.stream.Collectors;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.function.Predicate;

/* loaded from: classes3.dex */
public final class gcu {

    /* renamed from: a, reason: collision with root package name */
    public Object f17894a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f17895b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f17896c;

    /* renamed from: d, reason: collision with root package name */
    public final Object f17897d;

    /* renamed from: e, reason: collision with root package name */
    public int f17898e;

    /* renamed from: f, reason: collision with root package name */
    public int f17899f;

    public gcu(View view) {
        this.f17896c = 0;
        this.f17897d = new int[2];
        this.f17895b = view;
    }

    public gcu(hed hedVar, zf zfVar, ur urVar) {
        this.f17896c = 1;
        this.f17897d = new IdentityHashMap();
        this.f17899f = 0;
        this.f17894a = hedVar;
        this.f17895b = zfVar;
        this.f17898e = hedVar.y * urVar.u;
    }

    public cwx g(gsh gshVar) {
        gpf gpfVar = (gpf) ((IdentityHashMap) this.f17897d).get(gshVar);
        return gpfVar != null ? gpfVar.f18532a : gshVar.j();
    }

    public void h(anp anpVar, List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            if ((((cer) it.next()).f12757a.h() & 8) != 0) {
                ((View) this.f17895b).setTranslationY(gtk.g(this.f17899f, r3.f12757a.g(), 0));
                return;
            }
        }
    }

    public void i(gsh gshVar) {
        IdentityHashMap identityHashMap = (IdentityHashMap) this.f17897d;
        gpf gpfVar = (gpf) identityHashMap.remove(gshVar);
        if (gpfVar != null) {
            final int i = gpfVar.f18533b;
            Collection.b.removeIf(identityHashMap.values(), new Predicate() { // from class: g.agg
                public final /* synthetic */ Predicate and(Predicate predicate) {
                    return j$.util.function.m.$default$and(this, predicate);
                }

                public final /* synthetic */ Predicate negate() {
                    return j$.util.function.m.$default$negate(this);
                }

                public final /* synthetic */ Predicate or(Predicate predicate) {
                    return j$.util.function.m.$default$or(this, predicate);
                }

                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    return ((gpf) obj).f18533b > i;
                }
            });
        }
    }

    public String toString() {
        switch (this.f17896c) {
            case 1:
                return "TypeUpdateInfo{" + ((zf) this.f17895b) + ' ' + ((List) Collection.b.stream(((IdentityHashMap) this.f17897d).values()).sorted().collect(Collectors.toList())) + '}';
            default:
                return super.toString();
        }
    }
}
