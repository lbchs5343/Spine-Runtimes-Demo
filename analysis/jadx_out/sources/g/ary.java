package g;

import com.google.android.gms.internal.ads.zzgcy;

/* loaded from: classes3.dex */
public final class ary extends acr {
    @Override // g.acr
    public final boolean bz(zzgcy zzgcyVar, Object obj, Object obj2) {
        synchronized (zzgcyVar) {
            try {
                if (zzgcyVar.w != obj) {
                    return false;
                }
                zzgcyVar.w = obj2;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // g.acr
    public final void ca(mz mzVar, mz mzVar2) {
        mzVar.f19689c = mzVar2;
    }

    @Override // g.acr
    public final boolean cc(zzgcy zzgcyVar, hcy hcyVar, hcy hcyVar2) {
        synchronized (zzgcyVar) {
            try {
                if (zzgcyVar.x != hcyVar) {
                    return false;
                }
                zzgcyVar.x = hcyVar2;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // g.acr
    public final mz cd(zzgcy zzgcyVar) {
        mz mzVar;
        mz mzVar2 = mz.f19687a;
        synchronized (zzgcyVar) {
            try {
                mzVar = zzgcyVar.v;
                if (mzVar != mzVar2) {
                    zzgcyVar.v = mzVar2;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return mzVar;
    }

    @Override // g.acr
    public final boolean ch(zzgcy zzgcyVar, mz mzVar, mz mzVar2) {
        synchronized (zzgcyVar) {
            try {
                if (zzgcyVar.v != mzVar) {
                    return false;
                }
                zzgcyVar.v = mzVar2;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // g.acr
    public final void ci(mz mzVar, Thread thread) {
        mzVar.f19688b = thread;
    }

    @Override // g.acr
    public final hcy cj(zzgcy zzgcyVar) {
        hcy hcyVar;
        hcy hcyVar2 = hcy.f19246a;
        synchronized (zzgcyVar) {
            try {
                hcyVar = zzgcyVar.x;
                if (hcyVar != hcyVar2) {
                    zzgcyVar.x = hcyVar2;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return hcyVar;
    }
}
