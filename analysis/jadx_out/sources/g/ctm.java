package g;

import com.google.android.gms.internal.ads.zzfxn;
import java.io.Serializable;
import java.util.logging.Logger;

/* loaded from: classes3.dex */
public final class ctm {

    /* renamed from: a, reason: collision with root package name */
    public final Serializable f13473a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f13474b;

    /* renamed from: c, reason: collision with root package name */
    public final String f13475c;

    /* renamed from: d, reason: collision with root package name */
    public volatile Logger f13476d;

    public ctm(int i, Class cls) {
        this.f13474b = i;
        switch (i) {
            case 1:
                this.f13473a = new zzfxn();
                this.f13475c = cls.getName();
                break;
            default:
                this.f13473a = new dys();
                this.f13475c = cls.getName();
                break;
        }
    }

    private final Logger f() {
        Logger logger = this.f13476d;
        if (logger != null) {
            return logger;
        }
        synchronized (((dys) this.f13473a)) {
            try {
                Logger logger2 = this.f13476d;
                if (logger2 != null) {
                    return logger2;
                }
                Logger logger3 = Logger.getLogger(this.f13475c);
                this.f13476d = logger3;
                return logger3;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final Logger e() {
        Logger logger;
        switch (this.f13474b) {
            case 0:
                return f();
            default:
                Logger logger2 = this.f13476d;
                if (logger2 != null) {
                    return logger2;
                }
                synchronized (((zzfxn) this.f13473a)) {
                    try {
                        logger = this.f13476d;
                        if (logger == null) {
                            logger = Logger.getLogger(this.f13475c);
                            this.f13476d = logger;
                        }
                    } finally {
                    }
                }
                return logger;
        }
    }
}
