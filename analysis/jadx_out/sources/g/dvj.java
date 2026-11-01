package g;

import java.io.IOException;

/* loaded from: classes3.dex */
public final class dvj implements cvw {

    /* renamed from: a, reason: collision with root package name */
    public final gvn f14890a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ug f14891b;

    public dvj(ug ugVar, gvn gvnVar) {
        this.f14891b = ugVar;
        this.f14890a = gvnVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [g.ug] */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v14 */
    /* JADX WARN: Type inference failed for: r3v15 */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v5, types: [g.amc] */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r3v8 */
    @Override // g.cvw
    public final Object invoke() {
        Throwable th;
        amc amcVar;
        ?? r0 = this.f14891b;
        gvn gvnVar = this.f14890a;
        amc amcVar2 = amc.INTERNAL_ERROR;
        ?? r3 = 1;
        IOException e2 = null;
        try {
            try {
                try {
                } catch (Throwable th2) {
                    th = th2;
                    r0.af(r3, amcVar2, e2);
                    erq.m(gvnVar);
                    throw th;
                }
            } catch (IOException e3) {
                e2 = e3;
                amcVar = amcVar2;
            }
            if (!gvnVar.i(true, this)) {
                throw new IOException("Required SETTINGS preface not received");
            }
            do {
                try {
                } catch (Throwable th3) {
                    th = th3;
                    r3 = amcVar2;
                    r0.af(r3, amcVar2, e2);
                    erq.m(gvnVar);
                    throw th;
                }
            } while (gvnVar.i(false, this));
            amcVar = amc.NO_ERROR;
            try {
                amcVar2 = amc.CANCEL;
                r0.af(amcVar, amcVar2, null);
                r3 = amcVar;
            } catch (IOException e4) {
                e2 = e4;
                amcVar2 = amc.PROTOCOL_ERROR;
                r0.af(amcVar2, amcVar2, e2);
                r3 = amcVar;
                erq.m(gvnVar);
                return dgi.f14134a;
            }
            erq.m(gvnVar);
            return dgi.f14134a;
        } catch (Throwable th4) {
            th = th4;
        }
    }
}
