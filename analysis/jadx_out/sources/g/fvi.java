package g;

import android.animation.ValueAnimator;
import android.app.Activity;
import android.app.Application;
import android.content.ServiceConnection;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.Choreographer;
import android.view.View;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.activity.ComponentActivity;
import cn.trinea.android.developertools.R;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.TTFullScreenVideoAd;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.carousel.CarouselLayoutManager;
import com.google.android.material.sidesheet.SideSheetBehavior;
import com.google.android.material.textfield.TextInputLayout;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final /* synthetic */ class fvi implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f17475a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f17476b;

    public /* synthetic */ fvi(int i, Object obj) {
        this.f17475a = i;
        this.f17476b = obj;
    }

    /* JADX WARN: Removed duplicated region for block: B:189:0x03d3  */
    /* JADX WARN: Removed duplicated region for block: B:211:0x0422 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00e3 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:44:? A[LOOP:0: B:23:0x0056->B:44:?, LOOP_END, SYNTHETIC] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void run() {
        Object obj;
        String str;
        long j;
        long j2;
        boolean z;
        boolean z2 = false;
        switch (this.f17475a) {
            case 0:
                Activity activity = (Activity) this.f17476b;
                if (activity.isFinishing()) {
                    return;
                }
                Handler handler = dfz.f14117g;
                Method method = dfz.f14114d;
                int i = Build.VERSION.SDK_INT;
                if (i >= 28) {
                    activity.recreate();
                    return;
                }
                if (((i != 26 && i != 27) || method != null) && (dfz.f14112b != null || dfz.f14111a != null)) {
                    try {
                        Object obj2 = dfz.f14116f.get(activity);
                        if (obj2 != null && (obj = dfz.f14115e.get(activity)) != null) {
                            Application application = activity.getApplication();
                            frw frwVar = new frw(activity);
                            application.registerActivityLifecycleCallbacks(frwVar);
                            handler.post(new gfh(frwVar, 5, obj2));
                            boolean z3 = i == 26 || i == 27;
                            int i2 = 6;
                            try {
                                if (z3) {
                                    Boolean bool = Boolean.FALSE;
                                    method.invoke(obj, obj2, null, null, 0, bool, null, null, bool, bool);
                                } else {
                                    activity.recreate();
                                }
                                handler.post(new gfh(application, i2, frwVar));
                                return;
                            } catch (Throwable th) {
                                handler.post(new gfh(application, i2, frwVar));
                                throw th;
                            }
                        }
                    } catch (Throwable unused) {
                    }
                }
                activity.recreate();
                return;
            case 1:
                eku ekuVar = (eku) this.f17476b;
                boolean z4 = eku.f15714e;
                TTFullScreenVideoAd tTFullScreenVideoAd = ekuVar.j;
                if (tTFullScreenVideoAd != null) {
                    if (tTFullScreenVideoAd.getMediationManager() != null) {
                        ekuVar.j.getMediationManager().destroy();
                    }
                    str = null;
                    ekuVar.j = null;
                } else {
                    str = null;
                }
                if (TextUtils.isEmpty(ekuVar.n)) {
                    return;
                }
                ekuVar.r(str, ekuVar.n);
                return;
            case 2:
                cpp cppVar = (cpp) ((cpp) this.f17476b).h.f15585g;
                long uptimeMillis = SystemClock.uptimeMillis();
                ArrayList arrayList = cppVar.f13282g;
                long uptimeMillis2 = SystemClock.uptimeMillis();
                int i3 = 0;
                while (i3 < arrayList.size()) {
                    eov eovVar = (eov) arrayList.get(i3);
                    if (eovVar != null) {
                        bcp bcpVar = cppVar.f13280e;
                        Long l = (Long) bcpVar.get(eovVar);
                        if (l != null) {
                            if (l.longValue() < uptimeMillis2) {
                                bcpVar.remove(eovVar);
                            }
                        }
                        long j3 = eovVar.s;
                        if (j3 == 0) {
                            eovVar.s = uptimeMillis;
                            eovVar.w(eovVar.p);
                        } else {
                            long j4 = uptimeMillis - j3;
                            eovVar.s = uptimeMillis;
                            float f2 = eov.t().i;
                            long j5 = f2 == TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT ? 2147483647L : (long) (j4 / f2);
                            if (eovVar.n) {
                                float f3 = eovVar.j;
                                if (f3 != Float.MAX_VALUE) {
                                    j = uptimeMillis;
                                    eovVar.h.f12755f = f3;
                                    eovVar.j = Float.MAX_VALUE;
                                } else {
                                    j = uptimeMillis;
                                }
                                eovVar.p = (float) eovVar.h.f12755f;
                                eovVar.l = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                                eovVar.n = z2;
                                j2 = uptimeMillis2;
                            } else {
                                j = uptimeMillis;
                                if (eovVar.j != Float.MAX_VALUE) {
                                    long j6 = j5 / 2;
                                    akp m = eovVar.h.m(eovVar.p, eovVar.l, j6);
                                    ceq ceqVar = eovVar.h;
                                    ceqVar.f12755f = eovVar.j;
                                    eovVar.j = Float.MAX_VALUE;
                                    akp m2 = ceqVar.m(m.f10398a, m.f10399b, j6);
                                    eovVar.p = m2.f10398a;
                                    eovVar.l = m2.f10399b;
                                } else {
                                    akp m3 = eovVar.h.m(eovVar.p, eovVar.l, j5);
                                    eovVar.p = m3.f10398a;
                                    eovVar.l = m3.f10399b;
                                }
                                float max = Math.max(eovVar.p, -3.4028235E38f);
                                eovVar.p = max;
                                eovVar.p = Math.min(max, Float.MAX_VALUE);
                                float f4 = eovVar.l;
                                ceq ceqVar2 = eovVar.h;
                                ceqVar2.getClass();
                                j2 = uptimeMillis2;
                                if (Math.abs(f4) >= ceqVar2.f12752c || Math.abs(r3 - ((float) ceqVar2.f12755f)) >= ceqVar2.f12751b) {
                                    z = false;
                                    float min = Math.min(eovVar.p, Float.MAX_VALUE);
                                    eovVar.p = min;
                                    float max2 = Math.max(min, -3.4028235E38f);
                                    eovVar.p = max2;
                                    eovVar.w(max2);
                                    if (z) {
                                        continue;
                                    } else {
                                        ArrayList arrayList2 = eovVar.o;
                                        eovVar.m = false;
                                        cpp t = eov.t();
                                        t.f13280e.remove(eovVar);
                                        ArrayList arrayList3 = t.f13282g;
                                        int indexOf = arrayList3.indexOf(eovVar);
                                        if (indexOf >= 0) {
                                            arrayList3.set(indexOf, null);
                                            t.f13281f = true;
                                        }
                                        eovVar.s = 0L;
                                        eovVar.r = false;
                                        for (int i4 = 0; i4 < arrayList2.size(); i4++) {
                                            if (arrayList2.get(i4) != null) {
                                                throw tn.w(i4, arrayList2);
                                            }
                                        }
                                        for (int size = arrayList2.size() - 1; size >= 0; size--) {
                                            if (arrayList2.get(size) == null) {
                                                arrayList2.remove(size);
                                            }
                                        }
                                    }
                                    i3++;
                                    uptimeMillis2 = j2;
                                    uptimeMillis = j;
                                    z2 = false;
                                } else {
                                    eovVar.p = (float) eovVar.h.f12755f;
                                    eovVar.l = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                                }
                            }
                            z = true;
                            float min2 = Math.min(eovVar.p, Float.MAX_VALUE);
                            eovVar.p = min2;
                            float max22 = Math.max(min2, -3.4028235E38f);
                            eovVar.p = max22;
                            eovVar.w(max22);
                            if (z) {
                            }
                            i3++;
                            uptimeMillis2 = j2;
                            uptimeMillis = j;
                            z2 = false;
                        }
                    }
                    j = uptimeMillis;
                    j2 = uptimeMillis2;
                    i3++;
                    uptimeMillis2 = j2;
                    uptimeMillis = j;
                    z2 = false;
                }
                if (cppVar.f13281f) {
                    for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
                        if (arrayList.get(size2) == null) {
                            arrayList.remove(size2);
                        }
                    }
                    if (arrayList.size() == 0 && Build.VERSION.SDK_INT >= 33) {
                        gtb gtbVar = cppVar.f13277b;
                        ValueAnimator.unregisterDurationScaleChangeListener((cji) gtbVar.f18714d);
                        gtbVar.f18714d = null;
                    }
                    cppVar.f13281f = false;
                }
                if (arrayList.size() > 0) {
                    ((Choreographer) cppVar.f13279d.f16634c).postFrameCallback(new fie(cppVar.f13278c));
                    return;
                }
                return;
            case 3:
                ((ebw) this.f17476b).j();
                return;
            case 4:
                atk atkVar = (atk) this.f17476b;
                hbj hbjVar = atkVar.s;
                eqi eqiVar = atkVar.h;
                if (hbjVar == null) {
                    atkVar.p = null;
                    try {
                        atkVar.s = bwa.g(atkVar.r, atkVar.f10805f);
                    } catch (coz e2) {
                        atkVar.p = e2;
                    }
                }
                hbj hbjVar2 = atkVar.s;
                if (hbjVar2 == null) {
                    if (atkVar.isDestroyed()) {
                        return;
                    }
                    eqiVar.sendMessage(Message.obtain(eqiVar, 2));
                    return;
                } else {
                    atkVar.z = String.valueOf(hbjVar2.l(atkVar.getTitle(), atkVar.o));
                    if (atkVar.isDestroyed()) {
                        return;
                    }
                    eqiVar.sendMessage(Message.obtain(eqiVar, 1));
                    return;
                }
            case 5:
                efx efxVar = (efx) this.f17476b;
                gwf gwfVar = efxVar.au;
                if (gwfVar != null) {
                    gwfVar.l(efxVar.an.getText().toString());
                    return;
                }
                return;
            case 6:
                ((CarouselLayoutManager) this.f17476b).em();
                return;
            case 7:
                ((azm) this.f17476b).r(true);
                return;
            case 8:
                ((ComponentActivity) this.f17476b).invalidateMenu();
                return;
            case 9:
                androidx.activity.a aVar = (androidx.activity.a) this.f17476b;
                Runnable runnable = aVar.f21d;
                if (runnable != null) {
                    runnable.run();
                    aVar.f21d = null;
                    return;
                }
                return;
            case 10:
                btt.h((btt) this.f17476b);
                return;
            case 11:
                yb ybVar = (yb) this.f17476b;
                int i5 = yb.f20327a;
                ybVar.o();
                return;
            case 12:
                fao faoVar = (fao) this.f17476b;
                faoVar.f16476c = false;
                try {
                    faoVar.o();
                    return;
                } catch (Exception e3) {
                    erl.ac(e3);
                    faoVar.t(R.string.error_switch, false);
                    return;
                }
            case 13:
                chp chpVar = (chp) this.f17476b;
                boolean isPopupShowing = chpVar.f12883a.isPopupShowing();
                chpVar.am(isPopupShowing);
                chpVar.i = isPopupShowing;
                return;
            case 14:
                baq baqVar = (baq) this.f17476b;
                if (baqVar.isFinishing() || baqVar.isDestroyed()) {
                    return;
                }
                he z5 = ka.z(true, false);
                baqVar.s = z5;
                ern.f16036b = true;
                if (z5 != null) {
                    new Handler().postDelayed(new gfh(18, baqVar, z5, z2), 200L);
                    return;
                }
                return;
            case 15:
                dta dtaVar = (dta) this.f17476b;
                if (dtaVar != null) {
                    dtaVar._bi(null);
                    return;
                }
                return;
            case 16:
                ((elf) this.f17476b).finish();
                return;
            case 17:
                MaterialButton.af((MaterialButton) this.f17476b);
                return;
            case 18:
                ((wa) this.f17476b).am();
                return;
            case 19:
                ((btk) this.f17476b).b();
                return;
            case 20:
                ((dah) this.f17476b).b();
                return;
            case 21:
                ((gdi) this.f17476b).d("unsupported_tool", null);
                return;
            case 22:
                aco acoVar = (aco) this.f17476b;
                ((ark) acoVar.f9979b).n = null;
                ((ark) acoVar.f9979b).f10714c = false;
                ark arkVar = (ark) acoVar.f9979b;
                arkVar.m.removeCallbacks(arkVar.f10716e);
                ((ark) acoVar.f9979b).y("disconnected", null);
                ((ark) acoVar.f9979b).s();
                return;
            case 23:
                fsr fsrVar = (fsr) this.f17476b;
                HashSet hashSet = fsrVar.f17348e;
                Iterator it = hashSet.iterator();
                while (it.hasNext()) {
                    ((ServiceConnection) it.next()).onServiceDisconnected(fsrVar.f17346b);
                }
                hashSet.clear();
                doo.b(fsrVar);
                return;
            case 24:
                cpq cpqVar = (cpq) this.f17476b;
                cpqVar.f13287e = false;
                SideSheetBehavior sideSheetBehavior = (SideSheetBehavior) cpqVar.f13284b;
                dfv dfvVar = sideSheetBehavior.ac;
                if (dfvVar != null && dfvVar.ae()) {
                    cpqVar.g(cpqVar.f13286d);
                    return;
                } else {
                    if (sideSheetBehavior.f9069b == 2) {
                        sideSheetBehavior.an(cpqVar.f13286d);
                        return;
                    }
                    return;
                }
            case 25:
                fuo fuoVar = (fuo) this.f17476b;
                try {
                    Iterator it2 = fuoVar.f17442e.iterator();
                    while (it2.hasNext()) {
                        ehk ehkVar = (ehk) it2.next();
                        int min3 = Math.min(ehkVar.f15546b.size(), fuoVar.f17444g.get());
                        if (ehkVar.f15545a != cct.SEQUENTIAL && min3 != 1) {
                            String str2 = evh.f16225a;
                            ExecutorService newFixedThreadPool = Executors.newFixedThreadPool(min3, new cjr("task-p"));
                            Iterator it3 = ehkVar.f15546b.iterator();
                            while (it3.hasNext()) {
                                newFixedThreadPool.execute(new dsf(fuoVar, 14, (Runnable) it3.next()));
                            }
                            newFixedThreadPool.shutdown();
                            try {
                            } catch (InterruptedException unused2) {
                                Thread.currentThread().interrupt();
                            }
                            if (!newFixedThreadPool.awaitTermination(10L, TimeUnit.DAYS)) {
                                throw new gck("Executor timeout");
                                break;
                            } else if (!fuoVar.f17441d.get()) {
                                fuoVar.m();
                                return;
                            }
                        }
                        Iterator it4 = ehkVar.f15546b.iterator();
                        while (it4.hasNext()) {
                            fuoVar.j((Runnable) it4.next());
                        }
                        if (!fuoVar.f17441d.get()) {
                        }
                    }
                    fuoVar.m();
                    return;
                } finally {
                    fuoVar.m();
                }
            case 26:
                ((TextInputLayout) this.f17476b).ak.requestLayout();
                return;
            case 27:
                fkn fknVar = (fkn) this.f17476b;
                ((WindowManager) fknVar.f16940d).removeView((View) fknVar.f16937a);
                return;
            case 28:
                gk gkVar = (gk) this.f17476b;
                AccessibilityNodeInfo rootInActiveWindow = gkVar.getRootInActiveWindow();
                if (bli.n == null && rootInActiveWindow != null && "com.android.settings".equals(rootInActiveWindow.getPackageName())) {
                    gkVar.performGlobalAction(1);
                    return;
                }
                return;
            default:
                ((dqe) this.f17476b).ai();
                return;
        }
    }
}
