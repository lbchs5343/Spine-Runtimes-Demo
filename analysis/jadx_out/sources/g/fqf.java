package g;

import com.google.android.gms.internal.ads.zzfwq;
import com.google.android.gms.internal.ads.zzfzq;
import com.google.android.gms.internal.ads.zzfzr;
import com.google.android.gms.internal.ads.zzfzt;
import j$.util.Objects;
import java.util.Arrays;

/* loaded from: classes3.dex */
public final class fqf extends zzfzr {

    /* renamed from: g, reason: collision with root package name */
    public static final fqf f17240g = new fqf(null, new Object[0], 0);
    public final transient Object h;
    public final transient Object[] i;
    public final transient int j;

    public fqf(Object obj, Object[] objArr, int i) {
        this.h = obj;
        this.i = objArr;
        this.j = i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0197  */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r4v7, types: [java.lang.Object[]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static fqf k(int i, Object[] objArr, zzfzq zzfzqVar) {
        char c2;
        char c3;
        char c4;
        short[] sArr;
        boolean z;
        int i2 = i;
        Object[] objArr2 = objArr;
        if (i2 == 0) {
            return f17240g;
        }
        Object obj = null;
        int i3 = 1;
        if (i2 == 1) {
            Objects.requireNonNull(objArr2[0]);
            Objects.requireNonNull(objArr2[1]);
            return new fqf(null, objArr2, 1);
        }
        zzfwq.zzb(i2, objArr2.length >> 1, "index");
        int q = zzfzt.q(i2);
        if (i2 == 1) {
            Objects.requireNonNull(objArr2[0]);
            Objects.requireNonNull(objArr2[1]);
            i2 = 1;
            c2 = 0;
            c3 = 1;
        } else {
            int i4 = q - 1;
            if (q <= 128) {
                byte[] bArr = new byte[q];
                Arrays.fill(bArr, (byte) -1);
                int i5 = 0;
                int i6 = 0;
                while (i5 < i2) {
                    int i7 = i6 + i6;
                    int i8 = i5 + i5;
                    Object obj2 = objArr2[i8];
                    Objects.requireNonNull(obj2);
                    Object obj3 = objArr2[i8 ^ i3];
                    Objects.requireNonNull(obj3);
                    int aa = gs.aa(obj2.hashCode());
                    while (true) {
                        int i9 = aa & i4;
                        int i10 = bArr[i9] & 255;
                        if (i10 == 255) {
                            bArr[i9] = (byte) i7;
                            if (i6 < i5) {
                                objArr2[i7] = obj2;
                                objArr2[i7 ^ 1] = obj3;
                            }
                            i6++;
                        } else {
                            if (obj2.equals(objArr2[i10])) {
                                int i11 = i10 ^ 1;
                                Object obj4 = objArr2[i11];
                                Objects.requireNonNull(obj4);
                                bjv bjvVar = new bjv(obj2, obj3, obj4);
                                objArr2[i11] = obj3;
                                obj = bjvVar;
                                break;
                            }
                            aa = i9 + 1;
                        }
                    }
                    i5++;
                    i3 = 1;
                }
                c2 = 0;
                c3 = 1;
                if (i6 == i2) {
                    obj = bArr;
                } else {
                    sArr = new Object[]{bArr, Integer.valueOf(i6), obj};
                    obj = sArr;
                }
            } else {
                c2 = 0;
                c3 = 1;
                if (q > 32768) {
                    int[] iArr = new int[q];
                    Arrays.fill(iArr, -1);
                    int i12 = 0;
                    for (int i13 = 0; i13 < i2; i13++) {
                        int i14 = i12 + i12;
                        int i15 = i13 + i13;
                        Object obj5 = objArr2[i15];
                        Objects.requireNonNull(obj5);
                        Object obj6 = objArr2[i15 ^ 1];
                        Objects.requireNonNull(obj6);
                        int aa2 = gs.aa(obj5.hashCode());
                        while (true) {
                            int i16 = aa2 & i4;
                            int i17 = iArr[i16];
                            if (i17 == -1) {
                                iArr[i16] = i14;
                                if (i12 < i13) {
                                    objArr2[i14] = obj5;
                                    objArr2[i14 ^ 1] = obj6;
                                }
                                i12++;
                            } else {
                                if (obj5.equals(objArr2[i17])) {
                                    int i18 = i17 ^ 1;
                                    Object obj7 = objArr2[i18];
                                    Objects.requireNonNull(obj7);
                                    bjv bjvVar2 = new bjv(obj5, obj6, obj7);
                                    objArr2[i18] = obj6;
                                    obj = bjvVar2;
                                    break;
                                }
                                aa2 = i16 + 1;
                            }
                        }
                    }
                    c4 = 2;
                    obj = i12 == i2 ? iArr : new Object[]{iArr, Integer.valueOf(i12), obj};
                    z = obj instanceof Object[];
                    Object obj8 = obj;
                    if (z) {
                        Object[] objArr3 = (Object[]) obj;
                        bjv bjvVar3 = (bjv) objArr3[c4];
                        if (zzfzqVar == null) {
                            throw bjvVar3.d();
                        }
                        zzfzqVar.f8234c = bjvVar3;
                        Object obj9 = objArr3[c2];
                        int intValue = ((Integer) objArr3[c3]).intValue();
                        objArr2 = Arrays.copyOf(objArr2, intValue + intValue);
                        obj8 = obj9;
                        i2 = intValue;
                    }
                    return new fqf(obj8, objArr2, i2);
                }
                sArr = new short[q];
                Arrays.fill(sArr, (short) -1);
                int i19 = 0;
                for (int i20 = 0; i20 < i2; i20++) {
                    int i21 = i19 + i19;
                    int i22 = i20 + i20;
                    Object obj10 = objArr2[i22];
                    Objects.requireNonNull(obj10);
                    Object obj11 = objArr2[i22 ^ 1];
                    Objects.requireNonNull(obj11);
                    int aa3 = gs.aa(obj10.hashCode());
                    while (true) {
                        int i23 = aa3 & i4;
                        char c5 = (char) sArr[i23];
                        if (c5 == 65535) {
                            sArr[i23] = (short) i21;
                            if (i19 < i20) {
                                objArr2[i21] = obj10;
                                objArr2[i21 ^ 1] = obj11;
                            }
                            i19++;
                        } else {
                            if (obj10.equals(objArr2[c5])) {
                                int i24 = c5 ^ 1;
                                Object obj12 = objArr2[i24];
                                Objects.requireNonNull(obj12);
                                bjv bjvVar4 = new bjv(obj10, obj11, obj12);
                                objArr2[i24] = obj11;
                                obj = bjvVar4;
                                break;
                            }
                            aa3 = i23 + 1;
                        }
                    }
                }
                if (i19 != i2) {
                    obj = new Object[]{sArr, Integer.valueOf(i19), obj};
                }
                obj = sArr;
            }
        }
        c4 = 2;
        z = obj instanceof Object[];
        Object obj82 = obj;
        if (z) {
        }
        return new fqf(obj82, objArr2, i2);
    }

    @Override // com.google.android.gms.internal.ads.zzfzr
    public final az d() {
        return new az(1, this.j, this.i);
    }

    @Override // com.google.android.gms.internal.ads.zzfzr
    public final nm e() {
        return new nm(this, this.i, this.j);
    }

    @Override // com.google.android.gms.internal.ads.zzfzr
    public final fvj f() {
        return new fvj(this, new az(0, this.j, this.i));
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x009e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x009f A[RETURN] */
    @Override // com.google.android.gms.internal.ads.zzfzr, java.util.Map
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object get(Object obj) {
        Object obj2;
        if (obj != null) {
            int i = this.j;
            Object[] objArr = this.i;
            if (i == 1) {
                Object obj3 = objArr[0];
                Objects.requireNonNull(obj3);
                if (obj3.equals(obj)) {
                    obj2 = objArr[1];
                    Objects.requireNonNull(obj2);
                }
            } else {
                Object obj4 = this.h;
                if (obj4 != null) {
                    if (obj4 instanceof byte[]) {
                        byte[] bArr = (byte[]) obj4;
                        int length = bArr.length - 1;
                        int aa = gs.aa(obj.hashCode());
                        while (true) {
                            int i2 = aa & length;
                            int i3 = bArr[i2] & 255;
                            if (i3 == 255) {
                                break;
                            }
                            if (obj.equals(objArr[i3])) {
                                obj2 = objArr[i3 ^ 1];
                                break;
                            }
                            aa = i2 + 1;
                        }
                    } else if (obj4 instanceof short[]) {
                        short[] sArr = (short[]) obj4;
                        int length2 = sArr.length - 1;
                        int aa2 = gs.aa(obj.hashCode());
                        while (true) {
                            int i4 = aa2 & length2;
                            char c2 = (char) sArr[i4];
                            if (c2 == 65535) {
                                break;
                            }
                            if (obj.equals(objArr[c2])) {
                                obj2 = objArr[c2 ^ 1];
                                break;
                            }
                            aa2 = i4 + 1;
                        }
                    } else {
                        int[] iArr = (int[]) obj4;
                        int length3 = iArr.length - 1;
                        int aa3 = gs.aa(obj.hashCode());
                        while (true) {
                            int i5 = aa3 & length3;
                            int i6 = iArr[i5];
                            if (i6 == -1) {
                                break;
                            }
                            if (obj.equals(objArr[i6])) {
                                obj2 = objArr[i6 ^ 1];
                                break;
                            }
                            aa3 = i5 + 1;
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

    @Override // java.util.Map
    public final int size() {
        return this.j;
    }
}
