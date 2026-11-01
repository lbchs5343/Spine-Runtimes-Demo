package g;

import j$.util.Map;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.Function;

/* loaded from: classes.dex */
public final class tl extends bcp implements Map, j$.util.Map {

    /* renamed from: a, reason: collision with root package name */
    public bni f20045a;

    /* renamed from: b, reason: collision with root package name */
    public bxl f20046b;

    /* renamed from: c, reason: collision with root package name */
    public bow f20047c;

    public tl() {
        super(0);
    }

    @Override // java.util.Map, j$.util.Map
    public final /* synthetic */ Object compute(Object obj, BiFunction biFunction) {
        return Map.a.$default$compute(this, obj, biFunction);
    }

    @Override // java.util.Map, j$.util.Map
    public final /* synthetic */ Object computeIfAbsent(Object obj, Function function) {
        return Map.a.$default$computeIfAbsent(this, obj, function);
    }

    @Override // java.util.Map, j$.util.Map
    public final /* synthetic */ Object computeIfPresent(Object obj, BiFunction biFunction) {
        return Map.a.$default$computeIfPresent(this, obj, biFunction);
    }

    public final boolean d(Collection collection) {
        int i = this.f11294g;
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            super.remove(it.next());
        }
        return i != this.f11294g;
    }

    public final boolean e(Collection collection) {
        int i = this.f11294g;
        for (int i2 = i - 1; i2 >= 0; i2--) {
            if (!collection.contains(n(i2))) {
                r(i2);
            }
        }
        return i != this.f11294g;
    }

    @Override // java.util.Map
    public final Set entrySet() {
        bni bniVar = this.f20045a;
        if (bniVar != null) {
            return bniVar;
        }
        bni bniVar2 = new bni(this, 0);
        this.f20045a = bniVar2;
        return bniVar2;
    }

    public final boolean f(Collection collection) {
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            if (!super.containsKey(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Map, j$.util.Map
    public final /* synthetic */ void forEach(BiConsumer biConsumer) {
        Map.a.$default$forEach(this, biConsumer);
    }

    @Override // java.util.Map
    public final Set keySet() {
        bxl bxlVar = this.f20046b;
        if (bxlVar != null) {
            return bxlVar;
        }
        bxl bxlVar2 = new bxl(0, this);
        this.f20046b = bxlVar2;
        return bxlVar2;
    }

    @Override // java.util.Map, j$.util.Map
    public final /* synthetic */ Object merge(Object obj, Object obj2, BiFunction biFunction) {
        return Map.a.$default$merge(this, obj, obj2, biFunction);
    }

    @Override // java.util.Map
    public final void putAll(java.util.Map map) {
        p(map.size() + this.f11294g);
        for (Map.Entry entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override // java.util.Map, j$.util.Map
    public final /* synthetic */ void replaceAll(BiFunction biFunction) {
        Map.a.$default$replaceAll(this, biFunction);
    }

    @Override // java.util.Map
    public final Collection values() {
        bow bowVar = this.f20047c;
        if (bowVar != null) {
            return bowVar;
        }
        bow bowVar2 = new bow(this);
        this.f20047c = bowVar2;
        return bowVar2;
    }
}
