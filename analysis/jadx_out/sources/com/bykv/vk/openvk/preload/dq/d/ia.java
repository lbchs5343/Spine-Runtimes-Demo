package com.bykv.vk.openvk.preload.dq.d;

import java.io.Serializable;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;

/* loaded from: classes.dex */
public final class ia<K, V> extends AbstractMap<K, V> implements Serializable {
    static final /* synthetic */ boolean iw = true;
    private static final Comparator<Comparable> mn = new Comparator<Comparable>() { // from class: com.bykv.vk.openvk.preload.dq.d.ia.1
        @Override // java.util.Comparator
        public final /* synthetic */ int compare(Comparable comparable, Comparable comparable2) {
            return comparable.compareTo(comparable2);
        }
    };

    /* renamed from: d, reason: collision with root package name */
    p<K, V> f612d;
    Comparator<? super K> dq;
    private ia<K, V>.dq ia;
    private ia<K, V>.d kk;
    int ox;
    int p;
    final p<K, V> s;

    public final class d extends AbstractSet<K> {
        public d() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            ia.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            return ia.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator<K> iterator() {
            return new ia<K, V>.ox<K>() { // from class: com.bykv.vk.openvk.preload.dq.d.ia.d.1
                {
                    ia iaVar = ia.this;
                }

                @Override // java.util.Iterator
                public final K next() {
                    return dq().iw;
                }
            };
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean remove(Object obj) {
            return ia.this.dq(obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return ia.this.ox;
        }
    }

    public class dq extends AbstractSet<Map.Entry<K, V>> {
        public dq() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            ia.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            return (obj instanceof Map.Entry) && ia.this.dq((Map.Entry<?, ?>) obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator<Map.Entry<K, V>> iterator() {
            return new ia<K, V>.ox<Map.Entry<K, V>>() { // from class: com.bykv.vk.openvk.preload.dq.d.ia.dq.1
                {
                    ia iaVar = ia.this;
                }

                @Override // java.util.Iterator
                public final /* synthetic */ Object next() {
                    return dq();
                }
            };
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean remove(Object obj) {
            p<K, V> dq;
            if (!(obj instanceof Map.Entry) || (dq = ia.this.dq((Map.Entry<?, ?>) obj)) == null) {
                return false;
            }
            ia.this.dq((p) dq, true);
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return ia.this.ox;
        }
    }

    public abstract class ox<T> implements Iterator<T> {

        /* renamed from: d, reason: collision with root package name */
        p<K, V> f613d;
        p<K, V> ox = null;
        int p;

        public ox() {
            this.f613d = ia.this.s.p;
            this.p = ia.this.p;
        }

        public final p<K, V> dq() {
            p<K, V> pVar = this.f613d;
            ia iaVar = ia.this;
            if (pVar == iaVar.s) {
                throw new NoSuchElementException();
            }
            if (iaVar.p != this.p) {
                throw new ConcurrentModificationException();
            }
            this.f613d = pVar.p;
            this.ox = pVar;
            return pVar;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f613d != ia.this.s;
        }

        @Override // java.util.Iterator
        public final void remove() {
            p<K, V> pVar = this.ox;
            if (pVar == null) {
                throw new IllegalStateException();
            }
            ia.this.dq((p) pVar, true);
            this.ox = null;
            this.p = ia.this.p;
        }
    }

    public static final class p<K, V> implements Map.Entry<K, V> {

        /* renamed from: d, reason: collision with root package name */
        p<K, V> f614d;
        p<K, V> dq;
        int ia;
        final K iw;
        V mn;
        p<K, V> ox;
        p<K, V> p;
        p<K, V> s;

        public p() {
            this.iw = null;
            this.s = this;
            this.p = this;
        }

        public p(p<K, V> pVar, K k, p<K, V> pVar2, p<K, V> pVar3) {
            this.dq = pVar;
            this.iw = k;
            this.ia = 1;
            this.p = pVar2;
            this.s = pVar3;
            pVar3.p = this;
            pVar2.s = this;
        }

        @Override // java.util.Map.Entry
        public final boolean equals(Object obj) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                K k = this.iw;
                if (k != null ? k.equals(entry.getKey()) : entry.getKey() == null) {
                    V v = this.mn;
                    if (v == null) {
                        if (entry.getValue() == null) {
                            return true;
                        }
                    } else if (v.equals(entry.getValue())) {
                        return true;
                    }
                }
            }
            return false;
        }

        @Override // java.util.Map.Entry
        public final K getKey() {
            return this.iw;
        }

        @Override // java.util.Map.Entry
        public final V getValue() {
            return this.mn;
        }

        @Override // java.util.Map.Entry
        public final int hashCode() {
            K k = this.iw;
            int hashCode = k == null ? 0 : k.hashCode();
            V v = this.mn;
            return hashCode ^ (v != null ? v.hashCode() : 0);
        }

        @Override // java.util.Map.Entry
        public final V setValue(V v) {
            V v2 = this.mn;
            this.mn = v;
            return v2;
        }

        public final String toString() {
            return this.iw + "=" + this.mn;
        }
    }

    public ia() {
        this(mn);
    }

    private ia(Comparator<? super K> comparator) {
        this.ox = 0;
        this.p = 0;
        this.s = new p<>();
        this.dq = comparator == null ? mn : comparator;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private p<K, V> d(Object obj) {
        if (obj != 0) {
            try {
                return dq((ia<K, V>) obj, false);
            } catch (ClassCastException unused) {
            }
        }
        return null;
    }

    private void d(p<K, V> pVar) {
        p<K, V> pVar2 = pVar.f614d;
        p<K, V> pVar3 = pVar.ox;
        p<K, V> pVar4 = pVar2.f614d;
        p<K, V> pVar5 = pVar2.ox;
        pVar.f614d = pVar5;
        if (pVar5 != null) {
            pVar5.dq = pVar;
        }
        dq(pVar, pVar2);
        pVar2.ox = pVar;
        pVar.dq = pVar2;
        int max = Math.max(pVar3 != null ? pVar3.ia : 0, pVar5 != null ? pVar5.ia : 0) + 1;
        pVar.ia = max;
        pVar2.ia = Math.max(max, pVar4 != null ? pVar4.ia : 0) + 1;
    }

    private void d(p<K, V> pVar, boolean z) {
        while (pVar != null) {
            p<K, V> pVar2 = pVar.f614d;
            p<K, V> pVar3 = pVar.ox;
            int i = pVar2 != null ? pVar2.ia : 0;
            int i2 = pVar3 != null ? pVar3.ia : 0;
            int i3 = i - i2;
            if (i3 == -2) {
                p<K, V> pVar4 = pVar3.f614d;
                p<K, V> pVar5 = pVar3.ox;
                int i4 = (pVar4 != null ? pVar4.ia : 0) - (pVar5 != null ? pVar5.ia : 0);
                if (i4 == -1 || (i4 == 0 && !z)) {
                    dq((p) pVar);
                } else {
                    if (!iw && i4 != 1) {
                        throw new AssertionError();
                    }
                    d((p) pVar3);
                    dq((p) pVar);
                }
                if (z) {
                    return;
                }
            } else if (i3 == 2) {
                p<K, V> pVar6 = pVar2.f614d;
                p<K, V> pVar7 = pVar2.ox;
                int i5 = (pVar6 != null ? pVar6.ia : 0) - (pVar7 != null ? pVar7.ia : 0);
                if (i5 == 1 || (i5 == 0 && !z)) {
                    d((p) pVar);
                } else {
                    if (!iw && i5 != -1) {
                        throw new AssertionError();
                    }
                    dq((p) pVar2);
                    d((p) pVar);
                }
                if (z) {
                    return;
                }
            } else if (i3 == 0) {
                pVar.ia = i + 1;
                if (z) {
                    return;
                }
            } else {
                if (!iw && i3 != -1 && i3 != 1) {
                    throw new AssertionError();
                }
                pVar.ia = Math.max(i, i2) + 1;
                if (!z) {
                    return;
                }
            }
            pVar = pVar.dq;
        }
    }

    private p<K, V> dq(K k, boolean z) {
        int i;
        p<K, V> pVar;
        Comparator<? super K> comparator = this.dq;
        p<K, V> pVar2 = this.f612d;
        if (pVar2 != null) {
            Comparable comparable = comparator == mn ? (Comparable) k : null;
            while (true) {
                i = comparable != null ? comparable.compareTo(pVar2.iw) : comparator.compare(k, pVar2.iw);
                if (i != 0) {
                    p<K, V> pVar3 = i < 0 ? pVar2.f614d : pVar2.ox;
                    if (pVar3 == null) {
                        break;
                    }
                    pVar2 = pVar3;
                } else {
                    return pVar2;
                }
            }
        } else {
            i = 0;
        }
        if (!z) {
            return null;
        }
        p<K, V> pVar4 = this.s;
        if (pVar2 != null) {
            pVar = new p<>(pVar2, k, pVar4, pVar4.s);
            if (i < 0) {
                pVar2.f614d = pVar;
            } else {
                pVar2.ox = pVar;
            }
            d(pVar2, true);
        } else {
            if (comparator == mn && !(k instanceof Comparable)) {
                throw new ClassCastException(k.getClass().getName().concat(" is not Comparable"));
            }
            pVar = new p<>(pVar2, k, pVar4, pVar4.s);
            this.f612d = pVar;
        }
        this.ox++;
        this.p++;
        return pVar;
    }

    private void dq(p<K, V> pVar) {
        p<K, V> pVar2 = pVar.f614d;
        p<K, V> pVar3 = pVar.ox;
        p<K, V> pVar4 = pVar3.f614d;
        p<K, V> pVar5 = pVar3.ox;
        pVar.ox = pVar4;
        if (pVar4 != null) {
            pVar4.dq = pVar;
        }
        dq(pVar, pVar3);
        pVar3.f614d = pVar;
        pVar.dq = pVar3;
        int max = Math.max(pVar2 != null ? pVar2.ia : 0, pVar4 != null ? pVar4.ia : 0) + 1;
        pVar.ia = max;
        pVar3.ia = Math.max(max, pVar5 != null ? pVar5.ia : 0) + 1;
    }

    private void dq(p<K, V> pVar, p<K, V> pVar2) {
        p<K, V> pVar3 = pVar.dq;
        pVar.dq = null;
        if (pVar2 != null) {
            pVar2.dq = pVar3;
        }
        if (pVar3 == null) {
            this.f612d = pVar2;
            return;
        }
        if (pVar3.f614d == pVar) {
            pVar3.f614d = pVar2;
        } else {
            if (!iw && pVar3.ox != pVar) {
                throw new AssertionError();
            }
            pVar3.ox = pVar2;
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        this.f612d = null;
        this.ox = 0;
        this.p++;
        p<K, V> pVar = this.s;
        pVar.s = pVar;
        pVar.p = pVar;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        return d(obj) != null;
    }

    public final p<K, V> dq(Object obj) {
        p<K, V> d2 = d(obj);
        if (d2 != null) {
            dq((p) d2, true);
        }
        return d2;
    }

    public final p<K, V> dq(Map.Entry<?, ?> entry) {
        p<K, V> d2 = d(entry.getKey());
        if (d2 == null) {
            return null;
        }
        V v = d2.mn;
        Object value = entry.getValue();
        if (v == value || (v != null && v.equals(value))) {
            return d2;
        }
        return null;
    }

    public final void dq(p<K, V> pVar, boolean z) {
        int i;
        if (z) {
            p<K, V> pVar2 = pVar.s;
            pVar2.p = pVar.p;
            pVar.p.s = pVar2;
        }
        p<K, V> pVar3 = pVar.f614d;
        p<K, V> pVar4 = pVar.ox;
        p<K, V> pVar5 = pVar.dq;
        int i2 = 0;
        if (pVar3 == null || pVar4 == null) {
            if (pVar3 != null) {
                dq(pVar, pVar3);
                pVar.f614d = null;
            } else if (pVar4 != null) {
                dq(pVar, pVar4);
                pVar.ox = null;
            } else {
                dq(pVar, (p) null);
            }
            d(pVar5, false);
            this.ox--;
            this.p++;
            return;
        }
        if (pVar3.ia > pVar4.ia) {
            p<K, V> pVar6 = pVar3.ox;
            while (true) {
                p<K, V> pVar7 = pVar6;
                pVar4 = pVar3;
                pVar3 = pVar7;
                if (pVar3 == null) {
                    break;
                } else {
                    pVar6 = pVar3.ox;
                }
            }
        } else {
            while (true) {
                p<K, V> pVar8 = pVar4.f614d;
                if (pVar8 == null) {
                    break;
                } else {
                    pVar4 = pVar8;
                }
            }
        }
        dq((p) pVar4, false);
        p<K, V> pVar9 = pVar.f614d;
        if (pVar9 != null) {
            i = pVar9.ia;
            pVar4.f614d = pVar9;
            pVar9.dq = pVar4;
            pVar.f614d = null;
        } else {
            i = 0;
        }
        p<K, V> pVar10 = pVar.ox;
        if (pVar10 != null) {
            i2 = pVar10.ia;
            pVar4.ox = pVar10;
            pVar10.dq = pVar4;
            pVar.ox = null;
        }
        pVar4.ia = Math.max(i, i2) + 1;
        dq(pVar, pVar4);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        ia<K, V>.dq dqVar = this.ia;
        if (dqVar != null) {
            return dqVar;
        }
        ia<K, V>.dq dqVar2 = new dq();
        this.ia = dqVar2;
        return dqVar2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V get(Object obj) {
        p<K, V> d2 = d(obj);
        if (d2 != null) {
            return d2.mn;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set<K> keySet() {
        ia<K, V>.d dVar = this.kk;
        if (dVar != null) {
            return dVar;
        }
        ia<K, V>.d dVar2 = new d();
        this.kk = dVar2;
        return dVar2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V put(K k, V v) {
        if (k == null) {
            throw new NullPointerException("key == null");
        }
        p<K, V> dq2 = dq((ia<K, V>) k, true);
        V v2 = dq2.mn;
        dq2.mn = v;
        return v2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V remove(Object obj) {
        p<K, V> dq2 = dq(obj);
        if (dq2 != null) {
            return dq2.mn;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.ox;
    }
}
