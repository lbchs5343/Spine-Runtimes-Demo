package com.bytedance.pangle.f.a;

import g.awf;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes.dex */
final class a {

    /* renamed from: a, reason: collision with root package name */
    int f1398a;

    /* renamed from: b, reason: collision with root package name */
    b f1399b;

    /* renamed from: c, reason: collision with root package name */
    int[] f1400c;
    private boolean i;
    private f k;
    private boolean j = false;
    private final c l = new c();

    /* renamed from: d, reason: collision with root package name */
    int f1401d = 0;

    /* renamed from: e, reason: collision with root package name */
    int f1402e = 1;

    /* renamed from: f, reason: collision with root package name */
    int f1403f = 2;

    /* renamed from: g, reason: collision with root package name */
    int f1404g = 3;
    int h = 4;

    public a() {
        c();
    }

    private void c() {
        this.f1400c = null;
        this.f1398a = -1;
    }

    private int e(int i) {
        if (this.f1398a != 2) {
            throw new IndexOutOfBoundsException("Current event is not START_TAG.");
        }
        int i2 = i * 5;
        if (i2 < this.f1400c.length) {
            return i2;
        }
        throw new IndexOutOfBoundsException(awf.b(i, "Invalid attribute index (", ")."));
    }

    public final String a(int i) {
        int i2 = this.f1400c[e(i) + 1];
        return i2 == -1 ? "" : this.k.a(i2);
    }

    public final void a() {
        if (this.j) {
            this.j = false;
            b bVar = this.f1399b;
            InputStream inputStream = bVar.f1405a;
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException unused) {
                }
                bVar.a((InputStream) null);
            }
            this.k = null;
            this.f1399b = null;
            c cVar = this.l;
            cVar.f1408b = 0;
            cVar.f1409c = 0;
            c();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:106:0x0223, code lost:
    
        throw new java.io.IOException("Invalid chunk type (" + r1 + ").");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int b() {
        int a2;
        int[] iArr;
        int i;
        try {
            b bVar = this.f1399b;
            if (bVar == null) {
                throw new IOException("Parser is not opened.");
            }
            if (this.k == null) {
                bVar.b(524291);
                this.f1399b.b();
                b bVar2 = this.f1399b;
                bVar2.b(1835009);
                int a3 = bVar2.a();
                int a4 = bVar2.a();
                int a5 = bVar2.a();
                bVar2.a();
                int a6 = bVar2.a();
                int a7 = bVar2.a();
                f fVar = new f();
                fVar.f1413a = bVar2.a(a4);
                if (a5 != 0) {
                    bVar2.a(a5);
                }
                int i2 = (a7 == 0 ? a3 : a7) - a6;
                if (i2 % 4 != 0) {
                    throw new IOException();
                }
                fVar.f1414b = bVar2.a(i2 / 4);
                if (a7 != 0) {
                    int i3 = a3 - a7;
                    if (i3 % 4 != 0) {
                        throw new IOException();
                    }
                    bVar2.a(i3 / 4);
                }
                this.k = fVar;
                this.l.a();
                this.j = true;
            }
            int i4 = this.f1398a;
            if (i4 != this.f1402e) {
                c();
                while (true) {
                    int i5 = 0;
                    if (this.i) {
                        this.i = false;
                        c cVar = this.l;
                        int i6 = cVar.f1408b;
                        if (i6 != 0) {
                            int i7 = cVar.f1407a[i6 - 1] * 2;
                            if ((i6 - 2) - i7 != 0) {
                                cVar.f1408b = i6 - (i7 + 2);
                                cVar.f1409c--;
                            }
                        }
                    }
                    if (i4 == this.f1404g) {
                        c cVar2 = this.l;
                        if (cVar2.f1409c == 1) {
                            int i8 = cVar2.f1408b;
                            if (i8 != 0) {
                                i5 = cVar2.f1407a[i8 - 1];
                            }
                            if (i5 == 0) {
                                this.f1398a = this.f1402e;
                                break;
                            }
                        }
                    }
                    int a8 = i4 == this.f1401d ? 1048834 : this.f1399b.a();
                    if (a8 != 524672) {
                        if (a8 >= 1048832 && a8 <= 1048836) {
                            if (a8 == 1048834 && i4 == -1) {
                                this.f1398a = this.f1401d;
                                break;
                            }
                            this.f1399b.b();
                            this.f1399b.a();
                            this.f1399b.b();
                            if (a8 != 1048832 && a8 != 1048833) {
                                if (a8 == 1048834) {
                                    this.f1399b.a();
                                    this.f1399b.a();
                                    this.f1399b.b();
                                    int a9 = this.f1399b.a() & 65535;
                                    this.f1399b.a();
                                    this.f1400c = this.f1399b.a(a9 * 5);
                                    int i9 = 3;
                                    while (true) {
                                        int[] iArr2 = this.f1400c;
                                        if (i9 >= iArr2.length) {
                                            break;
                                        }
                                        iArr2[i9] = iArr2[i9] >>> 24;
                                        i9 += 5;
                                    }
                                    this.l.a();
                                    this.f1398a = this.f1403f;
                                } else {
                                    if (a8 == 1048835) {
                                        this.f1399b.a();
                                        this.f1399b.a();
                                        this.f1398a = this.f1404g;
                                        this.i = true;
                                        break;
                                    }
                                    if (a8 == 1048836) {
                                        this.f1399b.a();
                                        this.f1399b.b();
                                        this.f1399b.b();
                                        this.f1398a = this.h;
                                        break;
                                    }
                                }
                            }
                            if (a8 == 1048832) {
                                int a10 = this.f1399b.a();
                                int a11 = this.f1399b.a();
                                c cVar3 = this.l;
                                if (cVar3.f1409c == 0) {
                                    cVar3.a();
                                }
                                cVar3.b();
                                int i10 = cVar3.f1408b;
                                int i11 = i10 - 1;
                                int[] iArr3 = cVar3.f1407a;
                                int i12 = iArr3[i11];
                                int i13 = (i10 - 2) - (i12 * 2);
                                int i14 = i12 + 1;
                                iArr3[i13] = i14;
                                iArr3[i11] = a10;
                                iArr3[i10] = a11;
                                iArr3[i10 + 1] = i14;
                                cVar3.f1408b = i10 + 2;
                            } else {
                                this.f1399b.b();
                                this.f1399b.b();
                                c cVar4 = this.l;
                                int i15 = cVar4.f1408b;
                                if (i15 != 0 && (i = (iArr = cVar4.f1407a)[i15 - 1]) != 0) {
                                    int i16 = i - 1;
                                    int i17 = i15 - 3;
                                    iArr[i17] = i16;
                                    iArr[i17 - ((i16 * 2) + 1)] = i16;
                                    cVar4.f1408b = i15 - 2;
                                }
                            }
                        } else {
                            break;
                        }
                    } else {
                        a2 = this.f1399b.a();
                        if (a2 < 8 || a2 % 4 != 0) {
                            break;
                        }
                        this.f1399b.a((a2 / 4) - 2);
                    }
                }
                throw new IOException("Invalid resource ids size (" + a2 + ").");
            }
            return this.f1398a;
        } catch (IOException e2) {
            a();
            throw e2;
        }
    }

    public final int b(int i) {
        return this.f1400c[e(i) + 3];
    }

    public final int c(int i) {
        return this.f1400c[e(i) + 4];
    }

    public final String d(int i) {
        int e2 = e(i);
        int[] iArr = this.f1400c;
        if (iArr[e2 + 3] != 3) {
            return "";
        }
        return this.k.a(iArr[e2 + 2]);
    }
}
