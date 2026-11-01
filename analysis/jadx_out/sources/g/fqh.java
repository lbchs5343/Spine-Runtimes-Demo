package g;

import java.math.BigInteger;
import java.util.List;
import java.util.Locale;

/* loaded from: classes3.dex */
public final class fqh extends os {

    /* renamed from: g, reason: collision with root package name */
    public long f17242g;
    public long h;
    public String j;
    public String k;
    public List l;
    public int m;
    public String n;
    public String o;
    public String p;
    public final long q;
    public String r;
    public String s;
    public String t;
    public int u;

    public fqh(cyg cygVar, long j) {
        super(cygVar);
        this.h = 0L;
        this.s = null;
        this.q = j;
    }

    @Override // g.os
    public final boolean b() {
        return true;
    }

    public final String v() {
        _e();
        zza();
        ckd.k(this.t);
        return this.t;
    }

    public final void w() {
        String format;
        _e();
        cyg cygVar = (cyg) this.z;
        gmr gmrVar = cygVar.f13744b;
        bgm bgmVar = cygVar.z;
        cyg.ai(gmrVar);
        if (gmrVar.as().g(gxx.ANALYTICS_STORAGE)) {
            byte[] bArr = new byte[16];
            dkq dkqVar = cygVar.m;
            cyg.ai(dkqVar);
            dkqVar.av().nextBytes(bArr);
            format = String.format(Locale.US, "%032x", new BigInteger(1, bArr));
        } else {
            cyg.ak(bgmVar);
            bgmVar.o.h("Analytics Storage consent is not granted");
            format = null;
        }
        cyg.ak(bgmVar);
        bgmVar.o.h("Resetting session stitching token to ".concat(format == null ? "null" : "not null"));
        this.k = format;
        cygVar.f13743ab.getClass();
        this.h = System.currentTimeMillis();
    }

    public final String x() {
        zza();
        ckd.k(this.o);
        return this.o;
    }
}
