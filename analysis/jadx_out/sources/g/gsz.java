package g;

import android.text.TextUtils;
import java.io.IOException;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public final /* synthetic */ class gsz implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f18707a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ cyc f18708b;

    public /* synthetic */ gsz(cyc cycVar, int i) {
        this.f18707a = i;
        this.f18708b = cycVar;
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0029 A[Catch: all -> 0x0042, TRY_LEAVE, TryCatch #0 {all -> 0x0042, blocks: (B:6:0x0013, B:8:0x001f, B:13:0x0029), top: B:5:0x0013, outer: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0046 A[Catch: all -> 0x004a, TRY_ENTER, TryCatch #1 {all -> 0x004a, blocks: (B:4:0x0008, B:16:0x0046, B:17:0x004c, B:24:0x005e, B:25:0x0061, B:6:0x0013, B:8:0x001f, B:13:0x0029), top: B:3:0x0008, inners: #0 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final void c() {
        fsy n;
        boolean z;
        cyc cycVar = this.f18708b;
        cycVar.getClass();
        synchronized (cyc.f13733b) {
            try {
                rm rmVar = cycVar.h;
                rmVar.p();
                clx f2 = clx.f(rmVar.f19913g);
                try {
                    n = cycVar.m.n();
                    gyk gykVar = n.f17359f;
                    if (gykVar != gyk.NOT_GENERATED && gykVar != gyk.ATTEMPT_MIGRATION) {
                        z = false;
                        if (z) {
                            String t = cycVar.t(n);
                            gtb gtbVar = cycVar.m;
                            ph i = n.i();
                            i.f19811c = t;
                            i.j(gyk.UNREGISTERED);
                            n = i.i();
                            gtbVar.u(n);
                        }
                        if (f2 != null) {
                            f2.r();
                        }
                    }
                    z = true;
                    if (z) {
                    }
                    if (f2 != null) {
                    }
                } catch (Throwable th) {
                    if (f2 != null) {
                        f2.r();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        cycVar.u(n);
        cycVar.j.execute(new gsz(cycVar, 1));
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:28:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x008f  */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void run() {
        fsy n;
        fsy y;
        gyk gykVar;
        switch (this.f18707a) {
            case 0:
                c();
                return;
            default:
                cyc cycVar = this.f18708b;
                cycVar.getClass();
                synchronized (cyc.f13733b) {
                    try {
                        rm rmVar = cycVar.h;
                        rmVar.p();
                        clx f2 = clx.f(rmVar.f19913g);
                        try {
                            n = cycVar.m.n();
                            if (f2 != null) {
                                f2.r();
                            }
                        } catch (Throwable th) {
                            if (f2 != null) {
                                f2.r();
                            }
                            throw th;
                        }
                    } finally {
                    }
                }
                try {
                    gyk gykVar2 = n.f17359f;
                    gyk gykVar3 = gyk.REGISTER_ERROR;
                    if (!(gykVar2 == gykVar3)) {
                        if (!(gykVar2 == gyk.UNREGISTERED)) {
                            ff ffVar = cycVar.f13736e;
                            ffVar.getClass();
                            if (!TextUtils.isEmpty(n.f17360g)) {
                                long j = n.f17358e + n.f17356c;
                                TimeUnit timeUnit = TimeUnit.MILLISECONDS;
                                ffVar.f16689d.getClass();
                                if (j >= timeUnit.toSeconds(System.currentTimeMillis()) + ff.f16687b) {
                                    return;
                                }
                            }
                            y = cycVar.v(n);
                            cycVar.r(y);
                            cycVar.q(n, y);
                            if (y.f17359f == gyk.REGISTERED) {
                                cycVar.w(y.f17357d);
                            }
                            gykVar = y.f17359f;
                            if (gykVar != gykVar3) {
                                new drg(ety.BAD_CONFIG);
                                cycVar.p();
                                return;
                            } else if (gykVar != gyk.NOT_GENERATED && gykVar != gyk.ATTEMPT_MIGRATION) {
                                cycVar.u(y);
                                return;
                            } else {
                                new IOException("Installation ID could not be validated with the Firebase servers (maybe it was deleted). Firebase Installations will need to create a new Installation ID and auth token. Please retry your last request.");
                                cycVar.p();
                                return;
                            }
                        }
                    }
                    y = cycVar.y(n);
                    cycVar.r(y);
                    cycVar.q(n, y);
                    if (y.f17359f == gyk.REGISTERED) {
                    }
                    gykVar = y.f17359f;
                    if (gykVar != gykVar3) {
                    }
                } catch (drg unused) {
                    cycVar.p();
                    return;
                }
                break;
        }
    }
}
