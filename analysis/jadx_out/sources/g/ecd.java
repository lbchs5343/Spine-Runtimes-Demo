package g;

import android.app.ActivityManager;
import android.app.Application;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.util.SparseIntArray;
import com.bykv.vk.component.ttvideo.ILivePlayer;
import com.google.android.gms.common.api.GoogleApiActivity;
import com.google.android.gms.common.api.Status;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes3.dex */
public final class ecd implements Handler.Callback {

    /* renamed from: c, reason: collision with root package name */
    public static ecd f15290c;

    /* renamed from: e, reason: collision with root package name */
    public final AtomicInteger f15292e;

    /* renamed from: f, reason: collision with root package name */
    public final fdy f15293f;

    /* renamed from: g, reason: collision with root package name */
    public final ConcurrentHashMap f15294g;
    public axe h;
    public final glm i;
    public final glm j;
    public boe k;
    public final Context l;
    public long m;
    public final AtomicInteger n;
    public boolean o;
    public volatile boolean p;
    public final dae q;
    public final awe r;

    /* renamed from: b, reason: collision with root package name */
    public static final Status f15289b = new Status(4, "Sign-out occurred while this API call was in progress.");

    /* renamed from: a, reason: collision with root package name */
    public static final Status f15288a = new Status(4, "The user must be signed in to make this API call.");

    /* renamed from: d, reason: collision with root package name */
    public static final Object f15291d = new Object();

    public ecd(Context context, Looper looper) {
        awe aweVar = awe.f10970a;
        this.m = ILivePlayer.RETRY_TIME_INTERVAL_DEFAULT;
        this.o = false;
        this.f15292e = new AtomicInteger(1);
        this.n = new AtomicInteger(0);
        this.f15294g = new ConcurrentHashMap(5, 0.75f, 1);
        this.j = new glm(0);
        this.i = new glm(0);
        this.p = true;
        this.l = context;
        dae daeVar = new dae(looper, this, 3);
        Looper.getMainLooper();
        this.q = daeVar;
        this.r = aweVar;
        this.f15293f = new fdy(19);
        PackageManager packageManager = context.getPackageManager();
        if (awt.i == null) {
            awt.i = Boolean.valueOf(dyd.bj() && packageManager.hasSystemFeature("android.hardware.type.automotive"));
        }
        if (awt.i.booleanValue()) {
            this.p = false;
        }
        daeVar.sendMessage(daeVar.obtainMessage(6));
    }

    public static ecd s(Context context) {
        ecd ecdVar;
        synchronized (f15291d) {
            try {
                if (f15290c == null) {
                    Looper looper = bxk.k().getLooper();
                    Context applicationContext = context.getApplicationContext();
                    Object obj = awe.f10971b;
                    f15290c = new ecd(applicationContext, looper);
                }
                ecdVar = f15290c;
            } catch (Throwable th) {
                throw th;
            }
        }
        return ecdVar;
    }

    public static Status t(dzu dzuVar, nk nkVar) {
        return new Status(nkVar, awf.t("API: ", (String) dzuVar.f15152c.f10384f, " is not available on this device. Connection failed with: ", String.valueOf(nkVar)));
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        cqg[] g2;
        int i = message.what;
        int i2 = 22;
        int i3 = 2;
        akj akjVar = boe.f11904a;
        gja gjaVar = gja.f18230b;
        Context context = this.l;
        fbd fbdVar = null;
        dae daeVar = this.q;
        ConcurrentHashMap concurrentHashMap = this.f15294g;
        switch (i) {
            case 1:
                this.m = true == ((Boolean) message.obj).booleanValue() ? ILivePlayer.RETRY_TIME_INTERVAL_DEFAULT : 300000L;
                daeVar.removeMessages(12);
                Iterator it = concurrentHashMap.keySet().iterator();
                while (it.hasNext()) {
                    daeVar.sendMessageDelayed(daeVar.obtainMessage(12, (dzu) it.next()), this.m);
                }
                return true;
            case 2:
                throw awf.j(message.obj);
            case 3:
                for (fbd fbdVar2 : concurrentHashMap.values()) {
                    ckd.x(fbdVar2.m.q);
                    fbdVar2.f16506f = null;
                    fbdVar2.z();
                }
                return true;
            case 4:
            case 8:
            case 13:
                clf clfVar = (clf) message.obj;
                bxx bxxVar = clfVar.f13060c;
                fdb fdbVar = clfVar.f13058a;
                fbd fbdVar3 = (fbd) concurrentHashMap.get(bxxVar.f12420f);
                if (fbdVar3 == null) {
                    fbdVar3 = u(clfVar.f13060c);
                }
                if (!fbdVar3.l.requiresSignIn() || this.n.get() == clfVar.f13059b) {
                    fbdVar3.p(fdbVar);
                    return true;
                }
                fdbVar.h(f15289b);
                fbdVar3.q();
                return true;
            case 5:
                int i4 = message.arg1;
                nk nkVar = (nk) message.obj;
                Iterator it2 = concurrentHashMap.values().iterator();
                while (true) {
                    if (it2.hasNext()) {
                        fbd fbdVar4 = (fbd) it2.next();
                        if (fbdVar4.f16502b == i4) {
                            fbdVar = fbdVar4;
                        }
                    }
                }
                if (fbdVar == null) {
                    Log.wtf("GoogleApiManager", awf.b(i4, "Could not find API instance ", " while trying to fail enqueued calls."), new Exception());
                    return true;
                }
                if (nkVar.getErrorCode() != 13) {
                    fbdVar.y(t(fbdVar.f16504d, nkVar));
                    return true;
                }
                int errorCode = nkVar.getErrorCode();
                this.r.getClass();
                AtomicBoolean atomicBoolean = evp.f16244c;
                fbdVar.y(new Status(17, awf.t("Error resolution was canceled by the user, original error message: ", nk.zza(errorCode), ": ", nkVar.getErrorMessage())));
                return true;
            case 6:
                if (context.getApplicationContext() instanceof Application) {
                    cwv.f((Application) context.getApplicationContext());
                    cwv cwvVar = cwv.f13652a;
                    cwvVar.g(new efy(this));
                    AtomicBoolean atomicBoolean2 = cwvVar.f13655d;
                    AtomicBoolean atomicBoolean3 = cwvVar.f13656e;
                    if (!atomicBoolean3.get()) {
                        ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
                        ActivityManager.getMyMemoryState(runningAppProcessInfo);
                        if (!atomicBoolean3.getAndSet(true) && runningAppProcessInfo.importance > 100) {
                            atomicBoolean2.set(true);
                        }
                    }
                    if (!atomicBoolean2.get()) {
                        this.m = 300000L;
                        return true;
                    }
                }
                return true;
            case 7:
                u((bxx) message.obj);
                return true;
            case 9:
                if (concurrentHashMap.containsKey(message.obj)) {
                    fbd fbdVar5 = (fbd) concurrentHashMap.get(message.obj);
                    ckd.x(fbdVar5.m.q);
                    if (fbdVar5.k) {
                        fbdVar5.z();
                        return true;
                    }
                }
                return true;
            case 10:
                glm glmVar = this.i;
                glmVar.getClass();
                hx hxVar = new hx(glmVar);
                while (hxVar.hasNext()) {
                    fbd fbdVar6 = (fbd) concurrentHashMap.remove((dzu) hxVar.next());
                    if (fbdVar6 != null) {
                        fbdVar6.q();
                    }
                }
                glmVar.clear();
                return true;
            case 11:
                if (concurrentHashMap.containsKey(message.obj)) {
                    fbd fbdVar7 = (fbd) concurrentHashMap.get(message.obj);
                    ecd ecdVar = fbdVar7.m;
                    ckd.x(ecdVar.q);
                    boolean z = fbdVar7.k;
                    if (z) {
                        dzu dzuVar = fbdVar7.f16504d;
                        dae daeVar2 = fbdVar7.m.q;
                        if (z) {
                            daeVar2.removeMessages(11, dzuVar);
                            daeVar2.removeMessages(9, dzuVar);
                            fbdVar7.k = false;
                        }
                        fbdVar7.y(ecdVar.r.l(ecdVar.l, gna.h) == 18 ? new Status(21, "Connection timed out waiting for Google Play services update to complete.") : new Status(22, "API failed to connect while resuming due to an unknown error."));
                        fbdVar7.l.disconnect("Timing out connection while resuming.");
                        return true;
                    }
                }
                return true;
            case 12:
                if (concurrentHashMap.containsKey(message.obj)) {
                    fbd fbdVar8 = (fbd) concurrentHashMap.get(message.obj);
                    ckd.x(fbdVar8.m.q);
                    cqh cqhVar = fbdVar8.l;
                    if (cqhVar.isConnected() && fbdVar8.n.isEmpty()) {
                        clx clxVar = fbdVar8.f16507g;
                        if (((Map) clxVar.f13103e).isEmpty() && ((Map) clxVar.f13101c).isEmpty()) {
                            cqhVar.disconnect("Timing out service connection.");
                            return true;
                        }
                        fbdVar8.ab();
                    }
                    return true;
                }
                return true;
            case 14:
                throw awf.j(message.obj);
            case 15:
                ccg ccgVar = (ccg) message.obj;
                if (concurrentHashMap.containsKey(ccgVar.f12628a)) {
                    fbd fbdVar9 = (fbd) concurrentHashMap.get(ccgVar.f12628a);
                    if (fbdVar9.f16503c.contains(ccgVar) && !fbdVar9.k) {
                        if (fbdVar9.l.isConnected()) {
                            fbdVar9.r();
                            return true;
                        }
                        fbdVar9.z();
                        return true;
                    }
                }
                return true;
            case 16:
                ccg ccgVar2 = (ccg) message.obj;
                if (concurrentHashMap.containsKey(ccgVar2.f12628a)) {
                    fbd fbdVar10 = (fbd) concurrentHashMap.get(ccgVar2.f12628a);
                    ArrayList arrayList = fbdVar10.f16503c;
                    dae daeVar3 = fbdVar10.m.q;
                    LinkedList<alm> linkedList = fbdVar10.i;
                    if (arrayList.remove(ccgVar2)) {
                        daeVar3.removeMessages(15, ccgVar2);
                        daeVar3.removeMessages(16, ccgVar2);
                        cqg cqgVar = ccgVar2.f12629b;
                        ArrayList arrayList2 = new ArrayList(linkedList.size());
                        for (alm almVar : linkedList) {
                            if (almVar != null && (g2 = almVar.g(fbdVar10)) != null) {
                                int length = g2.length;
                                int i5 = 0;
                                while (true) {
                                    if (i5 >= length) {
                                        break;
                                    }
                                    if (!ffb.w(g2[i5], cqgVar)) {
                                        i5++;
                                    } else if (i5 >= 0) {
                                        arrayList2.add(almVar);
                                    }
                                }
                            }
                        }
                        int size = arrayList2.size();
                        for (int i6 = 0; i6 < size; i6++) {
                            alm almVar2 = (alm) arrayList2.get(i6);
                            linkedList.remove(almVar2);
                            almVar2.c(new dkf(cqgVar));
                        }
                    }
                }
                return true;
            case 17:
                axe axeVar = this.h;
                if (axeVar != null) {
                    if (axeVar.zaa() > 0 || v()) {
                        if (this.k == null) {
                            this.k = new boe(context, akjVar, gjaVar, cqe.f13330a);
                        }
                        boe boeVar = this.k;
                        boeVar.getClass();
                        cpq cpqVar = new cpq(i3);
                        cpqVar.f13287e = true;
                        cpqVar.f13286d = 0;
                        cqg[] cqgVarArr = {fkh.f16919a};
                        cpqVar.f13284b = cqgVarArr;
                        cpqVar.f13287e = false;
                        cpqVar.f13283a = new fnq(i2, axeVar);
                        boeVar.k(2, new cpq(cpqVar, cqgVarArr, false, 0));
                    }
                    this.h = null;
                    return true;
                }
                return true;
            case 18:
                bkf bkfVar = (bkf) message.obj;
                long j = bkfVar.f11731d;
                brg brgVar = bkfVar.f11729b;
                int i7 = bkfVar.f11730c;
                if (j == 0) {
                    axe axeVar2 = new axe(i7, Arrays.asList(brgVar));
                    if (this.k == null) {
                        this.k = new boe(context, akjVar, gjaVar, cqe.f13330a);
                    }
                    boe boeVar2 = this.k;
                    boeVar2.getClass();
                    cpq cpqVar2 = new cpq(i3);
                    cpqVar2.f13287e = true;
                    cpqVar2.f13286d = 0;
                    cqg[] cqgVarArr2 = {fkh.f16919a};
                    cpqVar2.f13284b = cqgVarArr2;
                    cpqVar2.f13287e = false;
                    cpqVar2.f13283a = new fnq(i2, axeVar2);
                    boeVar2.k(2, new cpq(cpqVar2, cqgVarArr2, false, 0));
                    return true;
                }
                axe axeVar3 = this.h;
                if (axeVar3 != null) {
                    List zab = axeVar3.zab();
                    if (axeVar3.zaa() != i7 || (zab != null && zab.size() >= bkfVar.f11728a)) {
                        daeVar.removeMessages(17);
                        axe axeVar4 = this.h;
                        if (axeVar4 != null) {
                            if (axeVar4.zaa() > 0 || v()) {
                                if (this.k == null) {
                                    this.k = new boe(context, akjVar, gjaVar, cqe.f13330a);
                                }
                                boe boeVar3 = this.k;
                                boeVar3.getClass();
                                cpq cpqVar3 = new cpq(i3);
                                cpqVar3.f13287e = true;
                                cpqVar3.f13286d = 0;
                                cqg[] cqgVarArr3 = {fkh.f16919a};
                                cpqVar3.f13284b = cqgVarArr3;
                                cpqVar3.f13287e = false;
                                cpqVar3.f13283a = new fnq(i2, axeVar4);
                                boeVar3.k(2, new cpq(cpqVar3, cqgVarArr3, false, 0));
                            }
                            this.h = null;
                        }
                    } else {
                        this.h.zac(brgVar);
                    }
                }
                if (this.h == null) {
                    ArrayList arrayList3 = new ArrayList();
                    arrayList3.add(brgVar);
                    this.h = new axe(i7, arrayList3);
                    daeVar.sendMessageDelayed(daeVar.obtainMessage(17), bkfVar.f11731d);
                    return true;
                }
                return true;
            case 19:
                this.o = false;
                return true;
            default:
                return false;
        }
    }

    public final fbd u(bxx bxxVar) {
        dzu dzuVar = bxxVar.f12420f;
        ConcurrentHashMap concurrentHashMap = this.f15294g;
        fbd fbdVar = (fbd) concurrentHashMap.get(dzuVar);
        if (fbdVar == null) {
            fbdVar = new fbd(this, bxxVar);
            concurrentHashMap.put(dzuVar, fbdVar);
        }
        if (fbdVar.l.requiresSignIn()) {
            this.i.add(dzuVar);
        }
        fbdVar.z();
        return fbdVar;
    }

    public final boolean v() {
        if (this.o) {
            return false;
        }
        fzo fzoVar = cbn.d().f12599c;
        if (fzoVar != null && !fzoVar.getMethodInvocationTelemetryEnabled()) {
            return false;
        }
        int i = ((SparseIntArray) this.f15293f.f16634c).get(203400000, -1);
        return i == -1 || i == 0;
    }

    public final void w(nk nkVar, int i) {
        if (x(nkVar, i)) {
            return;
        }
        dae daeVar = this.q;
        daeVar.sendMessage(daeVar.obtainMessage(5, i, 0, nkVar));
    }

    public final boolean x(nk nkVar, int i) {
        PendingIntent activity;
        awe aweVar = this.r;
        aweVar.getClass();
        Context context = this.l;
        if (!ckd.bd(context)) {
            if (nkVar.hasResolution()) {
                activity = nkVar.getResolution();
            } else {
                Intent k = aweVar.k(context, nkVar.getErrorCode(), null);
                activity = k == null ? null : PendingIntent.getActivity(context, 0, k, dr.f14661a | 134217728);
            }
            if (activity != null) {
                int errorCode = nkVar.getErrorCode();
                int i2 = GoogleApiActivity.f3927a;
                Intent intent = new Intent(context, (Class<?>) GoogleApiActivity.class);
                intent.putExtra("pending_intent", activity);
                intent.putExtra("failing_client_id", i);
                intent.putExtra("notify_manager", true);
                aweVar.g(context, errorCode, PendingIntent.getActivity(context, 0, intent, alo.f10445a | 134217728));
                return true;
            }
        }
        return false;
    }
}
