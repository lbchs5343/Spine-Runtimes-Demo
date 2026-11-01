package g;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Build;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.android.billingclient.api.ProxyBillingActivity;
import com.bytedance.android.live.base.api.push.model.PushUIConfig;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: classes.dex */
public class tq {

    /* renamed from: a, reason: collision with root package name */
    public ExecutorService f20054a;
    public final Context aa;

    /* renamed from: ab, reason: collision with root package name */
    public boolean f20055ab;

    /* renamed from: b, reason: collision with root package name */
    public final ffr f20056b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f20057c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f20058d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f20059e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f20060f;

    /* renamed from: g, reason: collision with root package name */
    public final String f20061g;
    public final dyd h;
    public boolean l;
    public boolean m;
    public boolean n;
    public volatile axs o;
    public boolean p;
    public boolean q;
    public boolean r;
    public volatile agh s;
    public volatile aaa u;
    public boolean v;
    public final Long w;
    public boolean x;
    public final String y;
    public final cuf z;
    public final Object k = new Object();
    public volatile int t = 0;
    public final Handler j = new Handler(Looper.getMainLooper());
    public int i = 0;

    public tq(cuf cufVar, Context context, eoy eoyVar, feb febVar) {
        long nextLong = new Random().nextLong();
        this.w = Long.valueOf(nextLong);
        this.h = cim.f12939a;
        this.y = "8.0.0";
        String ad = ad();
        this.f20061g = ad;
        this.aa = context.getApplicationContext();
        gzp m = djs.m();
        m.f();
        djs.d((djs) m.f14803d);
        if (ad != null) {
            m.f();
            djs.e((djs) m.f14803d, ad);
        }
        String packageName = this.aa.getPackageName();
        m.f();
        djs.l((djs) m.f14803d, packageName);
        m.f();
        djs.h((djs) m.f14803d, nextLong);
        m.f();
        djs.c((djs) m.f14803d);
        int i = Build.VERSION.SDK_INT;
        m.f();
        djs.b((djs) m.f14803d, i);
        m.a();
        try {
            int i2 = this.aa.getPackageManager().getPackageInfo(this.aa.getPackageName(), 0).versionCode;
            m.f();
            djs.a((djs) m.f14803d, i2);
        } catch (Throwable unused) {
            int i3 = gbs.f17875a;
        }
        ffr ffrVar = new ffr(this.aa, (djs) m.g());
        this.f20056b = ffrVar;
        if (eoyVar == null) {
            int i4 = gbs.f17875a;
        }
        this.o = new axs(this.aa, eoyVar, ffrVar);
        this.z = cufVar;
        this.f20059e = false;
        this.aa.getPackageName();
    }

    public tq(cuf cufVar, Context context, feb febVar) {
        long nextLong = new Random().nextLong();
        this.w = Long.valueOf(nextLong);
        this.h = cim.f12939a;
        this.y = "8.0.0";
        String ad = ad();
        this.f20061g = ad;
        this.aa = context.getApplicationContext();
        gzp m = djs.m();
        m.f();
        djs.d((djs) m.f14803d);
        if (ad != null) {
            m.f();
            djs.e((djs) m.f14803d, ad);
        }
        String packageName = this.aa.getPackageName();
        m.f();
        djs.l((djs) m.f14803d, packageName);
        m.f();
        djs.h((djs) m.f14803d, nextLong);
        m.f();
        djs.c((djs) m.f14803d);
        int i = Build.VERSION.SDK_INT;
        m.f();
        djs.b((djs) m.f14803d, i);
        m.a();
        try {
            int i2 = this.aa.getPackageManager().getPackageInfo(this.aa.getPackageName(), 0).versionCode;
            m.f();
            djs.a((djs) m.f14803d, i2);
        } catch (Throwable unused) {
            int i3 = gbs.f17875a;
        }
        ffr ffrVar = new ffr(this.aa, (djs) m.g());
        this.f20056b = ffrVar;
        int i4 = gbs.f17875a;
        this.o = new axs(this.aa, (eoy) null, ffrVar);
        this.z = cufVar;
        this.aa.getPackageName();
    }

    public static /* bridge */ /* synthetic */ void ac(tq tqVar, int i) {
        if (i != 0) {
            tqVar.ai(0);
            return;
        }
        synchronized (tqVar.k) {
            try {
                if (tqVar.t == 3) {
                    return;
                }
                tqVar.ai(2);
                axs axsVar = tqVar.o != null ? tqVar.o : null;
                if (axsVar != null) {
                    axsVar.i(tqVar.l);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static String ad() {
        try {
            return (String) Class.forName("com.android.billingclient.ktx.BuildConfig").getField("VERSION_NAME").get(null);
        } catch (Exception unused) {
            return null;
        }
    }

    public static Future ae(Callable callable, long j, Runnable runnable, Handler handler, ExecutorService executorService) {
        try {
            Future submit = executorService.submit(callable);
            handler.postDelayed(new efr(15, submit, runnable, false), (long) (j * 0.95d));
            return submit;
        } catch (Exception unused) {
            int i = gbs.f17875a;
            return null;
        }
    }

    public static /* bridge */ /* synthetic */ boolean af(tq tqVar) {
        boolean z;
        synchronized (tqVar.k) {
            z = true;
            if (tqVar.t != 1) {
                z = false;
            }
        }
        return z;
    }

    public final void ag(hm hmVar, int i, ejd ejdVar) {
        try {
            int i2 = cgl.f12845a;
            ah(cgl.c(hmVar, i, ejdVar, null, apl.BROADCAST_ACTION_UNSPECIFIED));
        } catch (Throwable unused) {
            int i3 = gbs.f17875a;
        }
    }

    public final void ah(hd hdVar) {
        try {
            ffr ffrVar = this.f20056b;
            int i = this.i;
            ffrVar.getClass();
            try {
                gzp gzpVar = (gzp) ((djs) ffrVar.f16721f).x();
                gzpVar.f();
                djs.g((djs) gzpVar.f14803d, i);
                djs djsVar = (djs) gzpVar.g();
                ffrVar.f16721f = djsVar;
                try {
                    ffrVar.z(hdVar, djsVar);
                } catch (Throwable unused) {
                    int i2 = gbs.f17875a;
                }
            } catch (Throwable unused2) {
                int i3 = gbs.f17875a;
            }
        } catch (Throwable unused3) {
            int i4 = gbs.f17875a;
        }
    }

    public final void ai(int i) {
        synchronized (this.k) {
            try {
                if (this.t == 3) {
                    return;
                }
                int i2 = this.t;
                gbs.i("BillingClient", "Setting clientState from " + (i2 != 0 ? i2 != 1 ? i2 != 2 ? "CLOSED" : "CONNECTED" : "CONNECTING" : "DISCONNECTED") + " to " + (i != 0 ? i != 1 ? i != 2 ? "CLOSED" : "CONNECTED" : "CONNECTING" : "DISCONNECTED"));
                this.t = i;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean aj() {
        dyd dydVar = this.h;
        if (dydVar == null) {
            throw new NullPointerException("ticker");
        }
        long bt = dydVar.bt();
        long j = 30000;
        long j2 = 30000;
        int i = 1;
        while (i <= 3) {
            try {
            } catch (Exception e2) {
                if (e2 instanceof InterruptedException) {
                    Thread.currentThread().interrupt();
                }
                int i2 = gbs.f17875a;
            }
            if (Math.max(0L, j2) <= 0) {
                int i3 = gbs.f17875a;
                return ay();
            }
            gbs.i("BillingClient", "Already connected or not opted into auto reconnection.");
            ejd ejdVar = edc.l;
            TimeUnit.MILLISECONDS.getClass();
            int i4 = ejdVar.f15636a;
            if (i4 == 0) {
                gbs.i("BillingClient", "Reconnection succeeded with result: " + i4);
                return ay();
            }
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            long bt2 = (dydVar.bt() - bt) + 0;
            TimeUnit timeUnit2 = TimeUnit.NANOSECONDS;
            j2 = j - timeUnit.convert(bt2, timeUnit2);
            long j3 = j;
            long pow = ((long) Math.pow(2.0d, i - 1)) * 1000;
            if (j2 < pow) {
                return ay();
            }
            if (i < 3 && pow > 0) {
                try {
                    Thread.sleep(pow);
                    j2 = j3 - timeUnit.convert((dydVar.bt() - bt) + 0, timeUnit2);
                } catch (InterruptedException unused) {
                    Thread.currentThread().interrupt();
                    int i5 = gbs.f17875a;
                }
            }
            i++;
            j = j3;
        }
        int i6 = gbs.f17875a;
        return ay();
    }

    public final gtb ak(ejd ejdVar, hm hmVar, Exception exc) {
        an(hmVar, 9, ejdVar, cgl.b(exc));
        int i = gbs.f17875a;
        return new gtb(19, ejdVar, null, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void al() {
        synchronized (this.k) {
            if (this.u != null) {
                try {
                    try {
                        this.aa.unbindService(this.u);
                    } catch (Throwable unused) {
                        int i = gbs.f17875a;
                        this.s = null;
                        this.u = null;
                    }
                } finally {
                    this.s = null;
                    this.u = null;
                }
            }
        }
    }

    public void am(aoy aoyVar, emr emrVar) {
        if (ae(new cao(this, emrVar, aoyVar, 4), 30000L, new efr(17, this, emrVar, false), ax(), aw()) == null) {
            ejd au = au();
            ag(hm.MISSING_RESULT_FROM_EXECUTE_ASYNC, 7, au);
            duz duzVar = fkz.f16953g;
            fun funVar = fun.f17435a;
            gkr gkrVar = (gkr) emrVar.n;
            if (au == null || au.f15636a != 0) {
                gkrVar.o(au == null ? 1322 : cdy.j(au.f15636a));
                return;
            }
            if (!acw.u(funVar)) {
                duz listIterator = funVar.listIterator(0);
                while (listIterator.hasNext()) {
                    x xVar = (x) listIterator.next();
                    if ("a".equals(xVar.h)) {
                        gkrVar.i(xVar);
                        return;
                    }
                }
            }
            gkrVar.o(1992);
        }
    }

    public final void an(hm hmVar, int i, ejd ejdVar, String str) {
        try {
            int i2 = cgl.f12845a;
            ah(cgl.c(hmVar, i, ejdVar, str, apl.BROADCAST_ACTION_UNSPECIFIED));
        } catch (Throwable unused) {
            int i3 = gbs.f17875a;
        }
    }

    public final synchronized void ao() {
        ExecutorService executorService = this.f20054a;
        if (executorService != null) {
            executorService.shutdownNow();
            this.f20054a = null;
        }
    }

    public void ap(eie eieVar) {
        az(eieVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void aq(czw czwVar, dzt dztVar) {
        if (ae(new cao(this, dztVar, czwVar, 0), 30000L, new efr(13, this, dztVar, 0 == true ? 1 : 0), ax(), aw()) == null) {
            ejd au = au();
            ag(hm.MISSING_RESULT_FROM_EXECUTE_ASYNC, 3, au);
            dztVar.q(au);
        }
    }

    public final ejd ar() {
        gbs.i("BillingClient", "Service connection is valid. No need to re-initialize.");
        gza b2 = eag.b();
        b2.f();
        eag.e((eag) b2.f14803d, 6);
        eip e2 = dmh.e();
        e2.f();
        dmh.d((dmh) e2.f14803d);
        e2.a(false);
        e2.b();
        b2.f();
        eag.d((eag) b2.f14803d, (dmh) e2.g());
        ba((eag) b2.g());
        return edc.l;
    }

    public final void as(hm hmVar, ejd ejdVar, String str, long j, boolean z) {
        try {
            int i = cgl.f12845a;
            try {
                this.f20056b.v(cgl.c(hmVar, 2, ejdVar, str, apl.BROADCAST_ACTION_UNSPECIFIED), this.i, j, z);
            } catch (Throwable unused) {
                int i2 = gbs.f17875a;
            }
        } catch (Throwable unused2) {
            int i3 = gbs.f17875a;
        }
    }

    public final void at(hm hmVar, ejd ejdVar, long j, boolean z) {
        try {
            int i = cgl.f12845a;
            try {
                this.f20056b.v(cgl.c(hmVar, 2, ejdVar, null, apl.BROADCAST_ACTION_UNSPECIFIED), this.i, j, z);
            } catch (Throwable unused) {
                int i2 = gbs.f17875a;
            }
        } catch (Throwable unused2) {
            int i3 = gbs.f17875a;
        }
    }

    public final ejd au() {
        int[] iArr = {0, 3};
        synchronized (this.k) {
            for (int i = 0; i < 2; i++) {
                if (this.t == iArr[i]) {
                    return edc.n;
                }
            }
            return edc.f15337a;
        }
    }

    public final void av() {
        if (TextUtils.isEmpty(null)) {
            this.aa.getPackageName();
        }
    }

    public final synchronized ExecutorService aw() {
        try {
            if (this.f20054a == null) {
                this.f20054a = Executors.newFixedThreadPool(gbs.f17875a, new czx(this));
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.f20054a;
    }

    public final Handler ax() {
        return Looper.myLooper() == null ? this.j : new Handler(Looper.myLooper());
    }

    public final boolean ay() {
        boolean z;
        synchronized (this.k) {
            try {
                z = false;
                if (this.t == 2 && this.s != null && this.u != null) {
                    z = true;
                }
            } finally {
            }
        }
        return z;
    }

    public final void az(eie eieVar) {
        hm hmVar;
        ejd ejdVar;
        ejd ejdVar2;
        synchronized (this.k) {
            try {
                if (ay()) {
                    ejdVar = ar();
                } else {
                    if (this.t == 1) {
                        int i = gbs.f17875a;
                        hm hmVar2 = hm.BILLING_CLIENT_CONNECTING;
                        ejdVar2 = edc.f15341e;
                        bc(ejdVar2, hmVar2);
                    } else if (this.t == 3) {
                        int i2 = gbs.f17875a;
                        hm hmVar3 = hm.BILLING_CLIENT_CLOSED;
                        ejdVar2 = edc.n;
                        bc(ejdVar2, hmVar3);
                    } else {
                        ai(1);
                        al();
                        gbs.i("BillingClient", "Starting in-app billing setup.");
                        this.u = new aaa(this, eieVar);
                        gyt gytVar = this.u.f9835d;
                        gytVar.f19024d = 0L;
                        gytVar.f19023c = false;
                        gytVar.e();
                        Intent intent = new Intent("com.android.vending.billing.InAppBillingService.BIND");
                        intent.setPackage("com.android.vending");
                        List<ResolveInfo> queryIntentServices = this.aa.getPackageManager().queryIntentServices(intent, 0);
                        if (queryIntentServices == null || queryIntentServices.isEmpty()) {
                            hmVar = hm.INTENT_SERVICE_NOT_FOUND;
                        } else {
                            ServiceInfo serviceInfo = queryIntentServices.get(0).serviceInfo;
                            if (serviceInfo != null) {
                                String str = serviceInfo.packageName;
                                String str2 = serviceInfo.name;
                                if (!Objects.equals(str, "com.android.vending") || str2 == null) {
                                    hmVar = hm.INVALID_PHONESKY_PACKAGE;
                                } else {
                                    ComponentName componentName = new ComponentName(str, str2);
                                    Intent intent2 = new Intent(intent);
                                    intent2.setComponent(componentName);
                                    intent2.putExtra("playBillingLibraryVersion", this.y);
                                    synchronized (this.k) {
                                        try {
                                            if (this.t == 2) {
                                                ejdVar = ar();
                                            } else if (this.t != 1) {
                                                hm hmVar4 = hm.BILLING_CLIENT_TRANSITIONED_OUT_OF_CONNECTING;
                                                ejdVar2 = edc.n;
                                                bc(ejdVar2, hmVar4);
                                            } else {
                                                aaa aaaVar = this.u;
                                                if (this.aa.bindService(intent2, aaaVar, 1)) {
                                                    gbs.i("BillingClient", "Service was bonded successfully.");
                                                    ejdVar = null;
                                                } else {
                                                    hmVar = hm.BILLING_SERVICE_BLOCKED;
                                                }
                                            }
                                        } finally {
                                        }
                                    }
                                }
                            } else {
                                hmVar = hm.INVALID_PHONESKY_PACKAGE;
                            }
                        }
                        ai(0);
                        gbs.i("BillingClient", "Billing service unavailable on device.");
                        ejdVar = edc.m;
                        bc(ejdVar, hmVar);
                    }
                    ejdVar = ejdVar2;
                }
            } finally {
            }
        }
        if (ejdVar != null) {
            eieVar.t(ejdVar);
        }
    }

    public final void ba(eag eagVar) {
        try {
            ffr ffrVar = this.f20056b;
            int i = this.i;
            ffrVar.getClass();
            try {
                gzp gzpVar = (gzp) ((djs) ffrVar.f16721f).x();
                gzpVar.f();
                djs.g((djs) gzpVar.f14803d, i);
                djs djsVar = (djs) gzpVar.g();
                ffrVar.f16721f = djsVar;
                try {
                    ffrVar.ai(eagVar, djsVar);
                } catch (Throwable unused) {
                    int i2 = gbs.f17875a;
                }
            } catch (Throwable unused2) {
                int i3 = gbs.f17875a;
            }
        } catch (Throwable unused3) {
            int i4 = gbs.f17875a;
        }
    }

    public void bb() {
        try {
            int i = cgl.f12845a;
            ba(cgl.d(12, apl.BROADCAST_ACTION_UNSPECIFIED));
        } catch (Throwable unused) {
            int i2 = gbs.f17875a;
        }
        synchronized (this.k) {
            try {
                if (this.o != null) {
                    axs axsVar = this.o;
                    gwx gwxVar = (gwx) axsVar.f11038e;
                    Context context = (Context) axsVar.h;
                    gwxVar.h(context);
                    ((gwx) axsVar.f11039f).h(context);
                }
            } catch (Throwable unused2) {
                int i3 = gbs.f17875a;
            }
            try {
                gbs.i("BillingClient", "Unbinding from service.");
                al();
            } catch (Throwable unused3) {
                int i4 = gbs.f17875a;
            }
            try {
                try {
                    ao();
                } catch (Throwable unused4) {
                    int i5 = gbs.f17875a;
                }
            } finally {
                ai(3);
            }
        }
    }

    public final void bc(ejd ejdVar, hm hmVar) {
        try {
            int i = cgl.f12845a;
            ari ariVar = (ari) cgl.c(hmVar, 6, ejdVar, null, apl.BROADCAST_ACTION_UNSPECIFIED).x();
            eip e2 = dmh.e();
            e2.a(false);
            e2.b();
            ariVar.b(e2);
            ah((hd) ariVar.g());
        } catch (Throwable unused) {
            int i2 = gbs.f17875a;
        }
    }

    public final void bd(hm hmVar, ejd ejdVar, long j) {
        try {
            int i = cgl.f12845a;
            try {
                this.f20056b.p(cgl.c(hmVar, 2, ejdVar, null, apl.BROADCAST_ACTION_UNSPECIFIED), this.i, j);
            } catch (Throwable unused) {
                int i2 = gbs.f17875a;
            }
        } catch (Throwable unused2) {
            int i3 = gbs.f17875a;
        }
    }

    public final dsg be(ejd ejdVar, hm hmVar, Exception exc) {
        int i = gbs.f17875a;
        an(hmVar, 7, ejdVar, cgl.b(exc));
        return new dsg(ejdVar.f15636a, ejdVar.f15638c, new ArrayList(), new ArrayList());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v29, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v56, types: [java.lang.String] */
    public ejd bf(elf elfVar, final dxb dxbVar) {
        String str;
        String str2;
        long j;
        String str3;
        ejd ejdVar;
        dzn dznVar;
        ejd ejdVar2;
        HashSet hashSet;
        long j2;
        String str4;
        Future ae;
        long j3;
        long j4;
        long j5;
        long j6;
        hm hmVar;
        long j7;
        hm hmVar2;
        String str5;
        String str6;
        boolean z;
        boolean z2;
        long nextLong = new Random().nextLong();
        if (this.o == null || ((eoy) this.o.f11036a) == null) {
            hm hmVar3 = hm.MISSING_LISTENER;
            ejd ejdVar3 = edc.o;
            bd(hmVar3, ejdVar3, nextLong);
            return ejdVar3;
        }
        try {
            gbs.i("BillingClient", "Already connected or not opted into auto reconnection.");
            ejd ejdVar4 = edc.l;
            TimeUnit.MILLISECONDS.getClass();
            int i = ejdVar4.f15636a;
            if (i == 0) {
                gbs.i("BillingClient", "Reconnection succeeded with result: " + i);
            }
        } catch (Exception e2) {
            if (e2 instanceof InterruptedException) {
                Thread.currentThread().interrupt();
            }
            int i2 = gbs.f17875a;
        }
        if (!ay()) {
            hm hmVar4 = hm.SERVICE_CONNECTION_NOT_READY;
            ejd ejdVar5 = edc.n;
            bd(hmVar4, ejdVar5, nextLong);
            bg(ejdVar5);
            return ejdVar5;
        }
        synchronized (this.k) {
            try {
                if (this.u != null) {
                    this.u.getClass();
                }
            } finally {
            }
        }
        ArrayList arrayList = new ArrayList();
        arrayList.addAll((ArrayList) dxbVar.f14995a);
        fkz fkzVar = (fkz) dxbVar.f14998d;
        Iterator it = arrayList.iterator();
        if ((it.hasNext() ? it.next() : null) != null) {
            throw new ClassCastException();
        }
        duz duzVar = (duz) fkzVar.iterator();
        aab aabVar = (aab) (duzVar.hasNext() ? duzVar.next() : null);
        x xVar = aabVar.f9836a;
        String str7 = xVar.h;
        String str8 = xVar.f20260b;
        if (str8.equals("subs") && !this.f20057c) {
            hm hmVar5 = hm.SUBSCRIPTIONS_NOT_SUPPORTED;
            ejd ejdVar6 = edc.f15342f;
            at(hmVar5, ejdVar6, nextLong, false);
            bg(ejdVar6);
            return ejdVar6;
        }
        ((bmr) dxbVar.f14997c).getClass();
        if (!dxbVar.f14996b) {
            fkz fkzVar2 = (fkz) dxbVar.f14998d;
            if (fkzVar2 != null) {
                int size = fkzVar2.size();
                for (int i3 = 0; i3 < size; i3++) {
                }
            }
        } else if (!this.r) {
            hm hmVar6 = hm.EXTRA_PARAMS_NOT_SUPPORTED;
            ejd ejdVar7 = edc.i;
            at(hmVar6, ejdVar7, nextLong, false);
            bg(ejdVar7);
            return ejdVar7;
        }
        if (arrayList.size() > 1 && !this.v) {
            int i4 = gbs.f17875a;
            hm hmVar7 = hm.MULTI_ITEM_NOT_SUPPORTED;
            ejd ejdVar8 = edc.k;
            at(hmVar7, ejdVar8, nextLong, false);
            bg(ejdVar8);
            return ejdVar8;
        }
        if (!fkzVar.isEmpty() && !this.f20055ab) {
            int i5 = gbs.f17875a;
            hm hmVar8 = hm.PRODUCT_DETAILS_NOT_SUPPORTED;
            ejd ejdVar9 = edc.f15339c;
            at(hmVar8, ejdVar9, nextLong, false);
            bg(ejdVar9);
            return ejdVar9;
        }
        if (((fkz) dxbVar.f14998d).isEmpty()) {
            str2 = str7;
            j = nextLong;
            ejdVar2 = edc.l;
            str3 = str8;
            str = null;
        } else {
            aab aabVar2 = (aab) ((fkz) dxbVar.f14998d).get(0);
            int i6 = 1;
            str = null;
            while (true) {
                if (i6 < ((fkz) dxbVar.f14998d).size()) {
                    aab aabVar3 = (aab) ((fkz) dxbVar.f14998d).get(i6);
                    str2 = str7;
                    if (!aabVar3.f9836a.f20260b.equals(aabVar2.f9836a.f20260b) && !aabVar3.f9836a.f20260b.equals("play_pass_subs")) {
                        j = nextLong;
                        ejdVar2 = edc.s(5, "All products should have same ProductType.");
                        str3 = str8;
                        break;
                    }
                    i6++;
                    str7 = str2;
                } else {
                    str2 = str7;
                    x xVar2 = aabVar2.f9836a;
                    String optString = xVar2.f20265g.optString(TTDownloadField.TT_PACKAGE_NAME);
                    HashMap hashMap = new HashMap();
                    HashSet hashSet2 = new HashSet();
                    j = nextLong;
                    fkz fkzVar3 = (fkz) dxbVar.f14998d;
                    int size2 = fkzVar3.size();
                    str3 = str8;
                    int i7 = 0;
                    while (true) {
                        if (i7 < size2) {
                            fkz fkzVar4 = fkzVar3;
                            aab aabVar4 = (aab) fkzVar3.get(i7);
                            int i8 = size2;
                            x xVar3 = aabVar4.f9836a;
                            int i9 = i7;
                            ArrayList arrayList2 = xVar3.f20259a;
                            String str9 = xVar3.h;
                            if (arrayList2 != null) {
                                hashSet = hashSet2;
                                if (aabVar4.f9837b == null) {
                                    ejdVar = edc.s(5, "offerToken is required for constructing ProductDetailsParams for subscriptions. Missing value for product id: " + str9);
                                    break;
                                }
                            } else {
                                hashSet = hashSet2;
                            }
                            if (hashMap.containsKey(str9)) {
                                ejdVar = edc.s(5, "ProductId can not be duplicated. Invalid product id: " + xVar3.h + ".");
                                break;
                            }
                            hashMap.put(xVar3.h, aabVar4);
                            if (!xVar2.f20260b.equals("play_pass_subs") && !xVar3.f20260b.equals("play_pass_subs") && !optString.equals(xVar3.f20265g.optString(TTDownloadField.TT_PACKAGE_NAME))) {
                                ejdVar = edc.s(5, "All products must have the same package name.");
                                break;
                            }
                            i7 = i9 + 1;
                            size2 = i8;
                            fkzVar3 = fkzVar4;
                            hashSet2 = hashSet;
                        } else {
                            Iterator it2 = hashSet2.iterator();
                            while (true) {
                                if (it2.hasNext()) {
                                    String str10 = (String) it2.next();
                                    if (hashMap.containsKey(str10)) {
                                        ejdVar = edc.s(5, "OldProductId must not be one of the products to be purchased. Invalid old product id: " + str10 + ".");
                                        break;
                                    }
                                } else {
                                    ArrayList arrayList3 = xVar2.f20264f;
                                    String str11 = aabVar2.f9837b;
                                    if (str11 != null && arrayList3 != null) {
                                        Iterator it3 = arrayList3.iterator();
                                        while (true) {
                                            if (!it3.hasNext()) {
                                                dznVar = null;
                                                break;
                                            }
                                            dznVar = (dzn) it3.next();
                                            if (str11.equals(dznVar.f15134b)) {
                                                break;
                                            }
                                        }
                                        if (dznVar != null && dznVar.f15133a != null) {
                                            ejdVar = edc.s(5, "Both autoPayDetails and autoPayBalanceThreshold is required for constructing ProductDetailsParams for autopay.");
                                        }
                                    }
                                    ejdVar = edc.l;
                                }
                            }
                        }
                    }
                    ejdVar2 = ejdVar;
                }
            }
        }
        if (ejdVar2 != edc.l) {
            at(hm.INVALID_BILLING_FLOW_PARAMS, ejdVar2, j, false);
            bg(ejdVar2);
            return ejdVar2;
        }
        long j8 = j;
        if (this.r) {
            boolean z3 = this.f20060f;
            this.z.getClass();
            this.z.getClass();
            boolean z4 = this.f20059e;
            String str12 = this.y;
            String str13 = this.f20061g;
            long longValue = this.w.longValue();
            this.aa.getPackageName();
            int i10 = gbs.f17875a;
            final Bundle bundle = new Bundle();
            gbs.g(longValue, bundle, str12, str13);
            bundle.putLong("billingClientTransactionId", j8);
            ((bmr) dxbVar.f14997c).getClass();
            if (TextUtils.isEmpty(str)) {
                str6 = str;
            } else {
                str6 = str;
                bundle.putString("accountId", str6);
            }
            if (!TextUtils.isEmpty(str6)) {
                bundle.putString("obfuscatedProfileId", str6);
            }
            if (!TextUtils.isEmpty(str6)) {
                bundle.putStringArrayList("skusToReplace", new ArrayList<>(Arrays.asList(str6)));
            }
            ((bmr) dxbVar.f14997c).getClass();
            if (!TextUtils.isEmpty(str6)) {
                ((bmr) dxbVar.f14997c).getClass();
                bundle.putString("oldSkuPurchaseToken", str6);
            }
            if (!TextUtils.isEmpty(str6)) {
                bundle.putString("oldSkuPurchaseId", str6);
            }
            ((bmr) dxbVar.f14997c).getClass();
            if (!TextUtils.isEmpty(str6)) {
                ((bmr) dxbVar.f14997c).getClass();
                bundle.putString("originalExternalTransactionId", str6);
            }
            if (!TextUtils.isEmpty(str6)) {
                bundle.putString("paymentsPurchaseParams", str6);
            }
            if (z3) {
                z = true;
                bundle.putBoolean("enablePendingPurchases", true);
            } else {
                z = true;
            }
            if (z4) {
                bundle.putBoolean("enableAlternativeBilling", z);
            }
            ArrayList arrayList4 = new ArrayList();
            duz listIterator = ((fkz) dxbVar.f14998d).listIterator(0);
            while (listIterator.hasNext()) {
            }
            if (!arrayList4.isEmpty()) {
                fwc b2 = fmj.b();
                b2.f();
                fmj.a((fmj) b2.f14803d, arrayList4);
                bundle.putByteArray("subscriptionProductReplacementParamsList", ((fmj) b2.g()).j());
            }
            if (arrayList.isEmpty()) {
                ArrayList<String> arrayList5 = new ArrayList<>(fkzVar.size() - 1);
                ArrayList<String> arrayList6 = new ArrayList<>(fkzVar.size() - 1);
                ArrayList<String> arrayList7 = new ArrayList<>();
                ArrayList<String> arrayList8 = new ArrayList<>();
                ArrayList<String> arrayList9 = new ArrayList<>();
                ArrayList<Integer> arrayList10 = new ArrayList<>();
                int i11 = 0;
                while (i11 < fkzVar.size()) {
                    aab aabVar5 = (aab) fkzVar.get(i11);
                    x xVar4 = aabVar5.f9836a;
                    long j9 = j8;
                    if (!xVar4.f20263e.isEmpty()) {
                        arrayList7.add(xVar4.f20263e);
                    }
                    arrayList8.add(aabVar5.f9837b);
                    String str14 = xVar4.i;
                    ArrayList arrayList11 = xVar4.f20264f;
                    if (arrayList11 != null && !arrayList11.isEmpty()) {
                        Iterator it4 = xVar4.f20264f.iterator();
                        while (true) {
                            if (!it4.hasNext()) {
                                break;
                            }
                            dzn dznVar2 = (dzn) it4.next();
                            if (!TextUtils.isEmpty(dznVar2.f15136d)) {
                                str14 = dznVar2.f15136d;
                                break;
                            }
                        }
                    }
                    if (!TextUtils.isEmpty(str14)) {
                        arrayList9.add(str14);
                    }
                    if (i11 > 0) {
                        arrayList5.add(((aab) fkzVar.get(i11)).f9836a.h);
                        arrayList6.add(((aab) fkzVar.get(i11)).f9836a.f20260b);
                    }
                    i11++;
                    j8 = j9;
                }
                j2 = j8;
                bundle.putStringArrayList("SKU_OFFER_ID_TOKEN_LIST", arrayList8);
                if (!arrayList10.isEmpty()) {
                    bundle.putIntegerArrayList("autoPayBalanceThresholdList", arrayList10);
                }
                if (!arrayList7.isEmpty()) {
                    bundle.putStringArrayList("skuDetailsTokens", arrayList7);
                }
                if (!arrayList9.isEmpty()) {
                    bundle.putStringArrayList("SKU_SERIALIZED_DOCID_LIST", arrayList9);
                }
                if (!arrayList5.isEmpty()) {
                    bundle.putStringArrayList("additionalSkus", arrayList5);
                    bundle.putStringArrayList("additionalSkuTypes", arrayList6);
                }
            } else {
                ArrayList<String> arrayList12 = new ArrayList<>();
                new ArrayList();
                new ArrayList();
                new ArrayList();
                new ArrayList();
                Iterator it5 = arrayList.iterator();
                if (it5.hasNext()) {
                    throw tn.c(it5);
                }
                if (!arrayList12.isEmpty()) {
                    bundle.putStringArrayList("skuDetailsTokens", arrayList12);
                }
                if (arrayList.size() > 1) {
                    ArrayList<String> arrayList13 = new ArrayList<>(arrayList.size() - 1);
                    ArrayList<String> arrayList14 = new ArrayList<>(arrayList.size() - 1);
                    if (1 < arrayList.size()) {
                        throw tn.w(1, arrayList);
                    }
                    bundle.putStringArrayList("additionalSkus", arrayList13);
                    bundle.putStringArrayList("additionalSkuTypes", arrayList14);
                }
                j2 = j8;
            }
            if (bundle.containsKey("SKU_OFFER_ID_TOKEN_LIST") && !this.f20058d) {
                hm hmVar9 = hm.OFFER_ID_TOKEN_NOT_SUPPORTED;
                ejd ejdVar10 = edc.f15340d;
                at(hmVar9, ejdVar10, j2, false);
                bg(ejdVar10);
                return ejdVar10;
            }
            if (TextUtils.isEmpty(aabVar.f9836a.f20265g.optString(TTDownloadField.TT_PACKAGE_NAME))) {
                z2 = false;
            } else {
                bundle.putString("skuPackageName", aabVar.f9836a.f20265g.optString(TTDownloadField.TT_PACKAGE_NAME));
                z2 = true;
            }
            str4 = null;
            if (!TextUtils.isEmpty(null)) {
                bundle.putString("accountName", null);
            }
            Intent intent = elfVar.getIntent();
            if (intent == null) {
                int i12 = gbs.f17875a;
            } else if (!TextUtils.isEmpty(intent.getStringExtra("PROXY_PACKAGE"))) {
                String stringExtra = intent.getStringExtra("PROXY_PACKAGE");
                bundle.putString("proxyPackage", stringExtra);
                try {
                    bundle.putString("proxyPackageVersion", this.aa.getPackageManager().getPackageInfo(stringExtra, 0).versionName);
                } catch (PackageManager.NameNotFoundException unused) {
                    bundle.putString("proxyPackageVersion", "package not found");
                }
            }
            final int i13 = (!this.f20055ab || fkzVar.isEmpty()) ? (this.q && z2) ? 15 : this.f20060f ? 9 : 6 : 17;
            final String str15 = str2;
            final ?? r4 = str3;
            ae = ae(new Callable(i13, str15, r4, dxbVar, bundle) { // from class: g.abf

                /* renamed from: a, reason: collision with root package name */
                public final /* synthetic */ String f9912a;

                /* renamed from: b, reason: collision with root package name */
                public final /* synthetic */ Bundle f9913b;

                /* renamed from: d, reason: collision with root package name */
                public final /* synthetic */ int f9915d;

                /* renamed from: e, reason: collision with root package name */
                public final /* synthetic */ String f9916e;

                {
                    this.f9913b = bundle;
                }

                @Override // java.util.concurrent.Callable
                public final Object call() {
                    Bundle h;
                    agh aghVar;
                    tq tqVar = tq.this;
                    int i14 = this.f9915d;
                    String str16 = this.f9916e;
                    String str17 = this.f9912a;
                    Bundle bundle2 = this.f9913b;
                    try {
                        synchronized (tqVar.k) {
                            aghVar = tqVar.s;
                        }
                        if (aghVar == null) {
                            return gbs.h(edc.n, hm.SERVICE_RESET_TO_NULL);
                        }
                        return ((eaw) aghVar).a(tqVar.aa.getPackageName(), i14, str16, str17, bundle2);
                    } catch (DeadObjectException e3) {
                        ejd ejdVar11 = edc.n;
                        hm hmVar10 = hm.LAUNCH_BILLING_FLOW_EXCEPTION;
                        String b3 = cgl.b(e3);
                        h = gbs.h(ejdVar11, hmVar10);
                        if (b3 != null) {
                            h.putString("ADDITIONAL_LOG_DETAILS", b3);
                        }
                        return h;
                    } catch (Exception e4) {
                        ejd ejdVar12 = edc.f15337a;
                        hm hmVar11 = hm.LAUNCH_BILLING_FLOW_EXCEPTION;
                        String b4 = cgl.b(e4);
                        h = gbs.h(ejdVar12, hmVar11);
                        if (b4 != null) {
                            h.putString("ADDITIONAL_LOG_DETAILS", b4);
                        }
                        return h;
                    }
                }
            }, PushUIConfig.dismissTime, null, this.j, aw());
            j3 = r4;
        } else {
            j2 = j8;
            str4 = str;
            ?? r42 = str3;
            ae = ae(new cao(this, str2, r42, 6), PushUIConfig.dismissTime, null, this.j, aw());
            j3 = r42;
        }
        try {
            if (ae == null) {
                try {
                    hm hmVar10 = hm.MISSING_RESULT_FROM_EXECUTE_ASYNC;
                    ejd ejdVar11 = edc.p;
                    at(hmVar10, ejdVar11, j2, false);
                    bg(ejdVar11);
                    return ejdVar11;
                } catch (CancellationException e3) {
                    e = e3;
                    j6 = j2;
                    j4 = j6;
                    int i14 = gbs.f17875a;
                    hm hmVar11 = hm.LAUNCH_BILLING_FLOW_TIMEOUT;
                    ejd ejdVar12 = edc.f15338b;
                    as(hmVar11, ejdVar12, cgl.b(e), j4, false);
                    bg(ejdVar12);
                    return ejdVar12;
                } catch (TimeoutException e4) {
                    e = e4;
                    j6 = j2;
                    j4 = j6;
                    int i142 = gbs.f17875a;
                    hm hmVar112 = hm.LAUNCH_BILLING_FLOW_TIMEOUT;
                    ejd ejdVar122 = edc.f15338b;
                    as(hmVar112, ejdVar122, cgl.b(e), j4, false);
                    bg(ejdVar122);
                    return ejdVar122;
                } catch (Exception e5) {
                    e = e5;
                    j5 = j2;
                    long j10 = j5;
                    int i15 = gbs.f17875a;
                    hm hmVar12 = hm.LAUNCH_BILLING_FLOW_EXCEPTION;
                    ejd ejdVar13 = edc.n;
                    as(hmVar12, ejdVar13, cgl.b(e), j10, false);
                    bg(ejdVar13);
                    return ejdVar13;
                }
            }
            long j11 = j2;
            Bundle bundle2 = (Bundle) ae.get(PushUIConfig.dismissTime, TimeUnit.MILLISECONDS);
            int e6 = gbs.e(bundle2, "BillingClient");
            String f2 = gbs.f(bundle2, "BillingClient");
            if (e6 == 0) {
                Intent intent2 = new Intent(elfVar, (Class<?>) ProxyBillingActivity.class);
                intent2.putExtra("BUY_INTENT", (PendingIntent) bundle2.getParcelable("BUY_INTENT"));
                intent2.putExtra("billingClientTransactionId", j11);
                intent2.putExtra("wasServiceAutoReconnected", false);
                elfVar.startActivity(intent2);
                return edc.l;
            }
            ejd s = edc.s(e6, f2);
            try {
                if (bundle2 == null) {
                    hmVar = hm.REASON_UNSPECIFIED;
                } else {
                    Object obj = bundle2.get("LOG_REASON");
                    hmVar = obj == null ? hm.REASON_UNSPECIFIED : obj instanceof Integer ? hm.b(((Integer) obj).intValue()) : hm.REASON_UNSPECIFIED;
                }
            } catch (Throwable th) {
                "Failed to get log reason from bundle: ".concat(String.valueOf(th.getMessage()));
                int i16 = gbs.f17875a;
                hmVar = hm.REASON_UNSPECIFIED;
            }
            if (hmVar == hm.REASON_UNSPECIFIED) {
                hmVar = hm.BILLING_RESULT_RECEIVED_FROM_PHONESKY;
            }
            hm hmVar13 = hmVar;
            try {
                if (bundle2 != null) {
                    try {
                        String string = bundle2.getString("ADDITIONAL_LOG_DETAILS");
                        j7 = j11;
                        hmVar2 = hmVar13;
                        str5 = string;
                    } catch (Throwable th2) {
                        "Failed to get additional log details from bundle: ".concat(String.valueOf(th2.getMessage()));
                        int i17 = gbs.f17875a;
                    }
                    as(hmVar2, s, str5, j7, false);
                    bg(s);
                    return s;
                }
                as(hmVar2, s, str5, j7, false);
                bg(s);
                return s;
            } catch (CancellationException e7) {
                e = e7;
                j6 = j7;
                j4 = j6;
                int i1422 = gbs.f17875a;
                hm hmVar1122 = hm.LAUNCH_BILLING_FLOW_TIMEOUT;
                ejd ejdVar1222 = edc.f15338b;
                as(hmVar1122, ejdVar1222, cgl.b(e), j4, false);
                bg(ejdVar1222);
                return ejdVar1222;
            } catch (TimeoutException e8) {
                e = e8;
                j6 = j7;
                j4 = j6;
                int i14222 = gbs.f17875a;
                hm hmVar11222 = hm.LAUNCH_BILLING_FLOW_TIMEOUT;
                ejd ejdVar12222 = edc.f15338b;
                as(hmVar11222, ejdVar12222, cgl.b(e), j4, false);
                bg(ejdVar12222);
                return ejdVar12222;
            } catch (Exception e9) {
                e = e9;
                j5 = j7;
                long j102 = j5;
                int i152 = gbs.f17875a;
                hm hmVar122 = hm.LAUNCH_BILLING_FLOW_EXCEPTION;
                ejd ejdVar132 = edc.n;
                as(hmVar122, ejdVar132, cgl.b(e), j102, false);
                bg(ejdVar132);
                return ejdVar132;
            }
            j7 = j11;
            hmVar2 = hmVar13;
            str5 = str4;
            j4 = j6;
        } catch (CancellationException e10) {
            e = e10;
        } catch (TimeoutException e11) {
            e = e11;
            j4 = j3;
        } catch (Exception e12) {
            e = e12;
        }
        int i142222 = gbs.f17875a;
        hm hmVar112222 = hm.LAUNCH_BILLING_FLOW_TIMEOUT;
        ejd ejdVar122222 = edc.f15338b;
        as(hmVar112222, ejdVar122222, cgl.b(e), j4, false);
        bg(ejdVar122222);
        return ejdVar122222;
    }

    public final void bg(ejd ejdVar) {
        if (Thread.interrupted()) {
            return;
        }
        this.j.post(new efr(14, this, ejdVar, false));
    }
}
