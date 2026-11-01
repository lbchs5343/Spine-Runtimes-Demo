package g;

import java.lang.reflect.Type;

/* loaded from: classes.dex */
public final class ecr implements duf {

    /* renamed from: a, reason: collision with root package name */
    public final Class f15316a;

    /* renamed from: c, reason: collision with root package name */
    public final duf f15317c;

    public ecr(Class cls, duf dufVar) {
        this.f15316a = cls;
        this.f15317c = dufVar;
    }

    @Override // g.duf
    public final void b(cnu cnuVar, Object obj, Object obj2, Type type) {
        cxa cxaVar = cnuVar.j;
        if (obj == null) {
            if ((cxaVar.k & gar.WriteNullListAsEmpty.mask) != 0) {
                cxaVar.write("[]");
                return;
            } else {
                cxaVar.o();
                return;
            }
        }
        if (obj instanceof boolean[]) {
            boolean[] zArr = (boolean[]) obj;
            cxaVar.write(91);
            while (r9 < zArr.length) {
                if (r9 != 0) {
                    cxaVar.write(44);
                }
                cxaVar.write(zArr[r9] ? "true" : "false");
                r9++;
            }
            cxaVar.write(93);
            return;
        }
        if (obj instanceof byte[]) {
            byte[] bArr = (byte[]) obj;
            cxaVar.getClass();
            int length = bArr.length;
            boolean z = (cxaVar.k & gar.UseSingleQuotes.mask) != 0;
            char c2 = z ? '\'' : '\"';
            if (length == 0) {
                cxaVar.write(z ? "''" : "\"\"");
                return;
            }
            char[] cArr = fzg.f17697a;
            int i = (length / 3) * 3;
            int i2 = length - 1;
            int i3 = cxaVar.m;
            int i4 = (((i2 / 3) + 1) << 2) + i3;
            int i5 = i4 + 2;
            if (i5 > cxaVar.l.length) {
                cxaVar.u(i5);
            }
            cxaVar.m = i5;
            int i6 = i3 + 1;
            cxaVar.l[i3] = c2;
            int i7 = 0;
            while (i7 < i) {
                int i8 = i7 + 2;
                int i9 = ((bArr[i7 + 1] & 255) << 8) | ((bArr[i7] & 255) << 16);
                i7 += 3;
                int i10 = i9 | (bArr[i8] & 255);
                char[] cArr2 = cxaVar.l;
                cArr2[i6] = cArr[(i10 >>> 18) & 63];
                cArr2[i6 + 1] = cArr[(i10 >>> 12) & 63];
                int i11 = i6 + 3;
                cArr2[i6 + 2] = cArr[(i10 >>> 6) & 63];
                i6 += 4;
                cArr2[i11] = cArr[i10 & 63];
            }
            int i12 = length - i;
            if (i12 > 0) {
                int i13 = ((bArr[i] & 255) << 10) | (i12 == 2 ? (bArr[i2] & 255) << 2 : 0);
                char[] cArr3 = cxaVar.l;
                cArr3[i4 - 3] = cArr[i13 >> 12];
                cArr3[i4 - 2] = cArr[(i13 >>> 6) & 63];
                cArr3[i4 - 1] = i12 == 2 ? cArr[i13 & 63] : '=';
                cArr3[i4] = '=';
            }
            cxaVar.l[i4 + 1] = c2;
            return;
        }
        if (obj instanceof char[]) {
            cxaVar.t(new String((char[]) obj));
            return;
        }
        if (obj instanceof double[]) {
            double[] dArr = (double[]) obj;
            int length2 = dArr.length - 1;
            if (length2 == -1) {
                cxaVar.s("[]");
                return;
            }
            cxaVar.write(91);
            while (r9 < length2) {
                double d2 = dArr[r9];
                if (Double.isNaN(d2)) {
                    cxaVar.o();
                } else {
                    cxaVar.s(Double.toString(d2));
                }
                cxaVar.write(44);
                r9++;
            }
            double d3 = dArr[length2];
            if (Double.isNaN(d3)) {
                cxaVar.o();
            } else {
                cxaVar.s(Double.toString(d3));
            }
            cxaVar.write(93);
            return;
        }
        if (obj instanceof float[]) {
            float[] fArr = (float[]) obj;
            int length3 = fArr.length - 1;
            if (length3 == -1) {
                cxaVar.s("[]");
                return;
            }
            cxaVar.write(91);
            while (r9 < length3) {
                float f2 = fArr[r9];
                if (Float.isNaN(f2)) {
                    cxaVar.o();
                } else {
                    cxaVar.s(Float.toString(f2));
                }
                cxaVar.write(44);
                r9++;
            }
            float f3 = fArr[length3];
            if (Float.isNaN(f3)) {
                cxaVar.o();
            } else {
                cxaVar.s(Float.toString(f3));
            }
            cxaVar.write(93);
            return;
        }
        if (obj instanceof int[]) {
            int[] iArr = (int[]) obj;
            cxaVar.write(91);
            while (r9 < iArr.length) {
                if (r9 != 0) {
                    cxaVar.write(44);
                }
                cxaVar.q(iArr[r9]);
                r9++;
            }
            cxaVar.write(93);
            return;
        }
        if (obj instanceof long[]) {
            long[] jArr = (long[]) obj;
            cxaVar.write(91);
            while (r9 < jArr.length) {
                if (r9 != 0) {
                    cxaVar.write(44);
                }
                cxaVar.w(jArr[r9]);
                r9++;
            }
            cxaVar.write(93);
            return;
        }
        if (obj instanceof short[]) {
            short[] sArr = (short[]) obj;
            cxaVar.write(91);
            while (r9 < sArr.length) {
                if (r9 != 0) {
                    cxaVar.write(44);
                }
                cxaVar.q(sArr[r9]);
                r9++;
            }
            cxaVar.write(93);
            return;
        }
        Object[] objArr = (Object[]) obj;
        int length4 = objArr.length;
        aca acaVar = cnuVar.f13198b;
        cnuVar.q(acaVar, obj, obj2);
        try {
            cxaVar.write(91);
            while (r9 < length4) {
                if (r9 != 0) {
                    cxaVar.write(44);
                }
                Object obj3 = objArr[r9];
                if (obj3 == null) {
                    cxaVar.s("null");
                } else if (obj3.getClass() == this.f15316a) {
                    this.f15317c.b(cnuVar, obj3, Integer.valueOf(r9), null);
                } else {
                    cnuVar.f13202f.c(obj3.getClass()).b(cnuVar, obj3, Integer.valueOf(r9), null);
                }
                r9++;
            }
            cxaVar.write(93);
            cnuVar.f13198b = acaVar;
        } catch (Throwable th) {
            cnuVar.f13198b = acaVar;
            throw th;
        }
    }
}
