package g;

import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;

/* loaded from: classes3.dex */
public final class dd {

    /* renamed from: a, reason: collision with root package name */
    public static final long f13994a = TimeUnit.HOURS.toMillis(24);

    /* renamed from: b, reason: collision with root package name */
    public static final long f13995b = TimeUnit.MINUTES.toMillis(30);

    /* renamed from: c, reason: collision with root package name */
    public final ff f13996c;

    /* renamed from: d, reason: collision with root package name */
    public long f13997d;

    /* renamed from: e, reason: collision with root package name */
    public int f13998e;

    public dd() {
        if (cfg.f12779f == null) {
            Pattern pattern = ff.f16688c;
            cfg.f12779f = new cfg(12);
        }
        cfg cfgVar = cfg.f12779f;
        if (ff.f16686a == null) {
            ff.f16686a = new ff(cfgVar);
        }
        this.f13996c = ff.f16686a;
    }

    public final synchronized void f(int i) {
        if ((i >= 200 && i < 300) || i == 401 || i == 404) {
            i();
            return;
        }
        this.f13998e++;
        long g2 = g(i);
        this.f13996c.f16689d.getClass();
        this.f13997d = System.currentTimeMillis() + g2;
    }

    public final synchronized long g(int i) {
        if (!(i == 429 || (i >= 500 && i < 600))) {
            return f13994a;
        }
        double pow = Math.pow(2.0d, this.f13998e);
        this.f13996c.getClass();
        return (long) Math.min(pow + ((long) (Math.random() * 1000.0d)), f13995b);
    }

    public final synchronized boolean h() {
        boolean z;
        if (this.f13998e != 0) {
            this.f13996c.f16689d.getClass();
            z = System.currentTimeMillis() > this.f13997d;
        }
        return z;
    }

    public final synchronized void i() {
        this.f13998e = 0;
    }
}
