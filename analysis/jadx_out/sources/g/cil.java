package g;

import com.bykv.vk.component.ttvideo.player.C;
import j$.util.Map;
import j$.util.Objects;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.Function;

/* loaded from: classes3.dex */
public final class cil implements Map, Serializable, j$.util.Map {

    /* renamed from: a, reason: collision with root package name */
    public static final cil f12932a = new cil(null, new Object[0], 0);

    /* renamed from: b, reason: collision with root package name */
    public transient fbk f12933b;

    /* renamed from: c, reason: collision with root package name */
    public final transient Object f12934c;

    /* renamed from: d, reason: collision with root package name */
    public final transient Object[] f12935d;

    /* renamed from: e, reason: collision with root package name */
    public transient eix f12936e;

    /* renamed from: f, reason: collision with root package name */
    public transient eik f12937f;

    /* renamed from: g, reason: collision with root package name */
    public final transient int f12938g;

    public cil(Object obj, Object[] objArr, int i) {
        this.f12934c = obj;
        this.f12935d = objArr;
        this.f12938g = i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:21:0x01b3  */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r4v7, types: [java.lang.Object[]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static cil h(int i, Object[] objArr, dsg dsgVar) {
        int i2;
        char c2;
        char c3;
        char c4;
        short[] sArr;
        boolean z;
        int i3 = i;
        Object[] objArr2 = objArr;
        if (i3 == 0) {
            return f12932a;
        }
        Object obj = null;
        int i4 = 1;
        if (i3 == 1) {
            Objects.requireNonNull(objArr2[0]);
            Objects.requireNonNull(objArr2[1]);
            return new cil(null, objArr2, 1);
        }
        acr.ak(i3, objArr2.length >> 1);
        int max = Math.max(i3, 2);
        if (max < 751619276) {
            i2 = Integer.highestOneBit(max - 1);
            do {
                i2 += i2;
            } while (i2 * 0.7d < max);
        } else {
            i2 = C.ENCODING_PCM_32BIT;
            if (max >= 1073741824) {
                throw new IllegalArgumentException("collection too large");
            }
        }
        if (i3 == 1) {
            Objects.requireNonNull(objArr2[0]);
            Objects.requireNonNull(objArr2[1]);
            i3 = 1;
            c2 = 0;
            c3 = 1;
        } else {
            int i5 = i2 - 1;
            if (i2 <= 128) {
                byte[] bArr = new byte[i2];
                Arrays.fill(bArr, (byte) -1);
                int i6 = 0;
                int i7 = 0;
                while (i6 < i3) {
                    int i8 = i7 + i7;
                    int i9 = i6 + i6;
                    Object obj2 = objArr2[i9];
                    Objects.requireNonNull(obj2);
                    Object obj3 = objArr2[i9 ^ i4];
                    Objects.requireNonNull(obj3);
                    int s = byh.s(obj2.hashCode());
                    while (true) {
                        int i10 = s & i5;
                        int i11 = bArr[i10] & 255;
                        if (i11 == 255) {
                            bArr[i10] = (byte) i8;
                            if (i7 < i6) {
                                objArr2[i8] = obj2;
                                objArr2[i8 ^ 1] = obj3;
                            }
                            i7++;
                        } else {
                            if (obj2.equals(objArr2[i11])) {
                                int i12 = i11 ^ 1;
                                Object obj4 = objArr2[i12];
                                Objects.requireNonNull(obj4);
                                bhd bhdVar = new bhd(obj2, obj3, obj4);
                                objArr2[i12] = obj3;
                                obj = bhdVar;
                                break;
                            }
                            s = i10 + 1;
                        }
                    }
                    i6++;
                    i4 = 1;
                }
                c2 = 0;
                c3 = 1;
                if (i7 == i3) {
                    obj = bArr;
                } else {
                    sArr = new Object[]{bArr, Integer.valueOf(i7), obj};
                    obj = sArr;
                }
            } else {
                c2 = 0;
                c3 = 1;
                if (i2 > 32768) {
                    int[] iArr = new int[i2];
                    Arrays.fill(iArr, -1);
                    int i13 = 0;
                    for (int i14 = 0; i14 < i3; i14++) {
                        int i15 = i13 + i13;
                        int i16 = i14 + i14;
                        Object obj5 = objArr2[i16];
                        Objects.requireNonNull(obj5);
                        Object obj6 = objArr2[i16 ^ 1];
                        Objects.requireNonNull(obj6);
                        int s2 = byh.s(obj5.hashCode());
                        while (true) {
                            int i17 = s2 & i5;
                            int i18 = iArr[i17];
                            if (i18 == -1) {
                                iArr[i17] = i15;
                                if (i13 < i14) {
                                    objArr2[i15] = obj5;
                                    objArr2[i15 ^ 1] = obj6;
                                }
                                i13++;
                            } else {
                                if (obj5.equals(objArr2[i18])) {
                                    int i19 = i18 ^ 1;
                                    Object obj7 = objArr2[i19];
                                    Objects.requireNonNull(obj7);
                                    bhd bhdVar2 = new bhd(obj5, obj6, obj7);
                                    objArr2[i19] = obj6;
                                    obj = bhdVar2;
                                    break;
                                }
                                s2 = i17 + 1;
                            }
                        }
                    }
                    c4 = 2;
                    obj = i13 == i3 ? iArr : new Object[]{iArr, Integer.valueOf(i13), obj};
                    z = obj instanceof Object[];
                    Object obj8 = obj;
                    if (z) {
                        Object[] objArr3 = (Object[]) obj;
                        bhd bhdVar3 = (bhd) objArr3[c4];
                        if (dsgVar == null) {
                            throw bhdVar3.d();
                        }
                        dsgVar.f14705b = bhdVar3;
                        Object obj9 = objArr3[c2];
                        int intValue = ((Integer) objArr3[c3]).intValue();
                        objArr2 = Arrays.copyOf(objArr2, intValue + intValue);
                        obj8 = obj9;
                        i3 = intValue;
                    }
                    return new cil(obj8, objArr2, i3);
                }
                sArr = new short[i2];
                Arrays.fill(sArr, (short) -1);
                int i20 = 0;
                for (int i21 = 0; i21 < i3; i21++) {
                    int i22 = i20 + i20;
                    int i23 = i21 + i21;
                    Object obj10 = objArr2[i23];
                    Objects.requireNonNull(obj10);
                    Object obj11 = objArr2[i23 ^ 1];
                    Objects.requireNonNull(obj11);
                    int s3 = byh.s(obj10.hashCode());
                    while (true) {
                        int i24 = s3 & i5;
                        char c5 = (char) sArr[i24];
                        if (c5 == 65535) {
                            sArr[i24] = (short) i22;
                            if (i20 < i21) {
                                objArr2[i22] = obj10;
                                objArr2[i22 ^ 1] = obj11;
                            }
                            i20++;
                        } else {
                            if (obj10.equals(objArr2[c5])) {
                                int i25 = c5 ^ 1;
                                Object obj12 = objArr2[i25];
                                Objects.requireNonNull(obj12);
                                bhd bhdVar4 = new bhd(obj10, obj11, obj12);
                                objArr2[i25] = obj11;
                                obj = bhdVar4;
                                break;
                            }
                            s3 = i24 + 1;
                        }
                    }
                }
                if (i20 != i3) {
                    obj = new Object[]{sArr, Integer.valueOf(i20), obj};
                }
                obj = sArr;
            }
        }
        c4 = 2;
        z = obj instanceof Object[];
        Object obj82 = obj;
        if (z) {
        }
        return new cil(obj82, objArr2, i3);
    }

    @Override // java.util.Map
    public final void clear() {
        throw new UnsupportedOperationException();
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

    @Override // java.util.Map
    public final boolean containsKey(Object obj) {
        return get(obj) != null;
    }

    @Override // java.util.Map
    public final boolean containsValue(Object obj) {
        fbk fbkVar = this.f12933b;
        if (fbkVar == null) {
            fbkVar = new fbk(1, this.f12938g, this.f12935d);
            this.f12933b = fbkVar;
        }
        return fbkVar.contains(obj);
    }

    @Override // java.util.Map
    public final Set entrySet() {
        eix eixVar = this.f12936e;
        if (eixVar != null) {
            return eixVar;
        }
        eix eixVar2 = new eix(this, this.f12935d, this.f12938g);
        this.f12936e = eixVar2;
        return eixVar2;
    }

    @Override // java.util.Map
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof java.util.Map) {
            return entrySet().equals(((java.util.Map) obj).entrySet());
        }
        return false;
    }

    @Override // java.util.Map, j$.util.Map
    public final /* synthetic */ void forEach(BiConsumer biConsumer) {
        Map.a.$default$forEach(this, biConsumer);
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x009e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x009f A[RETURN] */
    @Override // java.util.Map
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object get(Object obj) {
        Object obj2;
        if (obj != null) {
            int i = this.f12938g;
            Object[] objArr = this.f12935d;
            if (i == 1) {
                Object obj3 = objArr[0];
                Objects.requireNonNull(obj3);
                if (obj3.equals(obj)) {
                    obj2 = objArr[1];
                    Objects.requireNonNull(obj2);
                }
            } else {
                Object obj4 = this.f12934c;
                if (obj4 != null) {
                    if (obj4 instanceof byte[]) {
                        byte[] bArr = (byte[]) obj4;
                        int length = bArr.length - 1;
                        int s = byh.s(obj.hashCode());
                        while (true) {
                            int i2 = s & length;
                            int i3 = bArr[i2] & 255;
                            if (i3 == 255) {
                                break;
                            }
                            if (obj.equals(objArr[i3])) {
                                obj2 = objArr[i3 ^ 1];
                                break;
                            }
                            s = i2 + 1;
                        }
                    } else if (obj4 instanceof short[]) {
                        short[] sArr = (short[]) obj4;
                        int length2 = sArr.length - 1;
                        int s2 = byh.s(obj.hashCode());
                        while (true) {
                            int i4 = s2 & length2;
                            char c2 = (char) sArr[i4];
                            if (c2 == 65535) {
                                break;
                            }
                            if (obj.equals(objArr[c2])) {
                                obj2 = objArr[c2 ^ 1];
                                break;
                            }
                            s2 = i4 + 1;
                        }
                    } else {
                        int[] iArr = (int[]) obj4;
                        int length3 = iArr.length - 1;
                        int s3 = byh.s(obj.hashCode());
                        while (true) {
                            int i5 = s3 & length3;
                            int i6 = iArr[i5];
                            if (i6 == -1) {
                                break;
                            }
                            if (obj.equals(objArr[i6])) {
                                obj2 = objArr[i6 ^ 1];
                                break;
                            }
                            s3 = i5 + 1;
                        }
                    }
                }
            }
            if (obj2 != null) {
                return null;
            }
            return obj2;
        }
        obj2 = null;
        if (obj2 != null) {
        }
    }

    @Override // java.util.Map, j$.util.Map
    public final Object getOrDefault(Object obj, Object obj2) {
        Object obj3 = get(obj);
        return obj3 != null ? obj3 : obj2;
    }

    @Override // java.util.Map
    public final int hashCode() {
        eix eixVar = this.f12936e;
        if (eixVar == null) {
            eixVar = new eix(this, this.f12935d, this.f12938g);
            this.f12936e = eixVar;
        }
        Iterator it = eixVar.iterator();
        int i = 0;
        while (it.hasNext()) {
            Object next = it.next();
            i += next != null ? next.hashCode() : 0;
        }
        return i;
    }

    @Override // java.util.Map
    public final boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.Map
    public final Set keySet() {
        eik eikVar = this.f12937f;
        if (eikVar != null) {
            return eikVar;
        }
        eik eikVar2 = new eik(this, new fbk(0, this.f12938g, this.f12935d));
        this.f12937f = eikVar2;
        return eikVar2;
    }

    @Override // java.util.Map, j$.util.Map
    public final /* synthetic */ Object merge(Object obj, Object obj2, BiFunction biFunction) {
        return Map.a.$default$merge(this, obj, obj2, biFunction);
    }

    @Override // java.util.Map
    public final Object put(Object obj, Object obj2) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public final void putAll(java.util.Map map) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map, j$.util.Map
    public final /* synthetic */ Object putIfAbsent(Object obj, Object obj2) {
        return Map.a.$default$putIfAbsent(this, obj, obj2);
    }

    @Override // java.util.Map
    public final Object remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map, j$.util.Map
    public final /* synthetic */ boolean remove(Object obj, Object obj2) {
        return Map.a.$default$remove(this, obj, obj2);
    }

    @Override // java.util.Map, j$.util.Map
    public final /* synthetic */ Object replace(Object obj, Object obj2) {
        return Map.a.$default$replace(this, obj, obj2);
    }

    @Override // java.util.Map, j$.util.Map
    public final /* synthetic */ boolean replace(Object obj, Object obj2, Object obj3) {
        return Map.a.$default$replace(this, obj, obj2, obj3);
    }

    @Override // java.util.Map, j$.util.Map
    public final /* synthetic */ void replaceAll(BiFunction biFunction) {
        Map.a.$default$replaceAll(this, biFunction);
    }

    @Override // java.util.Map
    public final int size() {
        return this.f12938g;
    }

    public final String toString() {
        int i = this.f12938g;
        if (i < 0) {
            throw new IllegalArgumentException(awf.ac(i, "size cannot be negative but was: "));
        }
        StringBuilder sb = new StringBuilder((int) Math.min(i * 8, 1073741824L));
        sb.append('{');
        Iterator it = ((eix) entrySet()).iterator();
        boolean z = true;
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            if (!z) {
                sb.append(", ");
            }
            sb.append(entry.getKey());
            sb.append('=');
            sb.append(entry.getValue());
            z = false;
        }
        sb.append('}');
        return sb.toString();
    }

    @Override // java.util.Map
    public final Collection values() {
        fbk fbkVar = this.f12933b;
        if (fbkVar != null) {
            return fbkVar;
        }
        fbk fbkVar2 = new fbk(1, this.f12938g, this.f12935d);
        this.f12933b = fbkVar2;
        return fbkVar2;
    }
}
