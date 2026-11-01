package g;

/* loaded from: classes3.dex */
public abstract class bgz {

    /* renamed from: a, reason: collision with root package name */
    public static final byte[] f11559a;

    static {
        byte[] bytes = "0123456789abcdef".getBytes(ejm.f15667a);
        bff.e(bytes, "this as java.lang.String).getBytes(charset)");
        f11559a = bytes;
    }

    public static final String b(clq clqVar, long j) {
        if (j > 0) {
            long j2 = j - 1;
            if (clqVar.an(j2) == 13) {
                String n = clqVar.n(j2, ejm.f15667a);
                clqVar.skip(2L);
                return n;
            }
        }
        String n2 = clqVar.n(j, ejm.f15667a);
        clqVar.skip(1L);
        return n2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x005c, code lost:
    
        if (r18 == false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x005e, code lost:
    
        return -2;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final int c(clq clqVar, hck hckVar, boolean z) {
        int i;
        int i2;
        int i3;
        ghg ghgVar;
        int i4;
        bff.p(hckVar, "options");
        ghg ghgVar2 = clqVar.f13079a;
        if (ghgVar2 == null) {
            return z ? -2 : -1;
        }
        byte[] bArr = ghgVar2.f18156c;
        int i5 = ghgVar2.f18158e;
        int i6 = ghgVar2.f18159f;
        int[] iArr = hckVar.f19219c;
        ghg ghgVar3 = ghgVar2;
        int i7 = 0;
        int i8 = -1;
        loop0: while (true) {
            int i9 = i7 + 1;
            int i10 = iArr[i7];
            int i11 = i7 + 2;
            int i12 = iArr[i9];
            if (i12 != -1) {
                i8 = i12;
            }
            if (ghgVar3 == null) {
                break;
            }
            if (i10 >= 0) {
                int i13 = i5 + 1;
                int i14 = bArr[i5] & 255;
                int i15 = i11 + i10;
                while (i11 != i15) {
                    if (i14 == iArr[i11]) {
                        i = iArr[i11 + i10];
                        if (i13 == i6) {
                            ghgVar3 = ghgVar3.f18157d;
                            bff.d(ghgVar3);
                            int i16 = ghgVar3.f18158e;
                            byte[] bArr2 = ghgVar3.f18156c;
                            i2 = ghgVar3.f18159f;
                            if (ghgVar3 == ghgVar2) {
                                i3 = i16;
                                bArr = bArr2;
                                ghgVar3 = null;
                            } else {
                                i3 = i16;
                                bArr = bArr2;
                            }
                        } else {
                            i2 = i6;
                            i3 = i13;
                        }
                        if (i >= 0) {
                            return i;
                        }
                        int i17 = i2;
                        i7 = -i;
                        i5 = i3;
                        i6 = i17;
                    } else {
                        i11++;
                    }
                }
                break loop0;
            }
            int i18 = (i10 * (-1)) + i11;
            while (true) {
                int i19 = i5 + 1;
                int i20 = i11 + 1;
                if ((bArr[i5] & 255) != iArr[i11]) {
                    break loop0;
                }
                boolean z2 = i20 == i18;
                if (i19 == i6) {
                    bff.d(ghgVar3);
                    ghg ghgVar4 = ghgVar3.f18157d;
                    bff.d(ghgVar4);
                    i3 = ghgVar4.f18158e;
                    byte[] bArr3 = ghgVar4.f18156c;
                    i4 = ghgVar4.f18159f;
                    if (ghgVar4 != ghgVar2) {
                        ghgVar = ghgVar4;
                        bArr = bArr3;
                    } else {
                        if (!z2) {
                            break loop0;
                        }
                        bArr = bArr3;
                        ghgVar = null;
                    }
                } else {
                    ghgVar = ghgVar3;
                    i4 = i6;
                    i3 = i19;
                }
                if (z2) {
                    i = iArr[i20];
                    int i21 = i4;
                    ghgVar3 = ghgVar;
                    i2 = i21;
                    break;
                }
                i5 = i3;
                i6 = i4;
                ghgVar3 = ghgVar;
                i11 = i20;
            }
        }
        return i8;
    }
}
