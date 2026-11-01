package g;

import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes3.dex */
public abstract class ail extends ang implements gew {

    /* renamed from: a, reason: collision with root package name */
    public static final cro f10262a;

    /* renamed from: b, reason: collision with root package name */
    public static final Object f10263b = new Object();

    /* renamed from: c, reason: collision with root package name */
    public static final ctm f10264c = new ctm(0, alw.class);

    /* renamed from: d, reason: collision with root package name */
    public static final boolean f10265d;

    /* renamed from: e, reason: collision with root package name */
    public volatile cye f10266e;

    /* renamed from: f, reason: collision with root package name */
    public volatile Object f10267f;

    /* renamed from: g, reason: collision with root package name */
    public volatile fwe f10268g;

    static {
        boolean z;
        cro bhyVar;
        Throwable th;
        Throwable th2;
        try {
            z = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));
        } catch (SecurityException unused) {
            z = false;
        }
        f10265d = z;
        String property = System.getProperty("java.runtime.name", "");
        Throwable th3 = null;
        if (property == null || property.contains("Android")) {
            try {
                bhyVar = new avp();
            } catch (Error | Exception e2) {
                try {
                    bhyVar = new su();
                } catch (Error | Exception e3) {
                    th3 = e3;
                    bhyVar = new bhy();
                }
                th = th3;
                th2 = e2;
            }
        } else {
            try {
                bhyVar = new su();
            } catch (NoClassDefFoundError unused2) {
                bhyVar = new bhy();
            }
        }
        th = null;
        th2 = null;
        f10262a = bhyVar;
        if (th != null) {
            ctm ctmVar = f10264c;
            Logger e4 = ctmVar.e();
            Level level = Level.SEVERE;
            e4.logp(level, "com.google.common.util.concurrent.AbstractFutureState", "<clinit>", "UnsafeAtomicHelper is broken!", th2);
            ctmVar.e().logp(level, "com.google.common.util.concurrent.AbstractFutureState", "<clinit>", "AtomicReferenceFieldUpdaterAtomicHelper is broken!", th);
        }
    }

    public final void h(cye cyeVar) {
        cyeVar.f13740b = null;
        while (true) {
            cye cyeVar2 = this.f10266e;
            if (cyeVar2 != cye.f13739a) {
                cye cyeVar3 = null;
                while (cyeVar2 != null) {
                    cye cyeVar4 = cyeVar2.f13741c;
                    if (cyeVar2.f13740b != null) {
                        cyeVar3 = cyeVar2;
                    } else if (cyeVar3 != null) {
                        cyeVar3.f13741c = cyeVar4;
                        if (cyeVar3.f13740b == null) {
                            break;
                        }
                    } else if (!f10262a.l(this, cyeVar2, cyeVar4)) {
                        break;
                    }
                    cyeVar2 = cyeVar4;
                }
                return;
            }
            return;
        }
    }
}
