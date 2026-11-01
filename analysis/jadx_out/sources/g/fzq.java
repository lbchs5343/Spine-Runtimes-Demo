package g;

import java.io.NotSerializableException;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;

/* loaded from: classes.dex */
public final class fzq implements Map, Serializable {

    /* renamed from: a, reason: collision with root package name */
    public static final fzq f17736a;
    private dsm entriesView;
    private int[] hashArray;
    private int hashShift;
    private boolean isReadOnly;
    private Object[] keysArray;
    private eqy keysView;
    private int length;
    private int maxProbeDistance;
    private int modCount;
    private int[] presenceArray;
    private int size;
    private Object[] valuesArray;
    private afc valuesView;

    static {
        fzq fzqVar = new fzq(0);
        fzqVar.isReadOnly = true;
        f17736a = fzqVar;
    }

    public fzq() {
        this(8);
    }

    public fzq(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("capacity must be non-negative.");
        }
        Object[] objArr = new Object[i];
        int[] iArr = new int[i];
        int highestOneBit = Integer.highestOneBit((i < 1 ? 1 : i) * 3);
        this.keysArray = objArr;
        this.valuesArray = null;
        this.presenceArray = iArr;
        this.hashArray = new int[highestOneBit];
        this.maxProbeDistance = 2;
        this.length = 0;
        this.hashShift = Integer.numberOfLeadingZeros(highestOneBit) + 1;
    }

    private final Object writeReplace() {
        if (this.isReadOnly) {
            return new hbd(this);
        }
        throw new NotSerializableException("The map cannot be serialized while it is being built.");
    }

    @Override // java.util.Map
    public final void clear() {
        p();
        int i = this.length - 1;
        if (i >= 0) {
            int i2 = 0;
            while (true) {
                int[] iArr = this.presenceArray;
                int i3 = iArr[i2];
                if (i3 >= 0) {
                    this.hashArray[i3] = 0;
                    iArr[i2] = -1;
                }
                if (i2 == i) {
                    break;
                } else {
                    i2++;
                }
            }
        }
        bff.an(0, this.length, this.keysArray);
        Object[] objArr = this.valuesArray;
        if (objArr != null) {
            bff.an(0, this.length, objArr);
        }
        this.size = 0;
        this.length = 0;
        this.modCount++;
    }

    @Override // java.util.Map
    public final boolean containsKey(Object obj) {
        return j(obj) >= 0;
    }

    @Override // java.util.Map
    public final boolean containsValue(Object obj) {
        return i(obj) >= 0;
    }

    @Override // java.util.Map
    public final Set entrySet() {
        dsm dsmVar = this.entriesView;
        if (dsmVar != null) {
            return dsmVar;
        }
        dsm dsmVar2 = new dsm(this);
        this.entriesView = dsmVar2;
        return dsmVar2;
    }

    @Override // java.util.Map
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Map)) {
            return false;
        }
        Map map = (Map) obj;
        return this.size == map.size() && h(map.entrySet());
    }

    public final fzq g() {
        p();
        this.isReadOnly = true;
        if (this.size > 0) {
            return this;
        }
        fzq fzqVar = f17736a;
        bff.ag(fzqVar, "null cannot be cast to non-null type kotlin.collections.Map<K of kotlin.collections.builders.MapBuilder, V of kotlin.collections.builders.MapBuilder>");
        return fzqVar;
    }

    @Override // java.util.Map
    public final Object get(Object obj) {
        int j = j(obj);
        if (j < 0) {
            return null;
        }
        Object[] objArr = this.valuesArray;
        bff.d(objArr);
        return objArr[j];
    }

    public final boolean h(Collection collection) {
        bff.p(collection, "m");
        for (Object obj : collection) {
            if (obj != null) {
                try {
                    if (!k((Map.Entry) obj)) {
                    }
                } catch (ClassCastException unused) {
                }
            }
            return false;
        }
        return true;
    }

    @Override // java.util.Map
    public final int hashCode() {
        gwl gwlVar = new gwl(this, 0);
        int i = 0;
        while (gwlVar.hasNext()) {
            int i2 = gwlVar.f12332c;
            fzq fzqVar = (fzq) gwlVar.f12331b;
            if (i2 >= fzqVar.length) {
                throw new NoSuchElementException();
            }
            int i3 = gwlVar.f12332c;
            gwlVar.f12332c = i3 + 1;
            gwlVar.f12333d = i3;
            Object obj = fzqVar.keysArray[gwlVar.f12333d];
            int hashCode = obj != null ? obj.hashCode() : 0;
            Object[] objArr = fzqVar.valuesArray;
            bff.d(objArr);
            Object obj2 = objArr[gwlVar.f12333d];
            int hashCode2 = obj2 != null ? obj2.hashCode() : 0;
            gwlVar.e();
            i += hashCode ^ hashCode2;
        }
        return i;
    }

    public final int i(Object obj) {
        int i = this.length;
        while (true) {
            i--;
            if (i < 0) {
                return -1;
            }
            if (this.presenceArray[i] >= 0) {
                Object[] objArr = this.valuesArray;
                bff.d(objArr);
                if (bff.n(objArr[i], obj)) {
                    return i;
                }
            }
        }
    }

    @Override // java.util.Map
    public final boolean isEmpty() {
        return this.size == 0;
    }

    public final int j(Object obj) {
        int n = n(obj);
        int i = this.maxProbeDistance;
        while (true) {
            int i2 = this.hashArray[n];
            if (i2 == 0) {
                return -1;
            }
            if (i2 > 0) {
                int i3 = i2 - 1;
                if (bff.n(this.keysArray[i3], obj)) {
                    return i3;
                }
            }
            i--;
            if (i < 0) {
                return -1;
            }
            n = n == 0 ? this.hashArray.length - 1 : n - 1;
        }
    }

    public final boolean k(Map.Entry entry) {
        bff.p(entry, "entry");
        int j = j(entry.getKey());
        if (j < 0) {
            return false;
        }
        Object[] objArr = this.valuesArray;
        bff.d(objArr);
        return bff.n(objArr[j], entry.getValue());
    }

    @Override // java.util.Map
    public final Set keySet() {
        eqy eqyVar = this.keysView;
        if (eqyVar != null) {
            return eqyVar;
        }
        eqy eqyVar2 = new eqy(this);
        this.keysView = eqyVar2;
        return eqyVar2;
    }

    public final int l(Object obj) {
        p();
        while (true) {
            int n = n(obj);
            int i = this.maxProbeDistance * 2;
            int length = this.hashArray.length / 2;
            if (i > length) {
                i = length;
            }
            int i2 = 0;
            while (true) {
                int[] iArr = this.hashArray;
                int i3 = iArr[n];
                if (i3 <= 0) {
                    int i4 = this.length;
                    Object[] objArr = this.keysArray;
                    if (i4 < objArr.length) {
                        int i5 = i4 + 1;
                        this.length = i5;
                        objArr[i4] = obj;
                        this.presenceArray[i4] = n;
                        iArr[n] = i5;
                        this.size++;
                        this.modCount++;
                        if (i2 > this.maxProbeDistance) {
                            this.maxProbeDistance = i2;
                        }
                        return i4;
                    }
                    o(1);
                } else {
                    if (bff.n(this.keysArray[i3 - 1], obj)) {
                        return -i3;
                    }
                    i2++;
                    if (i2 > i) {
                        u(this.hashArray.length * 2);
                        break;
                    }
                    n = n == 0 ? this.hashArray.length - 1 : n - 1;
                }
            }
        }
    }

    public final boolean m(Map.Entry entry) {
        bff.p(entry, "entry");
        p();
        int j = j(entry.getKey());
        if (j < 0) {
            return false;
        }
        Object[] objArr = this.valuesArray;
        bff.d(objArr);
        if (!bff.n(objArr[j], entry.getValue())) {
            return false;
        }
        s(j);
        return true;
    }

    public final int n(Object obj) {
        return ((obj != null ? obj.hashCode() : 0) * (-1640531527)) >>> this.hashShift;
    }

    public final void o(int i) {
        Object[] objArr;
        Object[] objArr2 = this.keysArray;
        int length = objArr2.length;
        int i2 = this.length;
        int i3 = length - i2;
        int i4 = i2 - this.size;
        if (i3 < i && i3 + i4 >= i && i4 >= objArr2.length / 4) {
            q(true);
            return;
        }
        int i5 = i2 + i;
        if (i5 < 0) {
            throw new OutOfMemoryError();
        }
        if (i5 > objArr2.length) {
            int length2 = objArr2.length;
            int i6 = length2 + (length2 >> 1);
            if (i6 - i5 < 0) {
                i6 = i5;
            }
            if (i6 - 2147483639 > 0) {
                i6 = i5 > 2147483639 ? he.UNDEFINED_ITEM_ID : 2147483639;
            }
            Object[] copyOf = Arrays.copyOf(objArr2, i6);
            bff.e(copyOf, "copyOf(...)");
            this.keysArray = copyOf;
            Object[] objArr3 = this.valuesArray;
            if (objArr3 != null) {
                objArr = Arrays.copyOf(objArr3, i6);
                bff.e(objArr, "copyOf(...)");
            } else {
                objArr = null;
            }
            this.valuesArray = objArr;
            int[] copyOf2 = Arrays.copyOf(this.presenceArray, i6);
            bff.e(copyOf2, "copyOf(...)");
            this.presenceArray = copyOf2;
            int highestOneBit = Integer.highestOneBit((i6 >= 1 ? i6 : 1) * 3);
            if (highestOneBit > this.hashArray.length) {
                u(highestOneBit);
            }
        }
    }

    public final void p() {
        if (this.isReadOnly) {
            throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.Map
    public final Object put(Object obj, Object obj2) {
        p();
        int l = l(obj);
        Object[] t = t();
        if (l >= 0) {
            t[l] = obj2;
            return null;
        }
        int i = (-l) - 1;
        Object obj3 = t[i];
        t[i] = obj2;
        return obj3;
    }

    @Override // java.util.Map
    public final void putAll(Map map) {
        bff.p(map, "from");
        p();
        Set<Map.Entry> entrySet = map.entrySet();
        if (entrySet.isEmpty()) {
            return;
        }
        o(entrySet.size());
        for (Map.Entry entry : entrySet) {
            int l = l(entry.getKey());
            Object[] t = t();
            if (l >= 0) {
                t[l] = entry.getValue();
            } else {
                int i = (-l) - 1;
                if (!bff.n(entry.getValue(), t[i])) {
                    t[i] = entry.getValue();
                }
            }
        }
    }

    public final void q(boolean z) {
        int i;
        Object[] objArr = this.valuesArray;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            i = this.length;
            if (i2 >= i) {
                break;
            }
            int[] iArr = this.presenceArray;
            int i4 = iArr[i2];
            if (i4 >= 0) {
                Object[] objArr2 = this.keysArray;
                objArr2[i3] = objArr2[i2];
                if (objArr != null) {
                    objArr[i3] = objArr[i2];
                }
                if (z) {
                    iArr[i3] = i4;
                    this.hashArray[i4] = i3 + 1;
                }
                i3++;
            }
            i2++;
        }
        bff.an(i3, i, this.keysArray);
        if (objArr != null) {
            bff.an(i3, this.length, objArr);
        }
        this.length = i3;
    }

    public final boolean r() {
        return this.isReadOnly;
    }

    @Override // java.util.Map
    public final Object remove(Object obj) {
        p();
        int j = j(obj);
        if (j < 0) {
            return null;
        }
        Object[] objArr = this.valuesArray;
        bff.d(objArr);
        Object obj2 = objArr[j];
        s(j);
        return obj2;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0068 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:25:? A[LOOP:0: B:8:0x0024->B:25:?, LOOP_END, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void s(int i) {
        Object[] objArr = this.keysArray;
        bff.p(objArr, "<this>");
        objArr[i] = null;
        Object[] objArr2 = this.valuesArray;
        if (objArr2 != null) {
            objArr2[i] = null;
        }
        int i2 = this.presenceArray[i];
        int i3 = this.maxProbeDistance * 2;
        int length = this.hashArray.length / 2;
        if (i3 > length) {
            i3 = length;
        }
        int i4 = i3;
        int i5 = 0;
        int i6 = i2;
        while (true) {
            i2 = i2 == 0 ? this.hashArray.length - 1 : i2 - 1;
            i5++;
            if (i5 > this.maxProbeDistance) {
                this.hashArray[i6] = 0;
                break;
            }
            int[] iArr = this.hashArray;
            int i7 = iArr[i2];
            if (i7 == 0) {
                iArr[i6] = 0;
                break;
            }
            if (i7 < 0) {
                iArr[i6] = -1;
            } else {
                int i8 = i7 - 1;
                int n = n(this.keysArray[i8]) - i2;
                int[] iArr2 = this.hashArray;
                if ((n & (iArr2.length - 1)) >= i5) {
                    iArr2[i6] = i7;
                    this.presenceArray[i8] = i6;
                }
                i4--;
                if (i4 >= 0) {
                    this.hashArray[i6] = -1;
                    break;
                }
            }
            i6 = i2;
            i5 = 0;
            i4--;
            if (i4 >= 0) {
            }
        }
        this.presenceArray[i] = -1;
        this.size--;
        this.modCount++;
    }

    @Override // java.util.Map
    public final int size() {
        return this.size;
    }

    public final Object[] t() {
        Object[] objArr = this.valuesArray;
        if (objArr != null) {
            return objArr;
        }
        int length = this.keysArray.length;
        if (length < 0) {
            throw new IllegalArgumentException("capacity must be non-negative.");
        }
        Object[] objArr2 = new Object[length];
        this.valuesArray = objArr2;
        return objArr2;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder((this.size * 3) + 2);
        sb.append("{");
        int i = 0;
        gwl gwlVar = new gwl(this, i);
        while (gwlVar.hasNext()) {
            if (i > 0) {
                sb.append(", ");
            }
            int i2 = gwlVar.f12332c;
            fzq fzqVar = (fzq) gwlVar.f12331b;
            if (i2 >= fzqVar.length) {
                throw new NoSuchElementException();
            }
            int i3 = gwlVar.f12332c;
            gwlVar.f12332c = i3 + 1;
            gwlVar.f12333d = i3;
            Object obj = fzqVar.keysArray[gwlVar.f12333d];
            if (obj == fzqVar) {
                sb.append("(this Map)");
            } else {
                sb.append(obj);
            }
            sb.append('=');
            Object[] objArr = fzqVar.valuesArray;
            bff.d(objArr);
            Object obj2 = objArr[gwlVar.f12333d];
            if (obj2 == fzqVar) {
                sb.append("(this Map)");
            } else {
                sb.append(obj2);
            }
            gwlVar.e();
            i++;
        }
        sb.append("}");
        String sb2 = sb.toString();
        bff.e(sb2, "toString(...)");
        return sb2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0032, code lost:
    
        r3[r0] = r6;
        r5.presenceArray[r2] = r0;
        r2 = r6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void u(int i) {
        this.modCount++;
        int i2 = 0;
        if (this.length > this.size) {
            q(false);
        }
        this.hashArray = new int[i];
        this.hashShift = Integer.numberOfLeadingZeros(i) + 1;
        while (i2 < this.length) {
            int i3 = i2 + 1;
            int n = n(this.keysArray[i2]);
            int i4 = this.maxProbeDistance;
            while (true) {
                int[] iArr = this.hashArray;
                if (iArr[n] == 0) {
                    break;
                }
                i4--;
                if (i4 < 0) {
                    throw new IllegalStateException("This cannot happen with fixed magic multiplier and grow-only hash array. Have object hashCodes changed?");
                }
                n = n == 0 ? iArr.length - 1 : n - 1;
            }
        }
    }

    @Override // java.util.Map
    public final Collection values() {
        afc afcVar = this.valuesView;
        if (afcVar != null) {
            return afcVar;
        }
        afc afcVar2 = new afc(this);
        this.valuesView = afcVar2;
        return afcVar2;
    }
}
