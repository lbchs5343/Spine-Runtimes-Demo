package g;

import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.ObjectStreamException;
import java.io.Serializable;
import java.util.AbstractMap;
import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.Set;

/* loaded from: classes3.dex */
public final class bny extends AbstractMap implements Serializable {

    /* renamed from: a, reason: collision with root package name */
    public static final aqn f11899a = new aqn(6);
    private final boolean allowNullValues;
    private cnb entrySet;
    final eqr header;
    private bzw keySet;
    eqr root;
    int size = 0;
    int modCount = 0;
    private final Comparator<Object> comparator = f11899a;

    public bny(boolean z) {
        this.allowNullValues = z;
        this.header = new eqr(z);
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException {
        throw new InvalidObjectException("Deserialization is unsupported");
    }

    private Object writeReplace() throws ObjectStreamException {
        return new LinkedHashMap(this);
    }

    public final void b(eqr eqrVar, eqr eqrVar2) {
        eqr eqrVar3 = eqrVar.f16008f;
        eqrVar.f16008f = null;
        if (eqrVar2 != null) {
            eqrVar2.f16008f = eqrVar3;
        }
        if (eqrVar3 == null) {
            this.root = eqrVar2;
        } else if (eqrVar3.h == eqrVar) {
            eqrVar3.h = eqrVar2;
        } else {
            eqrVar3.f16005c = eqrVar2;
        }
    }

    public final void c(eqr eqrVar) {
        eqr eqrVar2 = eqrVar.h;
        eqr eqrVar3 = eqrVar.f16005c;
        eqr eqrVar4 = eqrVar3.h;
        eqr eqrVar5 = eqrVar3.f16005c;
        eqrVar.f16005c = eqrVar4;
        if (eqrVar4 != null) {
            eqrVar4.f16008f = eqrVar;
        }
        b(eqrVar, eqrVar3);
        eqrVar3.h = eqrVar;
        eqrVar.f16008f = eqrVar3;
        int max = Math.max(eqrVar2 != null ? eqrVar2.f16009g : 0, eqrVar4 != null ? eqrVar4.f16009g : 0) + 1;
        eqrVar.f16009g = max;
        eqrVar3.f16009g = Math.max(max, eqrVar5 != null ? eqrVar5.f16009g : 0) + 1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        this.root = null;
        this.size = 0;
        this.modCount++;
        eqr eqrVar = this.header;
        eqrVar.f16007e = eqrVar;
        eqrVar.f16006d = eqrVar;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        eqr eqrVar = null;
        if (obj != null) {
            try {
                eqrVar = d(obj, false);
            } catch (ClassCastException unused) {
            }
        }
        return eqrVar != null;
    }

    public final eqr d(Object obj, boolean z) {
        int i;
        eqr eqrVar;
        Comparator<Object> comparator = this.comparator;
        eqr eqrVar2 = this.root;
        aqn aqnVar = f11899a;
        if (eqrVar2 != null) {
            Comparable comparable = comparator == aqnVar ? (Comparable) obj : null;
            while (true) {
                Object obj2 = eqrVar2.i;
                i = comparable != null ? comparable.compareTo(obj2) : comparator.compare(obj, obj2);
                if (i == 0) {
                    return eqrVar2;
                }
                eqr eqrVar3 = i < 0 ? eqrVar2.h : eqrVar2.f16005c;
                if (eqrVar3 == null) {
                    break;
                }
                eqrVar2 = eqrVar3;
            }
        } else {
            i = 0;
        }
        eqr eqrVar4 = eqrVar2;
        if (!z) {
            return null;
        }
        eqr eqrVar5 = this.header;
        if (eqrVar4 != null) {
            eqrVar = new eqr(this.allowNullValues, eqrVar4, obj, eqrVar5, eqrVar5.f16007e);
            if (i < 0) {
                eqrVar4.h = eqrVar;
            } else {
                eqrVar4.f16005c = eqrVar;
            }
            f(eqrVar4, true);
        } else {
            if (comparator == aqnVar && !(obj instanceof Comparable)) {
                throw new ClassCastException(obj.getClass().getName().concat(" is not Comparable"));
            }
            eqrVar = new eqr(this.allowNullValues, eqrVar4, obj, eqrVar5, eqrVar5.f16007e);
            this.root = eqrVar;
        }
        this.size++;
        this.modCount++;
        return eqrVar;
    }

    public final void e(eqr eqrVar) {
        eqr eqrVar2 = eqrVar.h;
        eqr eqrVar3 = eqrVar.f16005c;
        eqr eqrVar4 = eqrVar2.h;
        eqr eqrVar5 = eqrVar2.f16005c;
        eqrVar.h = eqrVar5;
        if (eqrVar5 != null) {
            eqrVar5.f16008f = eqrVar;
        }
        b(eqrVar, eqrVar2);
        eqrVar2.f16005c = eqrVar;
        eqrVar.f16008f = eqrVar2;
        int max = Math.max(eqrVar3 != null ? eqrVar3.f16009g : 0, eqrVar5 != null ? eqrVar5.f16009g : 0) + 1;
        eqrVar.f16009g = max;
        eqrVar2.f16009g = Math.max(max, eqrVar4 != null ? eqrVar4.f16009g : 0) + 1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        cnb cnbVar = this.entrySet;
        if (cnbVar != null) {
            return cnbVar;
        }
        cnb cnbVar2 = new cnb(this);
        this.entrySet = cnbVar2;
        return cnbVar2;
    }

    public final void f(eqr eqrVar, boolean z) {
        while (eqrVar != null) {
            eqr eqrVar2 = eqrVar.h;
            eqr eqrVar3 = eqrVar.f16005c;
            int i = eqrVar2 != null ? eqrVar2.f16009g : 0;
            int i2 = eqrVar3 != null ? eqrVar3.f16009g : 0;
            int i3 = i - i2;
            if (i3 == -2) {
                eqr eqrVar4 = eqrVar3.h;
                eqr eqrVar5 = eqrVar3.f16005c;
                int i4 = (eqrVar4 != null ? eqrVar4.f16009g : 0) - (eqrVar5 != null ? eqrVar5.f16009g : 0);
                if (i4 == -1 || (i4 == 0 && !z)) {
                    c(eqrVar);
                } else {
                    e(eqrVar3);
                    c(eqrVar);
                }
                if (z) {
                    return;
                }
            } else if (i3 == 2) {
                eqr eqrVar6 = eqrVar2.h;
                eqr eqrVar7 = eqrVar2.f16005c;
                int i5 = (eqrVar6 != null ? eqrVar6.f16009g : 0) - (eqrVar7 != null ? eqrVar7.f16009g : 0);
                if (i5 == 1 || (i5 == 0 && !z)) {
                    e(eqrVar);
                } else {
                    c(eqrVar2);
                    e(eqrVar);
                }
                if (z) {
                    return;
                }
            } else if (i3 == 0) {
                eqrVar.f16009g = i + 1;
                if (z) {
                    return;
                }
            } else {
                eqrVar.f16009g = Math.max(i, i2) + 1;
                if (!z) {
                    return;
                }
            }
            eqrVar = eqrVar.f16008f;
        }
    }

    public final void g(eqr eqrVar, boolean z) {
        eqr eqrVar2;
        eqr eqrVar3;
        int i;
        if (z) {
            eqr eqrVar4 = eqrVar.f16007e;
            eqrVar4.f16006d = eqrVar.f16006d;
            eqrVar.f16006d.f16007e = eqrVar4;
        }
        eqr eqrVar5 = eqrVar.h;
        eqr eqrVar6 = eqrVar.f16005c;
        eqr eqrVar7 = eqrVar.f16008f;
        int i2 = 0;
        if (eqrVar5 == null || eqrVar6 == null) {
            if (eqrVar5 != null) {
                b(eqrVar, eqrVar5);
                eqrVar.h = null;
            } else if (eqrVar6 != null) {
                b(eqrVar, eqrVar6);
                eqrVar.f16005c = null;
            } else {
                b(eqrVar, null);
            }
            f(eqrVar7, false);
            this.size--;
            this.modCount++;
            return;
        }
        if (eqrVar5.f16009g > eqrVar6.f16009g) {
            eqr eqrVar8 = eqrVar5.f16005c;
            while (true) {
                eqr eqrVar9 = eqrVar8;
                eqrVar3 = eqrVar5;
                eqrVar5 = eqrVar9;
                if (eqrVar5 == null) {
                    break;
                } else {
                    eqrVar8 = eqrVar5.f16005c;
                }
            }
        } else {
            eqr eqrVar10 = eqrVar6.h;
            while (true) {
                eqrVar2 = eqrVar6;
                eqrVar6 = eqrVar10;
                if (eqrVar6 == null) {
                    break;
                } else {
                    eqrVar10 = eqrVar6.h;
                }
            }
            eqrVar3 = eqrVar2;
        }
        g(eqrVar3, false);
        eqr eqrVar11 = eqrVar.h;
        if (eqrVar11 != null) {
            i = eqrVar11.f16009g;
            eqrVar3.h = eqrVar11;
            eqrVar11.f16008f = eqrVar3;
            eqrVar.h = null;
        } else {
            i = 0;
        }
        eqr eqrVar12 = eqrVar.f16005c;
        if (eqrVar12 != null) {
            i2 = eqrVar12.f16009g;
            eqrVar3.f16005c = eqrVar12;
            eqrVar12.f16008f = eqrVar3;
            eqrVar.f16005c = null;
        }
        eqrVar3.f16009g = Math.max(i, i2) + 1;
        b(eqrVar, eqrVar3);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0010 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x000d  */
    @Override // java.util.AbstractMap, java.util.Map
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object get(Object obj) {
        eqr eqrVar;
        if (obj != null) {
            try {
                eqrVar = d(obj, false);
            } catch (ClassCastException unused) {
            }
            if (eqrVar == null) {
                return eqrVar.f16003a;
            }
            return null;
        }
        eqrVar = null;
        if (eqrVar == null) {
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set keySet() {
        bzw bzwVar = this.keySet;
        if (bzwVar != null) {
            return bzwVar;
        }
        bzw bzwVar2 = new bzw(this);
        this.keySet = bzwVar2;
        return bzwVar2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object put(Object obj, Object obj2) {
        if (obj == null) {
            throw new NullPointerException("key == null");
        }
        if (obj2 == null && !this.allowNullValues) {
            throw new NullPointerException("value == null");
        }
        eqr d2 = d(obj, true);
        Object obj3 = d2.f16003a;
        d2.f16003a = obj2;
        return obj3;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0016 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x000d  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0013  */
    @Override // java.util.AbstractMap, java.util.Map
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object remove(Object obj) {
        eqr eqrVar;
        if (obj != null) {
            try {
                eqrVar = d(obj, false);
            } catch (ClassCastException unused) {
            }
            if (eqrVar != null) {
                g(eqrVar, true);
            }
            if (eqrVar == null) {
                return eqrVar.f16003a;
            }
            return null;
        }
        eqrVar = null;
        if (eqrVar != null) {
        }
        if (eqrVar == null) {
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.size;
    }
}
