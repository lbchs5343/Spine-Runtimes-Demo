package g;

/* loaded from: classes3.dex */
public final class bhy extends cro {
    @Override // g.cro
    public final fwe f(alw alwVar) {
        fwe fweVar;
        fwe fweVar2 = fwe.f17503a;
        synchronized (alwVar) {
            try {
                fweVar = alwVar.f10268g;
                if (fweVar != fweVar2) {
                    alwVar.f10268g = fweVar2;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return fweVar;
    }

    @Override // g.cro
    public final boolean g(alw alwVar, fwe fweVar, fwe fweVar2) {
        synchronized (alwVar) {
            try {
                if (alwVar.f10268g != fweVar) {
                    return false;
                }
                alwVar.f10268g = fweVar2;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // g.cro
    public final cye h(alw alwVar) {
        cye cyeVar;
        cye cyeVar2 = cye.f13739a;
        synchronized (alwVar) {
            try {
                cyeVar = alwVar.f10266e;
                if (cyeVar != cyeVar2) {
                    alwVar.f10266e = cyeVar2;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return cyeVar;
    }

    @Override // g.cro
    public final boolean i(ail ailVar, Object obj, Object obj2) {
        synchronized (ailVar) {
            try {
                if (ailVar.f10267f != obj) {
                    return false;
                }
                ailVar.f10267f = obj2;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // g.cro
    public final void j(cye cyeVar, Thread thread) {
        cyeVar.f13740b = thread;
    }

    @Override // g.cro
    public final void k(cye cyeVar, cye cyeVar2) {
        cyeVar.f13741c = cyeVar2;
    }

    @Override // g.cro
    public final boolean l(ail ailVar, cye cyeVar, cye cyeVar2) {
        synchronized (ailVar) {
            try {
                if (ailVar.f10266e != cyeVar) {
                    return false;
                }
                ailVar.f10266e = cyeVar2;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
