package g;

import java.lang.reflect.Array;
import java.lang.reflect.Type;
import java.util.Collection;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class cne extends bgf {

    /* renamed from: a, reason: collision with root package name */
    public final Collection f13168a;

    /* renamed from: b, reason: collision with root package name */
    public final Map f13169b;

    /* renamed from: c, reason: collision with root package name */
    public final int f13170c;

    /* renamed from: g, reason: collision with root package name */
    public final List f13171g;
    public final ccw h;
    public final Object j;

    public cne(ccw ccwVar, List list, int i) {
        super(0, (Object) null);
        this.h = ccwVar;
        this.f13170c = i;
        this.f13171g = list;
        this.j = null;
        this.f13169b = null;
        this.f13168a = null;
    }

    public cne(Object obj, Map map) {
        super(0, (Object) null);
        this.h = null;
        this.f13170c = -1;
        this.f13171g = null;
        this.j = obj;
        this.f13169b = map;
        this.f13168a = null;
    }

    public cne(Collection collection) {
        super(0, (Object) null);
        this.h = null;
        this.f13170c = -1;
        this.f13171g = null;
        this.j = null;
        this.f13169b = null;
        this.f13168a = collection;
    }

    @Override // g.bgf
    public final void _t(Object obj, Type type, Map map, ccw ccwVar) {
    }

    @Override // g.bgf
    public final void ag(Object obj, Object obj2) {
        grv grvVar;
        Object obj3;
        Map map = this.f13169b;
        if (map != null) {
            map.put(this.j, obj2);
            return;
        }
        Collection collection = this.f13168a;
        if (collection != null) {
            collection.add(obj2);
            return;
        }
        List list = this.f13171g;
        int i = this.f13170c;
        list.set(i, obj2);
        if (!(list instanceof grv) || (obj3 = (grvVar = (grv) list).l) == null || Array.getLength(obj3) <= i) {
            return;
        }
        Type type = grvVar.k;
        if (type != null) {
            obj2 = dtu.s(obj2, type, this.h.k);
        }
        Array.set(obj3, i, obj2);
    }
}
