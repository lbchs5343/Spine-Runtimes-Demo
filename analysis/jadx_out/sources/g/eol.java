package g;

import java.util.AbstractMap;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;

/* loaded from: classes3.dex */
public final class eol extends AbstractMap {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f15899a = 0;

    /* renamed from: b, reason: collision with root package name */
    public Map f15900b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f15901c;

    /* renamed from: d, reason: collision with root package name */
    public volatile bni f15902d;

    /* renamed from: e, reason: collision with root package name */
    public Object[] f15903e;

    /* renamed from: f, reason: collision with root package name */
    public int f15904f;

    /* renamed from: g, reason: collision with root package name */
    public Map f15905g;

    public eol() {
        Map map = Collections.EMPTY_MAP;
        this.f15900b = map;
        this.f15905g = map;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        n();
        if (this.f15904f != 0) {
            this.f15903e = null;
            this.f15904f = 0;
        }
        if (this.f15900b.isEmpty()) {
            return;
        }
        this.f15900b.clear();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return h(comparable) >= 0 || this.f15900b.containsKey(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        if (this.f15902d == null) {
            this.f15902d = new bni(this, 1);
        }
        return this.f15902d;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof eol)) {
            return super.equals(obj);
        }
        eol eolVar = (eol) obj;
        int size = size();
        if (size == eolVar.size()) {
            int i = this.f15904f;
            if (i != eolVar.f15904f) {
                return entrySet().equals(eolVar.entrySet());
            }
            for (int i2 = 0; i2 < i; i2++) {
                if (m(i2).equals(eolVar.m(i2))) {
                }
            }
            if (i != size) {
                return this.f15900b.equals(eolVar.f15900b);
            }
            return true;
        }
        return false;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int h = h(comparable);
        return h >= 0 ? ((asf) this.f15903e[h]).f10745c : this.f15900b.get(comparable);
    }

    public final int h(Comparable comparable) {
        int i = this.f15904f;
        int i2 = i - 1;
        int i3 = 0;
        if (i2 >= 0) {
            int compareTo = comparable.compareTo(((asf) this.f15903e[i2]).f10744b);
            if (compareTo > 0) {
                return -(i + 1);
            }
            if (compareTo == 0) {
                return i2;
            }
        }
        while (i3 <= i2) {
            int i4 = (i3 + i2) / 2;
            int compareTo2 = comparable.compareTo(((asf) this.f15903e[i4]).f10744b);
            if (compareTo2 < 0) {
                i2 = i4 - 1;
            } else {
                if (compareTo2 <= 0) {
                    return i4;
                }
                i3 = i4 + 1;
            }
        }
        return -(i3 + 1);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        int i = this.f15904f;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            i2 += this.f15903e[i3].hashCode();
        }
        return this.f15900b.size() > 0 ? this.f15900b.hashCode() + i2 : i2;
    }

    public final Object i(int i) {
        n();
        Object[] objArr = this.f15903e;
        Object obj = ((asf) objArr[i]).f10745c;
        System.arraycopy(objArr, i + 1, objArr, i, (this.f15904f - i) - 1);
        this.f15904f--;
        if (!this.f15900b.isEmpty()) {
            Iterator it = k().entrySet().iterator();
            Object[] objArr2 = this.f15903e;
            int i2 = this.f15904f;
            Map.Entry entry = (Map.Entry) it.next();
            objArr2[i2] = new asf(this, (Comparable) entry.getKey(), entry.getValue());
            this.f15904f++;
            it.remove();
        }
        return obj;
    }

    public final Set j() {
        return this.f15900b.isEmpty() ? Collections.EMPTY_SET : this.f15900b.entrySet();
    }

    public final SortedMap k() {
        n();
        if (this.f15900b.isEmpty() && !(this.f15900b instanceof TreeMap)) {
            TreeMap treeMap = new TreeMap();
            this.f15900b = treeMap;
            this.f15905g = treeMap.descendingMap();
        }
        return (SortedMap) this.f15900b;
    }

    @Override // java.util.AbstractMap, java.util.Map
    /* renamed from: l, reason: merged with bridge method [inline-methods] */
    public final Object put(Comparable comparable, Object obj) {
        n();
        int h = h(comparable);
        if (h >= 0) {
            return ((asf) this.f15903e[h]).setValue(obj);
        }
        n();
        if (this.f15903e == null) {
            this.f15903e = new Object[16];
        }
        int i = -(h + 1);
        if (i >= 16) {
            return k().put(comparable, obj);
        }
        if (this.f15904f == 16) {
            asf asfVar = (asf) this.f15903e[15];
            this.f15904f = 15;
            k().put(asfVar.f10744b, asfVar.f10745c);
        }
        Object[] objArr = this.f15903e;
        int length = objArr.length;
        System.arraycopy(objArr, i, objArr, i + 1, 15 - i);
        this.f15903e[i] = new asf(this, comparable, obj);
        this.f15904f++;
        return null;
    }

    public final asf m(int i) {
        if (i < this.f15904f) {
            return (asf) this.f15903e[i];
        }
        throw new ArrayIndexOutOfBoundsException(i);
    }

    public final void n() {
        if (this.f15901c) {
            throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object remove(Object obj) {
        n();
        Comparable comparable = (Comparable) obj;
        int h = h(comparable);
        if (h >= 0) {
            return i(h);
        }
        if (this.f15900b.isEmpty()) {
            return null;
        }
        return this.f15900b.remove(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.f15900b.size() + this.f15904f;
    }
}
