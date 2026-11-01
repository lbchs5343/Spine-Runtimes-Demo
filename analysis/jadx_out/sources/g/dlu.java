package g;

/* loaded from: classes3.dex */
public final class dlu extends cux {
    @Override // g.cux
    public final boolean f(afp afpVar, Object obj, Object obj2) {
        synchronized (afpVar) {
            try {
                if (afpVar.f10148f != obj) {
                    return false;
                }
                afpVar.f10148f = obj2;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // g.cux
    public final boolean g(afp afpVar, dcl dclVar, dcl dclVar2) {
        synchronized (afpVar) {
            try {
                if (afpVar.f10149g != dclVar) {
                    return false;
                }
                afpVar.f10149g = dclVar2;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // g.cux
    public final void h(fds fdsVar, fds fdsVar2) {
        fdsVar.f16626c = fdsVar2;
    }

    @Override // g.cux
    public final boolean i(afp afpVar, fds fdsVar, fds fdsVar2) {
        synchronized (afpVar) {
            try {
                if (afpVar.f10147e != fdsVar) {
                    return false;
                }
                afpVar.f10147e = fdsVar2;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // g.cux
    public final void j(fds fdsVar, Thread thread) {
        fdsVar.f16625b = thread;
    }
}
