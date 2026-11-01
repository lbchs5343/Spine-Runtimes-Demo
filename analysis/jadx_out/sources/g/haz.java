package g;

import android.content.Context;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public abstract class haz {
    public sr k;
    public volatile int m;
    public HashMap o;
    public final HashMap q;
    public final ArrayList s;
    public final Handler u;
    public final Context v;
    public final PackageManager x;
    public final ArrayList y;
    public final AtomicInteger r = new AtomicInteger();
    public volatile boolean w = true;
    public volatile boolean l = false;
    public boolean p = true;
    public volatile boolean t = false;
    public volatile boolean n = false;

    public haz(Context context) {
        Context d2 = fgj.d(context);
        this.v = d2;
        this.x = d2.getPackageManager();
        this.o = new HashMap();
        this.q = new HashMap();
        this.m = 0;
        this.u = new Handler(Looper.getMainLooper());
        this.y = new ArrayList();
        this.s = new ArrayList();
        this.k = new sr(new fc(5, this), 3, false);
    }

    public final void aa() {
        synchronized (haz.class) {
            try {
                if (!this.w) {
                    if (!afo.at(this.o)) {
                        Iterator it = this.y.iterator();
                        while (it.hasNext()) {
                            z((dgx) it.next(), this.o.values());
                        }
                    }
                    this.l = false;
                    this.y.clear();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final auj ab(PackageInfo packageInfo, boolean z, boolean z2) {
        ApplicationInfo applicationInfo;
        WeakReference ac;
        if (packageInfo == null || (applicationInfo = packageInfo.applicationInfo) == null || !(z || (applicationInfo.flags & 1) == 0)) {
            return null;
        }
        auj aujVar = new auj();
        aujVar.f10866b = 0;
        aujVar.f10865a = -1L;
        aujVar.i = -1L;
        aujVar.f10868d = applicationInfo.publicSourceDir;
        String bk = eyt.bk(applicationInfo.nativeLibraryDir);
        String str = dyd.bp(21) ? (String) awt.ac(applicationInfo, "secondaryNativeLibraryDir", true) : "";
        if (TextUtils.isEmpty(str)) {
            aujVar.f10870f = bk;
        } else {
            aujVar.f10870f = awf.i(bk, ";", str);
        }
        aujVar.h = applicationInfo.packageName;
        aujVar.f10866b = applicationInfo.flags;
        aujVar.i = packageInfo.lastUpdateTime;
        aujVar.f10865a = packageInfo.firstInstallTime;
        aujVar.f10871g = packageInfo.versionCode;
        CharSequence loadLabel = applicationInfo.loadLabel(this.x);
        aujVar.j = loadLabel != null ? loadLabel.toString() : null;
        if (z2 && (ac = ac(aujVar.h)) != null) {
            aujVar.k = ac;
        }
        return aujVar;
    }

    public final WeakReference ac(String str) {
        HashMap hashMap = this.q;
        WeakReference weakReference = (WeakReference) hashMap.get(str);
        if (weakReference != null && weakReference.get() != null) {
            return weakReference;
        }
        try {
            WeakReference weakReference2 = new WeakReference(this.x.getApplicationIcon(str));
            try {
                hashMap.put(str, weakReference2);
                return weakReference2;
            } catch (PackageManager.NameNotFoundException unused) {
                return weakReference2;
            }
        } catch (PackageManager.NameNotFoundException unused2) {
            return weakReference;
        }
    }

    public final void ad(bsx bsxVar, byq byqVar, bwb bwbVar) {
        boolean h;
        synchronized (haz.class) {
            if (bsxVar == null) {
                h = true;
            } else {
                try {
                    h = bsxVar.h();
                } finally {
                }
            }
            if (h) {
                if (this.t) {
                    if (!this.n) {
                    }
                }
                this.t = true;
                this.w = true;
                this.l = false;
                this.m++;
            }
            if (bwbVar != null) {
                this.y.add(new dgx(bsxVar, byqVar, bwbVar));
            }
            this.n = h;
        }
        if (this.l) {
            return;
        }
        synchronized (haz.class) {
            try {
                if (this.l) {
                    return;
                }
                this.l = true;
                if (this.w || afo.at(this.o)) {
                    g(new gqc(this, this.m, 4), this.m, h);
                } else {
                    aa();
                }
            } finally {
            }
        }
    }

    public final void ae() {
        sr srVar;
        if (this.r.decrementAndGet() != 0 || (srVar = this.k) == null) {
            return;
        }
        try {
            Context context = this.v;
            int i = sr.f20004a;
            context.unregisterReceiver(srVar);
        } catch (Exception unused) {
        } finally {
            this.k = null;
        }
    }

    public abstract void g(gqc gqcVar, int i, boolean z);

    public abstract void h(String str, int i, ArrayList arrayList);

    public void i() {
        if (this.r.incrementAndGet() == 1) {
            this.w = true;
            Context context = this.v;
            sr srVar = this.k;
            int i = sr.f20004a;
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.PACKAGE_ADDED");
            intentFilter.addAction("android.intent.action.PACKAGE_REMOVED");
            intentFilter.addDataScheme("package");
            AtomicInteger atomicInteger = fgj.f16743a;
            if (Build.VERSION.SDK_INT >= 34) {
                context.registerReceiver(srVar, intentFilter, 2);
            } else {
                context.registerReceiver(srVar, intentFilter);
            }
        }
    }

    public final void z(dgx dgxVar, Collection collection) {
        if (dgxVar == null || acw.u(collection)) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            auj aujVar = (auj) it.next();
            bsx bsxVar = dgxVar.f14154a;
            if (bsxVar != null) {
                String str = aujVar.h;
                if (!bsxVar.i(aujVar)) {
                }
            }
            arrayList.add(aujVar);
        }
        byq byqVar = dgxVar.f14155b;
        if (byqVar != null) {
            Collections.sort(arrayList, byqVar);
        }
        bwb bwbVar = dgxVar.f14156c;
        if (bwbVar != null) {
            if (!this.p) {
                bwbVar.d(arrayList);
            } else {
                this.u.post(new gfh(dgxVar, 10, arrayList));
            }
        }
    }
}
