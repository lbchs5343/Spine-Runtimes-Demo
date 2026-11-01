package g;

import com.google.android.gms.internal.ads.zzgcy;
import com.google.android.gms.internal.ads.zzgda;
import java.security.AccessController;
import java.security.PrivilegedActionException;
import sun.misc.Unsafe;

/* loaded from: classes3.dex */
public final class cxi extends acr {
    public static final long ck;
    public static final long cl;
    public static final long cm;

    /* renamed from: cn, reason: collision with root package name */
    public static final Unsafe f13687cn;
    public static final long co;
    public static final long cp;

    static {
        Unsafe unsafe;
        try {
            try {
                unsafe = Unsafe.getUnsafe();
            } catch (PrivilegedActionException e2) {
                throw new RuntimeException("Could not initialize intrinsics", e2.getCause());
            }
        } catch (SecurityException unused) {
            unsafe = (Unsafe) AccessController.doPrivileged(new dpw());
        }
        try {
            cm = unsafe.objectFieldOffset(zzgcy.class.getDeclaredField(ada.COLUMN_VALUE));
            ck = unsafe.objectFieldOffset(zzgcy.class.getDeclaredField("x"));
            cl = unsafe.objectFieldOffset(zzgcy.class.getDeclaredField("w"));
            cp = unsafe.objectFieldOffset(mz.class.getDeclaredField("b"));
            co = unsafe.objectFieldOffset(mz.class.getDeclaredField("c"));
            f13687cn = unsafe;
        } catch (NoSuchFieldException e3) {
            throw new RuntimeException(e3);
        }
    }

    @Override // g.acr
    public final boolean bz(zzgcy zzgcyVar, Object obj, Object obj2) {
        return zzgda.zza(f13687cn, zzgcyVar, cl, obj, obj2);
    }

    @Override // g.acr
    public final void ca(mz mzVar, mz mzVar2) {
        f13687cn.putObject(mzVar, co, mzVar2);
    }

    @Override // g.acr
    public final boolean cc(zzgcy zzgcyVar, hcy hcyVar, hcy hcyVar2) {
        return zzgda.zza(f13687cn, zzgcyVar, ck, hcyVar, hcyVar2);
    }

    @Override // g.acr
    public final mz cd(zzgcy zzgcyVar) {
        mz mzVar;
        mz mzVar2 = mz.f19687a;
        do {
            mzVar = zzgcyVar.v;
            if (mzVar2 == mzVar) {
                break;
            }
        } while (!ch(zzgcyVar, mzVar, mzVar2));
        return mzVar;
    }

    @Override // g.acr
    public final boolean ch(zzgcy zzgcyVar, mz mzVar, mz mzVar2) {
        return zzgda.zza(f13687cn, zzgcyVar, cm, mzVar, mzVar2);
    }

    @Override // g.acr
    public final void ci(mz mzVar, Thread thread) {
        f13687cn.putObject(mzVar, cp, thread);
    }

    @Override // g.acr
    public final hcy cj(zzgcy zzgcyVar) {
        hcy hcyVar;
        hcy hcyVar2 = hcy.f19246a;
        do {
            hcyVar = zzgcyVar.x;
            if (hcyVar2 == hcyVar) {
                break;
            }
        } while (!cc(zzgcyVar, hcyVar, hcyVar2));
        return hcyVar;
    }
}
