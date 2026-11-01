package com.bytedance.pangle.g;

import android.content.pm.Signature;
import android.util.ArraySet;
import g.fnh;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.security.PublicKey;
import java.util.Arrays;

/* loaded from: classes.dex */
final class o {

    /* renamed from: a, reason: collision with root package name */
    public static final o f1450a = new o(null, 0, null, null, null);

    /* renamed from: b, reason: collision with root package name */
    public final Signature[] f1451b;

    /* renamed from: c, reason: collision with root package name */
    public final int f1452c;

    /* renamed from: d, reason: collision with root package name */
    public final ArraySet<PublicKey> f1453d;

    /* renamed from: e, reason: collision with root package name */
    public final Signature[] f1454e;

    /* renamed from: f, reason: collision with root package name */
    public final int[] f1455f;

    public o(Signature[] signatureArr) {
        this(signatureArr, 2, null, null);
    }

    public o(Signature[] signatureArr, int i, ArraySet<PublicKey> arraySet, Signature[] signatureArr2, int[] iArr) {
        this.f1451b = signatureArr;
        this.f1452c = i;
        this.f1453d = arraySet;
        this.f1454e = signatureArr2;
        this.f1455f = iArr;
    }

    public o(Signature[] signatureArr, int i, Signature[] signatureArr2, int[] iArr) {
        this(signatureArr, i, a(signatureArr), signatureArr2, iArr);
    }

    private static ArraySet<PublicKey> a(Signature[] signatureArr) {
        Method method;
        fnh.t();
        ArraySet<PublicKey> w = fnh.w(signatureArr.length);
        for (Signature signature : signatureArr) {
            try {
                method = Signature.class.getMethod("getPublicKey", null);
            } catch (NoSuchMethodException e2) {
                e2.printStackTrace();
                method = null;
            }
            if (method != null && method.isAccessible()) {
                try {
                    w.add((PublicKey) method.invoke(signature, null));
                } catch (IllegalAccessException e3) {
                    e3.printStackTrace();
                } catch (InvocationTargetException e4) {
                    e4.printStackTrace();
                } catch (Exception e5) {
                    e5.printStackTrace();
                }
            }
        }
        return w;
    }

    public static boolean a(byte[] bArr, byte[] bArr2) {
        if (bArr.length != bArr2.length) {
            return false;
        }
        for (int i = 0; i < bArr.length; i++) {
            if (bArr[i] != bArr2[i]) {
                return false;
            }
        }
        return true;
    }

    public static boolean a(Signature[] signatureArr, Signature[] signatureArr2) {
        return signatureArr.length == signatureArr2.length && com.bytedance.pangle.util.d.a((Object[]) signatureArr, (Object[]) signatureArr2) && com.bytedance.pangle.util.d.a((Object[]) signatureArr2, (Object[]) signatureArr);
    }

    public final boolean equals(Object obj) {
        boolean equals;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof o)) {
            return false;
        }
        o oVar = (o) obj;
        if (this.f1452c != oVar.f1452c || !a(this.f1451b, oVar.f1451b)) {
            return false;
        }
        ArraySet<PublicKey> arraySet = this.f1453d;
        if (arraySet != null) {
            equals = arraySet.equals(oVar.f1453d);
            if (!equals) {
                return false;
            }
        } else if (oVar.f1453d != null) {
            return false;
        }
        return Arrays.equals(this.f1454e, oVar.f1454e) && Arrays.equals(this.f1455f, oVar.f1455f);
    }

    public final int hashCode() {
        int hashCode = ((Arrays.hashCode(this.f1451b) * 31) + this.f1452c) * 31;
        ArraySet<PublicKey> arraySet = this.f1453d;
        return Arrays.hashCode(this.f1455f) + ((((hashCode + (arraySet != null ? arraySet.hashCode() : 0)) * 31) + Arrays.hashCode(this.f1454e)) * 31);
    }
}
