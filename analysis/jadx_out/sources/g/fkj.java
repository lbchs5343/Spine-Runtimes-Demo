package g;

import androidx.work.OverwritingInputMerger;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;

/* loaded from: classes.dex */
public final class fkj {

    /* renamed from: a, reason: collision with root package name */
    public long f16926a;

    /* renamed from: b, reason: collision with root package name */
    public final int f16927b;

    /* renamed from: c, reason: collision with root package name */
    public final long f16928c;

    /* renamed from: d, reason: collision with root package name */
    public long f16929d;

    /* renamed from: e, reason: collision with root package name */
    public final String f16930e;

    /* renamed from: f, reason: collision with root package name */
    public final ay f16931f;

    /* renamed from: g, reason: collision with root package name */
    public dwa f16932g;
    public final String h;
    public long i;
    public int j;
    public final int k;
    public final dwa l;
    public final int m;
    public final long n;
    public final long o;
    public long p;
    public gys q;
    public bho r;
    public boolean s;
    public final int t;
    public final String u;
    public String v;
    public final long w;
    public final ahc x;

    static {
        bff.e(cyl.g("WorkSpec"), "tagWithPrefix(\"WorkSpec\")");
    }

    public fkj(String str, gys gysVar, String str2, String str3, dwa dwaVar, dwa dwaVar2, long j, long j2, long j3, bho bhoVar, int i, ay ayVar, long j4, long j5, long j6, long j7, boolean z, ahc ahcVar, int i2, int i3, long j8, int i4, int i5, String str4) {
        bff.p(str, TTDownloadField.TT_ID);
        bff.p(gysVar, "state");
        bff.p(str2, "workerClassName");
        bff.p(str3, "inputMergerClassName");
        bff.p(dwaVar, "input");
        bff.p(dwaVar2, "output");
        bff.p(bhoVar, "constraints");
        bff.p(ayVar, "backoffPolicy");
        bff.p(ahcVar, "outOfQuotaPolicy");
        this.h = str;
        this.q = gysVar;
        this.u = str2;
        this.f16930e = str3;
        this.f16932g = dwaVar;
        this.l = dwaVar2;
        this.w = j;
        this.f16926a = j2;
        this.p = j3;
        this.r = bhoVar;
        this.f16927b = i;
        this.f16931f = ayVar;
        this.o = j4;
        this.f16929d = j5;
        this.f16928c = j6;
        this.n = j7;
        this.s = z;
        this.x = ahcVar;
        this.m = i2;
        this.t = i3;
        this.i = j8;
        this.j = i4;
        this.k = i5;
        this.v = str4;
    }

    public /* synthetic */ fkj(String str, gys gysVar, String str2, String str3, dwa dwaVar, dwa dwaVar2, long j, long j2, long j3, bho bhoVar, int i, ay ayVar, long j4, long j5, long j6, long j7, boolean z, ahc ahcVar, int i2, long j8, int i3, int i4, String str4, int i5) {
        this(str, (i5 & 2) != 0 ? gys.ENQUEUED : gysVar, str2, (i5 & 8) != 0 ? OverwritingInputMerger.class.getName() : str3, (i5 & 16) != 0 ? dwa.f14915a : dwaVar, (i5 & 32) != 0 ? dwa.f14915a : dwaVar2, (i5 & 64) != 0 ? 0L : j, (i5 & TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME) != 0 ? 0L : j2, (i5 & 256) != 0 ? 0L : j3, (i5 & 512) != 0 ? bho.f11591a : bhoVar, (i5 & 1024) != 0 ? 0 : i, (i5 & 2048) != 0 ? ay.EXPONENTIAL : ayVar, (i5 & 4096) != 0 ? 30000L : j4, (i5 & 8192) != 0 ? -1L : j5, (i5 & 16384) == 0 ? j6 : 0L, (32768 & i5) != 0 ? -1L : j7, (65536 & i5) != 0 ? false : z, (131072 & i5) != 0 ? ahc.RUN_AS_NON_EXPEDITED_WORK_REQUEST : ahcVar, (262144 & i5) != 0 ? 0 : i2, 0, (1048576 & i5) != 0 ? Long.MAX_VALUE : j8, (2097152 & i5) != 0 ? 0 : i3, (4194304 & i5) != 0 ? -256 : i4, (i5 & 8388608) != 0 ? null : str4);
    }

    public static fkj y(fkj fkjVar, String str, gys gysVar, String str2, dwa dwaVar, int i, long j, int i2, int i3, long j2, int i4, int i5) {
        String str3 = (i5 & 1) != 0 ? fkjVar.h : str;
        gys gysVar2 = (i5 & 2) != 0 ? fkjVar.q : gysVar;
        String str4 = (i5 & 4) != 0 ? fkjVar.u : str2;
        String str5 = fkjVar.f16930e;
        dwa dwaVar2 = (i5 & 16) != 0 ? fkjVar.f16932g : dwaVar;
        dwa dwaVar3 = fkjVar.l;
        long j3 = fkjVar.w;
        long j4 = fkjVar.f16926a;
        long j5 = fkjVar.p;
        bho bhoVar = fkjVar.r;
        int i6 = (i5 & 1024) != 0 ? fkjVar.f16927b : i;
        ay ayVar = fkjVar.f16931f;
        long j6 = fkjVar.o;
        long j7 = (i5 & 8192) != 0 ? fkjVar.f16929d : j;
        long j8 = fkjVar.f16928c;
        long j9 = fkjVar.n;
        boolean z = fkjVar.s;
        ahc ahcVar = fkjVar.x;
        int i7 = (i5 & 262144) != 0 ? fkjVar.m : i2;
        int i8 = (i5 & 524288) != 0 ? fkjVar.t : i3;
        long j10 = (i5 & 1048576) != 0 ? fkjVar.i : j2;
        int i9 = (i5 & 2097152) != 0 ? fkjVar.j : i4;
        int i10 = fkjVar.k;
        String str6 = fkjVar.v;
        fkjVar.getClass();
        bff.p(str3, TTDownloadField.TT_ID);
        bff.p(gysVar2, "state");
        bff.p(str4, "workerClassName");
        bff.p(str5, "inputMergerClassName");
        bff.p(dwaVar2, "input");
        bff.p(dwaVar3, "output");
        bff.p(bhoVar, "constraints");
        bff.p(ayVar, "backoffPolicy");
        bff.p(ahcVar, "outOfQuotaPolicy");
        return new fkj(str3, gysVar2, str4, str5, dwaVar2, dwaVar3, j3, j4, j5, bhoVar, i6, ayVar, j6, j7, j8, j9, z, ahcVar, i7, i8, j10, i9, i10, str6);
    }

    public final long aa() {
        boolean z = this.q == gys.ENQUEUED && this.f16927b > 0;
        long j = this.f16929d;
        boolean z2 = z();
        long j2 = this.p;
        long j3 = this.f16926a;
        long j4 = this.i;
        ay ayVar = this.f16931f;
        bff.p(ayVar, "backoffPolicy");
        int i = this.m;
        if (j4 != Long.MAX_VALUE && z2) {
            if (i != 0) {
                long j5 = j + 900000;
                if (j4 < j5) {
                    return j5;
                }
            }
            return j4;
        }
        if (z) {
            ay ayVar2 = ay.LINEAR;
            int i2 = this.f16927b;
            long j6 = this.o;
            long scalb = ayVar == ayVar2 ? j6 * i2 : (long) Math.scalb(j6, i2 - 1);
            if (scalb > 18000000) {
                scalb = 18000000;
            }
            return j + scalb;
        }
        long j7 = this.w;
        if (z2) {
            long j8 = i == 0 ? j + j7 : j + j3;
            return (j2 == j3 || i != 0) ? j8 : (j3 - j2) + j8;
        }
        if (j == -1) {
            return Long.MAX_VALUE;
        }
        return j + j7;
    }

    public final boolean ab() {
        return !bff.n(bho.f11591a, this.r);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof fkj)) {
            return false;
        }
        fkj fkjVar = (fkj) obj;
        return bff.n(this.h, fkjVar.h) && this.q == fkjVar.q && bff.n(this.u, fkjVar.u) && bff.n(this.f16930e, fkjVar.f16930e) && bff.n(this.f16932g, fkjVar.f16932g) && bff.n(this.l, fkjVar.l) && this.w == fkjVar.w && this.f16926a == fkjVar.f16926a && this.p == fkjVar.p && bff.n(this.r, fkjVar.r) && this.f16927b == fkjVar.f16927b && this.f16931f == fkjVar.f16931f && this.o == fkjVar.o && this.f16929d == fkjVar.f16929d && this.f16928c == fkjVar.f16928c && this.n == fkjVar.n && this.s == fkjVar.s && this.x == fkjVar.x && this.m == fkjVar.m && this.t == fkjVar.t && this.i == fkjVar.i && this.j == fkjVar.j && this.k == fkjVar.k && bff.n(this.v, fkjVar.v);
    }

    public final int hashCode() {
        int hashCode = (this.l.hashCode() + ((this.f16932g.hashCode() + tn.k(tn.k((this.q.hashCode() + (this.h.hashCode() * 31)) * 31, 31, this.u), 31, this.f16930e)) * 31)) * 31;
        long j = this.w;
        int i = (hashCode + ((int) (j ^ (j >>> 32)))) * 31;
        long j2 = this.f16926a;
        int i2 = (i + ((int) (j2 ^ (j2 >>> 32)))) * 31;
        long j3 = this.p;
        int hashCode2 = (this.f16931f.hashCode() + ((((this.r.hashCode() + ((i2 + ((int) (j3 ^ (j3 >>> 32)))) * 31)) * 31) + this.f16927b) * 31)) * 31;
        long j4 = this.o;
        int i3 = (hashCode2 + ((int) (j4 ^ (j4 >>> 32)))) * 31;
        long j5 = this.f16929d;
        int i4 = (i3 + ((int) (j5 ^ (j5 >>> 32)))) * 31;
        long j6 = this.f16928c;
        int i5 = (i4 + ((int) (j6 ^ (j6 >>> 32)))) * 31;
        long j7 = this.n;
        int hashCode3 = (((((this.x.hashCode() + ((((i5 + ((int) (j7 ^ (j7 >>> 32)))) * 31) + (this.s ? 1231 : 1237)) * 31)) * 31) + this.m) * 31) + this.t) * 31;
        long j8 = this.i;
        int i6 = (((((hashCode3 + ((int) ((j8 >>> 32) ^ j8))) * 31) + this.j) * 31) + this.k) * 31;
        String str = this.v;
        return i6 + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        return "{WorkSpec: " + this.h + '}';
    }

    public final boolean z() {
        return this.f16926a != 0;
    }
}
