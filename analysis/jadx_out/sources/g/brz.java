package g;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import java.util.ArrayList;
import java.util.Arrays;

/* loaded from: classes3.dex */
public final class brz {

    /* renamed from: a, reason: collision with root package name */
    public int f12100a;

    /* renamed from: d, reason: collision with root package name */
    public final clq f12103d;

    /* renamed from: g, reason: collision with root package name */
    public boolean f12106g;
    public int h;

    /* renamed from: f, reason: collision with root package name */
    public int f12105f = he.UNDEFINED_ITEM_ID;

    /* renamed from: b, reason: collision with root package name */
    public int f12101b = 4096;

    /* renamed from: c, reason: collision with root package name */
    public heb[] f12102c = new heb[8];

    /* renamed from: e, reason: collision with root package name */
    public int f12104e = 7;

    public brz(clq clqVar) {
        this.f12103d = clqVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00b6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void i(ArrayList arrayList) {
        int i;
        int i2;
        if (this.f12106g) {
            int i3 = this.f12105f;
            if (i3 < this.f12101b) {
                j(i3, 31, 32);
            }
            this.f12106g = false;
            this.f12105f = he.UNDEFINED_ITEM_ID;
            j(this.f12101b, 31, 32);
        }
        int size = arrayList.size();
        for (int i4 = 0; i4 < size; i4++) {
            heb hebVar = (heb) arrayList.get(i4);
            gei l = hebVar.f19331g.l();
            gei geiVar = hebVar.h;
            Integer num = (Integer) bhe.f11574b.get(l);
            if (num != null) {
                int intValue = num.intValue();
                i2 = intValue + 1;
                if (2 <= i2 && i2 < 8) {
                    heb[] hebVarArr = bhe.f11573a;
                    if (bff.n(hebVarArr[intValue].h, geiVar)) {
                        i = i2;
                    } else if (bff.n(hebVarArr[i2].h, geiVar)) {
                        i2 = intValue + 2;
                        i = i2;
                    }
                    if (i2 == -1) {
                        int i5 = this.f12104e + 1;
                        int length = this.f12102c.length;
                        while (true) {
                            if (i5 >= length) {
                                break;
                            }
                            heb hebVar2 = this.f12102c[i5];
                            bff.d(hebVar2);
                            if (bff.n(hebVar2.f19331g, l)) {
                                heb hebVar3 = this.f12102c[i5];
                                bff.d(hebVar3);
                                if (bff.n(hebVar3.h, geiVar)) {
                                    i2 = bhe.f11573a.length + (i5 - this.f12104e);
                                    break;
                                } else if (i == -1) {
                                    i = (i5 - this.f12104e) + bhe.f11573a.length;
                                }
                            }
                            i5++;
                        }
                    }
                    if (i2 == -1) {
                        j(i2, TTDownloadField.CALL_DOWNLOAD_MODEL_SET_EXTRA_VALUE, TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME);
                    } else if (i == -1) {
                        this.f12103d.al(64);
                        m(l);
                        m(geiVar);
                        l(hebVar);
                    } else {
                        gei geiVar2 = heb.f19326b;
                        l.getClass();
                        bff.p(geiVar2, "prefix");
                        if (!l.j(geiVar2, geiVar2.d()) || bff.n(heb.f19329e, l)) {
                            j(i, 63, 64);
                            m(geiVar);
                            l(hebVar);
                        } else {
                            j(i, 15, 0);
                            m(geiVar);
                        }
                    }
                }
                i = i2;
            } else {
                i = -1;
            }
            i2 = -1;
            if (i2 == -1) {
            }
            if (i2 == -1) {
            }
        }
    }

    public final void j(int i, int i2, int i3) {
        clq clqVar = this.f12103d;
        if (i < i2) {
            clqVar.al(i | i3);
            return;
        }
        clqVar.al(i3 | i2);
        int i4 = i - i2;
        while (i4 >= 128) {
            clqVar.al(128 | (i4 & TTDownloadField.CALL_DOWNLOAD_MODEL_SET_EXTRA_VALUE));
            i4 >>>= 7;
        }
        clqVar.al(i4);
    }

    public final void k(int i) {
        int i2;
        if (i > 0) {
            int length = this.f12102c.length - 1;
            int i3 = 0;
            while (true) {
                i2 = this.f12104e;
                if (length < i2 || i <= 0) {
                    break;
                }
                heb hebVar = this.f12102c[length];
                bff.d(hebVar);
                i -= hebVar.i;
                int i4 = this.f12100a;
                heb hebVar2 = this.f12102c[length];
                bff.d(hebVar2);
                this.f12100a = i4 - hebVar2.i;
                this.h--;
                i3++;
                length--;
            }
            heb[] hebVarArr = this.f12102c;
            int i5 = i2 + 1;
            System.arraycopy(hebVarArr, i5, hebVarArr, i5 + i3, this.h);
            heb[] hebVarArr2 = this.f12102c;
            int i6 = this.f12104e + 1;
            Arrays.fill(hebVarArr2, i6, i6 + i3, (Object) null);
            this.f12104e += i3;
        }
    }

    public final void l(heb hebVar) {
        int i = hebVar.i;
        int i2 = this.f12101b;
        if (i > i2) {
            heb[] hebVarArr = this.f12102c;
            fuv.be(hebVarArr, null, 0, hebVarArr.length);
            this.f12104e = this.f12102c.length - 1;
            this.h = 0;
            this.f12100a = 0;
            return;
        }
        k((this.f12100a + i) - i2);
        int i3 = this.h + 1;
        heb[] hebVarArr2 = this.f12102c;
        if (i3 > hebVarArr2.length) {
            heb[] hebVarArr3 = new heb[hebVarArr2.length * 2];
            System.arraycopy(hebVarArr2, 0, hebVarArr3, hebVarArr2.length, hebVarArr2.length);
            this.f12104e = this.f12102c.length - 1;
            this.f12102c = hebVarArr3;
        }
        int i4 = this.f12104e;
        this.f12104e = i4 - 1;
        this.f12102c[i4] = hebVar;
        this.h++;
        this.f12100a += i;
    }

    public final void m(gei geiVar) {
        bff.p(geiVar, "data");
        int[] iArr = cqd.f13327a;
        int d2 = geiVar.d();
        long j = 0;
        long j2 = 0;
        for (int i = 0; i < d2; i++) {
            byte m = geiVar.m(i);
            byte[] bArr = erq.f16043c;
            j2 += cqd.f13328b[m & 255];
        }
        int i2 = (int) ((j2 + 7) >> 3);
        int d3 = geiVar.d();
        clq clqVar = this.f12103d;
        if (i2 >= d3) {
            j(geiVar.d(), TTDownloadField.CALL_DOWNLOAD_MODEL_SET_EXTRA_VALUE, 0);
            clqVar.o(geiVar);
            return;
        }
        clq clqVar2 = new clq();
        int[] iArr2 = cqd.f13327a;
        int d4 = geiVar.d();
        int i3 = 0;
        for (int i4 = 0; i4 < d4; i4++) {
            byte m2 = geiVar.m(i4);
            byte[] bArr2 = erq.f16043c;
            int i5 = m2 & 255;
            int i6 = cqd.f13327a[i5];
            byte b2 = cqd.f13328b[i5];
            j = (j << b2) | i6;
            i3 += b2;
            while (i3 >= 8) {
                i3 -= 8;
                clqVar2.al((int) (j >> i3));
            }
        }
        if (i3 > 0) {
            clqVar2.al((int) ((j << (8 - i3)) | (255 >>> i3)));
        }
        gei t = clqVar2.t(clqVar2.f13080b);
        j(t.d(), TTDownloadField.CALL_DOWNLOAD_MODEL_SET_EXTRA_VALUE, TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME);
        clqVar.o(t);
    }
}
