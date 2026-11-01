package com.ss.android.socialbase.appdownloader.iw.dq;

import g.awf;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes.dex */
class dq implements kk {

    /* renamed from: d, reason: collision with root package name */
    private p f9282d;
    private int ia;
    private int[] ig;
    private int jy;
    private int kk;
    private boolean mn;
    private int mp;
    private int no;
    private int o;
    private iw p;
    private int q;
    private int[] s;
    private boolean ox = false;
    private C0227dq iw = new C0227dq();

    /* renamed from: com.ss.android.socialbase.appdownloader.iw.dq.dq$dq, reason: collision with other inner class name */
    public static final class C0227dq {

        /* renamed from: d, reason: collision with root package name */
        private int f9283d;
        private int[] dq = new int[32];
        private int ox;

        private void dq(int i) {
            int[] iArr = this.dq;
            int length = iArr.length;
            int i2 = this.f9283d;
            int i3 = length - i2;
            if (i3 <= i) {
                int[] iArr2 = new int[(iArr.length + i3) * 2];
                System.arraycopy(iArr, 0, iArr2, 0, i2);
                this.dq = iArr2;
            }
        }

        public final int d() {
            int i = this.f9283d;
            if (i == 0) {
                return 0;
            }
            return this.dq[i - 1];
        }

        public final void dq() {
            this.f9283d = 0;
            this.ox = 0;
        }

        public final void dq(int i, int i2) {
            if (this.ox == 0) {
                s();
            }
            dq(2);
            int i3 = this.f9283d;
            int i4 = i3 - 1;
            int[] iArr = this.dq;
            int i5 = iArr[i4];
            int i6 = (i3 - 2) - (i5 * 2);
            int i7 = i5 + 1;
            iArr[i6] = i7;
            iArr[i4] = i;
            iArr[i3] = i2;
            iArr[i3 + 1] = i7;
            this.f9283d = i3 + 2;
        }

        public final void iw() {
            int i = this.f9283d;
            if (i != 0) {
                int i2 = this.dq[i - 1] * 2;
                if ((i - 2) - i2 != 0) {
                    this.f9283d = i - (i2 + 2);
                    this.ox--;
                }
            }
        }

        public final boolean ox() {
            int[] iArr;
            int i;
            int i2 = this.f9283d;
            if (i2 == 0 || (i = (iArr = this.dq)[i2 - 1]) == 0) {
                return false;
            }
            int i3 = i - 1;
            int i4 = i2 - 3;
            iArr[i4] = i3;
            iArr[i4 - ((i3 * 2) + 1)] = i3;
            this.f9283d = i2 - 2;
            return true;
        }

        public final int p() {
            return this.ox;
        }

        public final void s() {
            dq(2);
            int i = this.f9283d;
            int[] iArr = this.dq;
            iArr[i] = 0;
            iArr[i + 1] = 0;
            this.f9283d = i + 2;
            this.ox++;
        }
    }

    public dq() {
        mn();
    }

    /* JADX WARN: Code restructure failed: missing block: B:73:0x016c, code lost:
    
        throw new java.io.IOException(g.awf.b(r5, "Invalid chunk type (", ")."));
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final void ia() throws IOException {
        int d2;
        if (this.p == null) {
            d.dq(this.f9282d, 524291);
            this.f9282d.ox();
            this.p = iw.dq(this.f9282d);
            this.iw.s();
            this.ox = true;
        }
        int i = this.ia;
        if (i != 1) {
            mn();
            while (true) {
                if (this.mn) {
                    this.mn = false;
                    this.iw.iw();
                }
                int i2 = 3;
                if (i == 3 && this.iw.p() == 1 && this.iw.d() == 0) {
                    this.ia = 1;
                    return;
                }
                int d3 = i == 0 ? 1048834 : this.f9282d.d();
                if (d3 == 524672) {
                    d2 = this.f9282d.d();
                    if (d2 < 8 || d2 % 4 != 0) {
                        break;
                    } else {
                        this.s = this.f9282d.d((d2 / 4) - 2);
                    }
                } else {
                    if (d3 < 1048832 || d3 > 1048836) {
                        break;
                    }
                    if (d3 == 1048834 && i == -1) {
                        this.ia = 0;
                        return;
                    }
                    this.f9282d.ox();
                    int d4 = this.f9282d.d();
                    this.f9282d.ox();
                    if (d3 != 1048832 && d3 != 1048833) {
                        this.kk = d4;
                        if (d3 == 1048834) {
                            this.no = this.f9282d.d();
                            this.o = this.f9282d.d();
                            this.f9282d.ox();
                            int d5 = this.f9282d.d();
                            this.mp = (d5 >>> 16) - 1;
                            int d6 = this.f9282d.d();
                            this.jy = (d6 >>> 16) - 1;
                            this.q = (65535 & d6) - 1;
                            this.ig = this.f9282d.d((d5 & 65535) * 5);
                            while (true) {
                                int[] iArr = this.ig;
                                if (i2 >= iArr.length) {
                                    this.iw.s();
                                    this.ia = 2;
                                    return;
                                } else {
                                    iArr[i2] = iArr[i2] >>> 24;
                                    i2 += 5;
                                }
                            }
                        } else {
                            if (d3 == 1048835) {
                                this.no = this.f9282d.d();
                                this.o = this.f9282d.d();
                                this.ia = 3;
                                this.mn = true;
                                return;
                            }
                            if (d3 == 1048836) {
                                this.o = this.f9282d.d();
                                this.f9282d.ox();
                                this.f9282d.ox();
                                this.ia = 4;
                                return;
                            }
                        }
                    } else if (d3 == 1048832) {
                        this.iw.dq(this.f9282d.d(), this.f9282d.d());
                    } else {
                        this.f9282d.ox();
                        this.f9282d.ox();
                        this.iw.ox();
                    }
                }
            }
            throw new IOException(awf.b(d2, "Invalid resource ids size (", ")."));
        }
    }

    private final void mn() {
        this.ia = -1;
        this.kk = -1;
        this.o = -1;
        this.no = -1;
        this.ig = null;
        this.mp = -1;
        this.q = -1;
        this.jy = -1;
    }

    private final int s(int i) {
        if (this.ia != 2) {
            throw new IndexOutOfBoundsException("Current event is not START_TAG.");
        }
        int i2 = i * 5;
        if (i2 < this.ig.length) {
            return i2;
        }
        throw new IndexOutOfBoundsException(awf.b(i, "Invalid attribute index (", ")."));
    }

    public int d() throws ia, IOException {
        if (this.f9282d == null) {
            throw new ia("Parser is not opened.", this, null);
        }
        try {
            ia();
            return this.ia;
        } catch (IOException e2) {
            dq();
            throw e2;
        }
    }

    public int d(int i) {
        return this.ig[s(i) + 3];
    }

    public String dq(int i) {
        int i2 = this.ig[s(i) + 1];
        return i2 == -1 ? "" : this.p.dq(i2);
    }

    public void dq() {
        if (this.ox) {
            this.ox = false;
            this.f9282d.dq();
            this.f9282d = null;
            this.p = null;
            this.s = null;
            this.iw.dq();
            mn();
        }
    }

    public void dq(InputStream inputStream) {
        dq();
        if (inputStream != null) {
            this.f9282d = new p(inputStream, false);
        }
    }

    @Override // com.ss.android.socialbase.appdownloader.iw.dq.mn
    public int iw() {
        return -1;
    }

    @Override // com.ss.android.socialbase.appdownloader.iw.dq.mn
    public int ox() {
        return this.kk;
    }

    public int ox(int i) {
        return this.ig[s(i) + 4];
    }

    @Override // com.ss.android.socialbase.appdownloader.iw.dq.mn
    public String p() {
        return "XML line #" + ox();
    }

    public String p(int i) {
        int s = s(i);
        int[] iArr = this.ig;
        if (iArr[s + 3] != 3) {
            return "";
        }
        return this.p.dq(iArr[s + 2]);
    }

    public int s() {
        if (this.ia != 2) {
            return -1;
        }
        return this.ig.length / 5;
    }
}
