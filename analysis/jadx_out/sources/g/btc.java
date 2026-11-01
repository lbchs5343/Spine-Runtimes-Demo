package g;

/* loaded from: classes.dex */
public final class btc extends buj {
    @Override // g.buj
    public final void a(aoh aohVar, Thread thread) {
        aohVar.f10567b = thread;
    }

    @Override // g.buj
    public final void b(aoh aohVar, aoh aohVar2) {
        aohVar.f10568c = aohVar2;
    }

    @Override // g.buj
    public final boolean c(zi ziVar, aoh aohVar, aoh aohVar2) {
        synchronized (ziVar) {
            try {
                if (ziVar.f20398e != aohVar) {
                    return false;
                }
                ziVar.f20398e = aohVar2;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // g.buj
    public final boolean d(zi ziVar, fxt fxtVar, fxt fxtVar2) {
        synchronized (ziVar) {
            try {
                if (ziVar.f20400g != fxtVar) {
                    return false;
                }
                ziVar.f20400g = fxtVar2;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // g.buj
    public final boolean e(zi ziVar, Object obj, Object obj2) {
        synchronized (ziVar) {
            try {
                if (ziVar.f20399f != obj) {
                    return false;
                }
                ziVar.f20399f = obj2;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
