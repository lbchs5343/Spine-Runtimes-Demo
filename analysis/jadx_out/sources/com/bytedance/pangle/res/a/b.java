package com.bytedance.pangle.res.a;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class b {

    /* renamed from: c, reason: collision with root package name */
    g f1560c;
    private final h i;
    private final byte[] j;
    private int[] l;
    private boolean n;
    private int o;
    private int[] p;
    private int q;

    /* renamed from: a, reason: collision with root package name */
    HashMap<Integer, Integer> f1558a = new HashMap<>();

    /* renamed from: b, reason: collision with root package name */
    boolean f1559b = false;
    private boolean k = false;
    private final a m = new a();

    /* renamed from: d, reason: collision with root package name */
    int f1561d = 0;

    /* renamed from: e, reason: collision with root package name */
    int f1562e = 1;

    /* renamed from: f, reason: collision with root package name */
    int f1563f = 2;

    /* renamed from: g, reason: collision with root package name */
    int f1564g = 3;
    int h = 4;

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        int[] f1565a = new int[32];

        /* renamed from: b, reason: collision with root package name */
        int f1566b;

        /* renamed from: c, reason: collision with root package name */
        int f1567c;

        public final void a() {
            b();
            int i = this.f1566b;
            int[] iArr = this.f1565a;
            iArr[i] = 0;
            iArr[i + 1] = 0;
            this.f1566b = i + 2;
            this.f1567c++;
        }

        public final void b() {
            int[] iArr = this.f1565a;
            int length = iArr.length;
            int i = this.f1566b;
            int i2 = length - i;
            if (i2 > 2) {
                return;
            }
            int[] iArr2 = new int[(iArr.length + i2) * 2];
            System.arraycopy(iArr, 0, iArr2, 0, i);
            this.f1565a = iArr2;
        }
    }

    public b(byte[] bArr, h hVar) {
        this.i = hVar;
        this.j = bArr;
        c();
    }

    private void c() {
        this.o = -1;
        this.p = null;
        this.q = -1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:118:0x027e, code lost:
    
        throw new java.io.IOException(g.awf.b(r6, "Invalid chunk type (", ")."));
     */
    /* JADX WARN: Code restructure failed: missing block: B:143:0x0121, code lost:
    
        throw new java.io.IOException(g.awf.b(r6, "Invalid resource ids size (", ")."));
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void d() {
        int[] iArr;
        int i;
        int[] iArr2;
        int i2 = 3;
        if (!this.k) {
            int readInt = this.f1560c.readInt();
            if (readInt != 524291 && readInt != 524289) {
                throw new IOException(String.format("Expected: 0x%08x or 0x%08x, got: 0x%08x", 524291, 524289, Integer.valueOf(readInt)));
            }
            this.f1560c.skipBytes(4);
            l.a(this.f1560c);
            this.m.a();
            this.k = true;
        }
        int i3 = this.o;
        if (i3 == this.f1562e) {
            return;
        }
        c();
        while (true) {
            if (this.n) {
                this.n = false;
                a aVar = this.m;
                int i4 = aVar.f1566b;
                if (i4 != 0) {
                    int i5 = aVar.f1565a[i4 - 1] * 2;
                    if ((i4 - 2) - i5 != 0) {
                        aVar.f1566b = i4 - (i5 + 2);
                        aVar.f1567c--;
                    }
                }
            }
            if (i3 == this.f1564g) {
                a aVar2 = this.m;
                if (aVar2.f1567c == 1) {
                    int i6 = aVar2.f1566b;
                    if ((i6 == 0 ? 0 : aVar2.f1565a[i6 - 1]) == 0) {
                        this.o = this.f1562e;
                        return;
                    }
                }
            }
            int readInt2 = i3 == this.f1561d ? 1048834 : this.f1560c.readInt();
            if (readInt2 == 524672) {
                this.f1558a.clear();
                int readInt3 = this.f1560c.readInt();
                if (readInt3 < 8 || readInt3 % 4 != 0) {
                    break;
                }
                int a2 = k.a(this.f1560c);
                this.l = this.f1560c.a((readInt3 / 4) - 2);
                ArrayList arrayList = new ArrayList();
                int i7 = 0;
                while (true) {
                    int[] iArr3 = this.l;
                    if (i7 >= iArr3.length) {
                        break;
                    }
                    int a3 = k.a(this.j, iArr3[i7], (i7 * 4) + a2, this.i);
                    if (a3 >= 2130706432) {
                        this.f1558a.put(Integer.valueOf(i7), Integer.valueOf(a3));
                        arrayList.add(Integer.valueOf(a3));
                    }
                    i7++;
                }
                ArrayList arrayList2 = new ArrayList(arrayList);
                Collections.sort(arrayList2);
                if (!arrayList.equals(arrayList2)) {
                    this.f1559b = true;
                }
            } else {
                if (readInt2 < 1048832 || readInt2 > 1048836) {
                    break;
                }
                if (readInt2 == 1048834 && i3 == -1) {
                    this.o = this.f1561d;
                    return;
                }
                this.f1560c.skipBytes(4);
                this.f1560c.readInt();
                this.f1560c.skipBytes(4);
                if (readInt2 != 1048832 && readInt2 != 1048833) {
                    if (readInt2 == 1048834) {
                        this.f1560c.readInt();
                        this.f1560c.readInt();
                        this.f1560c.skipBytes(4);
                        int readInt4 = this.f1560c.readInt() & 65535;
                        this.q = (65535 & this.f1560c.readInt()) - 1;
                        int a4 = k.a(this.f1560c);
                        int i8 = readInt4 * 5;
                        this.p = this.f1560c.a(i8);
                        while (true) {
                            iArr2 = this.p;
                            if (i2 >= iArr2.length) {
                                break;
                            }
                            iArr2[i2] = iArr2[i2] >>> 24;
                            i2 += 5;
                        }
                        if (iArr2.length != i8) {
                            throw new RuntimeException();
                        }
                        boolean z = false;
                        for (int i9 = 0; i9 < readInt4; i9++) {
                            int i10 = i9 * 5;
                            if (this.f1558a.containsKey(Integer.valueOf(this.p[i10 + 1]))) {
                                z = true;
                            }
                            int[] iArr4 = this.p;
                            int i11 = iArr4[i10 + 3];
                            if (i11 == 1 || i11 == 2) {
                                int i12 = i10 + 4;
                                k.a(this.j, iArr4[i12], (i12 * 4) + a4, this.i);
                            }
                        }
                        if (z && this.f1559b) {
                            k.a(a4, this.j, this.p, readInt4, this.f1558a);
                        }
                        this.m.a();
                        this.o = this.f1563f;
                        return;
                    }
                    if (readInt2 == 1048835) {
                        this.f1560c.readInt();
                        this.f1560c.readInt();
                        this.o = this.f1564g;
                        this.n = true;
                        return;
                    }
                    if (readInt2 == 1048836) {
                        this.f1560c.readInt();
                        this.f1560c.skipBytes(4);
                        this.f1560c.skipBytes(4);
                        this.o = this.h;
                        return;
                    }
                } else if (readInt2 == 1048832) {
                    int readInt5 = this.f1560c.readInt();
                    int readInt6 = this.f1560c.readInt();
                    a aVar3 = this.m;
                    if (aVar3.f1567c == 0) {
                        aVar3.a();
                    }
                    aVar3.b();
                    int i13 = aVar3.f1566b;
                    int i14 = i13 - 1;
                    int[] iArr5 = aVar3.f1565a;
                    int i15 = iArr5[i14];
                    int i16 = (i13 - 2) - (i15 * 2);
                    int i17 = i15 + 1;
                    iArr5[i16] = i17;
                    iArr5[i14] = readInt5;
                    iArr5[i13] = readInt6;
                    iArr5[i13 + 1] = i17;
                    aVar3.f1566b = i13 + 2;
                } else {
                    this.f1560c.skipBytes(4);
                    this.f1560c.skipBytes(4);
                    a aVar4 = this.m;
                    int i18 = aVar4.f1566b;
                    if (i18 != 0 && (i = (iArr = aVar4.f1565a)[i18 - 1]) != 0) {
                        int i19 = i - 1;
                        int i20 = i18 - 3;
                        iArr[i20] = i19;
                        iArr[i20 - ((i19 * 2) + 1)] = i19;
                        aVar4.f1566b = i18 - 2;
                    }
                }
            }
        }
    }

    public final void a() {
        if (this.k) {
            this.k = false;
            this.f1560c = null;
            this.l = null;
            a aVar = this.m;
            aVar.f1566b = 0;
            aVar.f1567c = 0;
            c();
        }
    }

    public final int b() {
        if (this.f1560c == null) {
            throw new RuntimeException("Parser is not opened.");
        }
        try {
            d();
            return this.o;
        } catch (IOException e2) {
            a();
            throw e2;
        }
    }
}
