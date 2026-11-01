package g;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* loaded from: classes.dex */
public final class ark {

    /* renamed from: a, reason: collision with root package name */
    public static ark f10712a;

    /* renamed from: c, reason: collision with root package name */
    public volatile boolean f10714c;

    /* renamed from: g, reason: collision with root package name */
    public ajy f10718g;
    public final Context i;
    public final eby k;
    public ayt l;
    public volatile anf n;
    public final Handler m = new Handler(Looper.getMainLooper());
    public final ExecutorService o = Executors.newSingleThreadExecutor(new ekg(1));

    /* renamed from: f, reason: collision with root package name */
    public final CopyOnWriteArraySet f10717f = new CopyOnWriteArraySet();
    public final ArrayList h = new ArrayList();
    public final ArrayList j = new ArrayList();
    public final ArrayList p = new ArrayList();

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f10713b = new ArrayList();

    /* renamed from: e, reason: collision with root package name */
    public final hdk f10716e = new hdk(this, 0);

    /* renamed from: d, reason: collision with root package name */
    public final aco f10715d = new aco(4, this);

    public ark(Context context) {
        this.i = context;
        if (Build.VERSION.SDK_INT < 26) {
            return;
        }
        IBinder iBinder = gwn.f18889f;
        long z = z();
        eby ebyVar = new eby();
        ebyVar.f15272b = iBinder;
        ebyVar.f15273c = z;
        this.k = ebyVar;
        btk btkVar = new btk(this);
        if (gwn.m) {
            if (Looper.myLooper() == Looper.getMainLooper()) {
                btkVar.b();
            } else {
                gwn.h.post(new fvi(19, btkVar));
            }
        }
        ArrayList arrayList = gwn.k;
        synchronized (arrayList) {
            arrayList.add(new iv(btkVar));
        }
        gwn.q(new dah(this));
        gwn.t(new cxq(this));
    }

    public static synchronized ark q(Context context) {
        ark arkVar;
        synchronized (ark.class) {
            try {
                if (f10712a == null) {
                    f10712a = new ark(context.getApplicationContext());
                }
                arkVar = f10712a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return arkVar;
    }

    public final void aa(boolean z, Throwable th, String str) {
        ayt aytVar = this.l;
        if (aytVar != null) {
            this.m.removeCallbacks(aytVar);
        }
        this.l = null;
        ArrayList arrayList = this.f10713b;
        ArrayList arrayList2 = new ArrayList(arrayList);
        arrayList.clear();
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            deg degVar = (deg) it.next();
            if (z) {
                degVar.onSuccess(Boolean.TRUE);
            } else {
                degVar.d(str, th);
            }
        }
        s();
    }

    public final boolean ab() {
        try {
            return ern.h(this.i, "com.google.android.accessibility.selecttospeak.SelectToSpeakService");
        } catch (RuntimeException unused) {
            return false;
        }
    }

    public final boolean r() {
        if (Build.VERSION.SDK_INT >= 26) {
            try {
                if (this.k.e(gwn.f18889f, z())) {
                    IBinder iBinder = gwn.f18889f;
                    if ((iBinder != null && iBinder.pingBinder()) && !gwn.f18890g) {
                        if (gwn.p() >= 13) {
                            return true;
                        }
                    }
                }
            } catch (RuntimeException unused) {
            }
        }
        return false;
    }

    public final void s() {
        Iterator it = this.f10717f.iterator();
        while (it.hasNext()) {
            ((Runnable) it.next()).run();
        }
    }

    public final void t(boolean z) {
        ArrayList arrayList = this.h;
        ArrayList arrayList2 = new ArrayList(arrayList);
        arrayList.clear();
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            ((hbl) it.next()).b(z);
        }
    }

    public final ajy u() {
        Bundle bundle;
        Context context = this.i;
        PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME);
        ApplicationInfo applicationInfo = packageInfo.applicationInfo;
        boolean z = (applicationInfo == null || (bundle = applicationInfo.metaData) == null || !bundle.containsKey("ml_core_target_node")) ? false : true;
        long j = packageInfo.lastUpdateTime;
        int i = (int) (j ^ (j >>> 32));
        ajy ajyVar = new ajy(new ComponentName(context.getPackageName(), z ? "o.s" : b.c.e.class.getName()));
        ajyVar.f10355b = false;
        ajyVar.f10358e = "s";
        ajyVar.f10354a = "b.c.e";
        ajyVar.f10357d = i;
        return ajyVar;
    }

    public final void v(gnl gnlVar, anf anfVar) {
        this.p.add(gnlVar);
        euq euqVar = new euq(this, gnlVar, 0);
        this.m.postDelayed(euqVar, 20000L);
        this.o.execute(new akt(this, gnlVar, anfVar, euqVar, 1));
    }

    public final boolean w() {
        gyu gyuVar;
        if (!r()) {
            return false;
        }
        try {
            IBinder iBinder = gwn.f18889f;
            int i = fat.f16491a;
            if (iBinder == null) {
                gyuVar = null;
            } else {
                IInterface queryLocalInterface = iBinder.queryLocalInterface("moe.shizuku.server.IShizukuService");
                if (queryLocalInterface == null || !(queryLocalInterface instanceof gyu)) {
                    bvh bvhVar = new bvh();
                    bvhVar.f12263a = iBinder;
                    gyuVar = bvhVar;
                } else {
                    gyuVar = (gyu) queryLocalInterface;
                }
            }
            return ((bvh) gyuVar).c();
        } catch (RemoteException | RuntimeException unused) {
            return false;
        }
    }

    public final boolean x() {
        if (Build.VERSION.SDK_INT >= 26) {
            try {
                if (this.k.e(gwn.f18889f, z())) {
                    IBinder iBinder = gwn.f18889f;
                    if (iBinder != null && iBinder.pingBinder()) {
                        if (!gwn.f18890g) {
                            if (gwn.p() < 13) {
                            }
                        }
                        return true;
                    }
                }
            } catch (RuntimeException unused) {
            }
        }
        return false;
    }

    public final void y(String str, Exception exc) {
        ArrayList arrayList = this.j;
        ArrayList arrayList2 = new ArrayList(arrayList);
        ArrayList arrayList3 = this.p;
        arrayList2.addAll(arrayList3);
        arrayList.clear();
        arrayList3.clear();
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            ((gnl) it.next()).d(str, exc);
        }
    }

    public final long z() {
        try {
            return this.i.getPackageManager().getPackageInfo("moe.shizuku.privileged.api", 0).firstInstallTime;
        } catch (PackageManager.NameNotFoundException unused) {
            return 0L;
        }
    }
}
