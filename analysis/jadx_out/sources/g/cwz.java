package g;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.text.TextUtils;
import android.util.AndroidException;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class cwz extends haz {

    /* renamed from: a, reason: collision with root package name */
    public static cwz f13659a;

    public static cwz b(Context context) {
        if (f13659a == null) {
            synchronized (cwz.class) {
                try {
                    if (f13659a == null) {
                        cwz cwzVar = new cwz(context);
                        cwzVar.p = true;
                        f13659a = cwzVar;
                    }
                } finally {
                }
            }
        }
        return f13659a;
    }

    public final auj c(String str, boolean z) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        auj aujVar = !afo.at(this.o) ? (auj) this.o.get(str) : null;
        auj aujVar2 = (z && aujVar != null && aujVar.l(this.v, false) == null) ? null : aujVar;
        if (aujVar2 == null && this.x != null) {
            try {
                synchronized (PackageManager.class) {
                    try {
                        aujVar2 = ab(this.x.getPackageInfo(str, 0), true, z);
                        if (aujVar2 != null && !TextUtils.isEmpty(aujVar2.h)) {
                            this.o.put(aujVar2.h, aujVar2);
                        }
                    } finally {
                    }
                }
                return aujVar2;
            } catch (PackageManager.NameNotFoundException unused) {
            } catch (RuntimeException e2) {
                if (e2.getMessage() == null || !e2.getMessage().contains("Package manager has died")) {
                    throw e2;
                }
                erl.ai("Package manager has died", e2);
            }
        }
        return aujVar2;
    }

    public final PackageInfo d(int i, String str) {
        PackageInfo packageInfo;
        if (TextUtils.isEmpty(str) || this.x == null) {
            return null;
        }
        try {
            synchronized (PackageManager.class) {
                packageInfo = this.x.getPackageInfo(str, i);
            }
            return packageInfo;
        } catch (AndroidException e2) {
            if (e2 instanceof PackageManager.NameNotFoundException) {
                erl.ai("oooo0o0000", e2);
                return null;
            }
            if (Build.VERSION.SDK_INT < 24 || !eqx.l(e2)) {
                return null;
            }
            erl.ai("oooo0o0000".concat("DeadSystemException"), e2);
            return null;
        } catch (RuntimeException e3) {
            if (e3.getMessage() == null || !e3.getMessage().contains("Package manager has died")) {
                throw e3;
            }
            erl.ai("Package manager has died", e3);
            return null;
        }
    }

    @Override // g.haz
    public final void g(gqc gqcVar, int i, boolean z) {
        new xu(this, i, z, gqcVar).start();
    }

    @Override // g.haz
    public final void h(String str, int i, ArrayList arrayList) {
        synchronized (haz.class) {
            try {
                auj c2 = c(str, true);
                Iterator it = this.s.iterator();
                while (it.hasNext()) {
                    dgx dgxVar = (dgx) it.next();
                    bsx bsxVar = dgxVar.f14154a;
                    if (bsxVar != null && bsxVar.i(c2)) {
                        return;
                    } else {
                        z(dgxVar, arrayList);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
