package g;

import android.animation.ValueAnimator;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.os.Handler;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import android.view.MotionEvent;
import android.view.animation.AnimationUtils;
import android.view.inputmethod.InputMethodManager;
import androidx.appcompat.widget.SearchView$SearchAutoComplete;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import cn.trinea.android.developertools.R;
import cn.trinea.android.lib.view.developer.DeveloperOptionsGuideActivity;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import java.util.logging.Level;
import org.json.JSONArray;

/* loaded from: classes.dex */
public final class byd implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f12433a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f12434b;

    public /* synthetic */ byd(int i, Object obj) {
        this.f12433a = i;
        this.f12434b = obj;
    }

    private final void d() {
        Object obj;
        synchronized (((androidx.lifecycle.a) this.f12434b).f242e) {
            obj = ((androidx.lifecycle.a) this.f12434b).f243f;
            ((androidx.lifecycle.a) this.f12434b).f243f = androidx.lifecycle.a.f238a;
        }
        ((androidx.lifecycle.a) this.f12434b).q(obj);
    }

    private final void e() {
        fyg n;
        long j;
        while (true) {
            amr amrVar = (amr) this.f12434b;
            synchronized (amrVar) {
                n = amrVar.n();
            }
            if (n == null) {
                return;
            }
            gfw gfwVar = n.i;
            bff.d(gfwVar);
            amr amrVar2 = (amr) this.f12434b;
            boolean isLoggable = amr.f10486b.isLoggable(Level.FINE);
            if (isLoggable) {
                j = System.nanoTime();
                egh.aa(n, gfwVar, "starting");
            } else {
                j = -1;
            }
            try {
                amr.j(amrVar2, n);
                if (isLoggable) {
                    egh.aa(n, gfwVar, "finished run in ".concat(egh.x(System.nanoTime() - j)));
                }
            } finally {
            }
        }
    }

    public dra c() {
        dbe dbeVar = (dbe) this.f12434b;
        dra draVar = new dra();
        Cursor ag = dbeVar.f13914g.ag(new abq("SELECT * FROM room_table_modification_log WHERE invalidated = 1;", 1));
        while (ag.moveToNext()) {
            try {
                draVar.add(Integer.valueOf(ag.getInt(0)));
            } finally {
            }
        }
        ag.close();
        dra c2 = draVar.c();
        if (c2.isEmpty()) {
            return c2;
        }
        if (((dbe) this.f12434b).f13909b == null) {
            throw new IllegalStateException("Required value was null.");
        }
        cap capVar = ((dbe) this.f12434b).f13909b;
        if (capVar == null) {
            throw new IllegalArgumentException("Required value was null.");
        }
        capVar.h();
        return c2;
    }

    /* JADX WARN: Removed duplicated region for block: B:54:0x0131  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0147  */
    /* JADX WARN: Removed duplicated region for block: B:64:? A[RETURN, SYNTHETIC] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void run() {
        boolean z;
        Handler handler;
        DialogInterface.OnDismissListener onDismissListener;
        Dialog dialog;
        Set set;
        int i;
        int i2;
        int i3;
        String str;
        bdg bdgVar;
        bdg bdgVar2;
        String str2;
        JSONArray jSONArray;
        JSONArray jSONArray2;
        JSONArray jSONArray3;
        int i4;
        int i5;
        fis fisVar;
        int i6;
        Context context;
        int unused;
        int unused2;
        int unused3;
        int unused4;
        int unused5;
        int i7 = 2;
        switch (this.f12433a) {
            case 0:
                fbo fboVar = (fbo) this.f12434b;
                bgv bgvVar = fboVar.f16528g;
                ftj ftjVar = fboVar.l;
                if (fboVar.f16526e) {
                    if (fboVar.q) {
                        fboVar.q = false;
                        long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
                        ftjVar.f17380c = currentAnimationTimeMillis;
                        ftjVar.i = -1L;
                        ftjVar.f17382e = currentAnimationTimeMillis;
                        ftjVar.f17378a = 0.5f;
                    }
                    if ((ftjVar.i > 0 && AnimationUtils.currentAnimationTimeMillis() > ftjVar.i + ftjVar.f17383f) || !fboVar.u()) {
                        fboVar.f16526e = false;
                        return;
                    }
                    if (fboVar.o) {
                        fboVar.o = false;
                        long uptimeMillis = SystemClock.uptimeMillis();
                        MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 0);
                        bgvVar.onTouchEvent(obtain);
                        obtain.recycle();
                    }
                    if (ftjVar.f17382e == 0) {
                        throw new RuntimeException("Cannot compute scroll delta before calling start()");
                    }
                    long currentAnimationTimeMillis2 = AnimationUtils.currentAnimationTimeMillis();
                    float j = ftjVar.j(currentAnimationTimeMillis2);
                    long j2 = currentAnimationTimeMillis2 - ftjVar.f17382e;
                    ftjVar.f17382e = currentAnimationTimeMillis2;
                    fboVar.p.scrollListBy((int) (j2 * ((j * 4.0f) + ((-4.0f) * j * j)) * ftjVar.f17379b));
                    WeakHashMap weakHashMap = goi.f18490c;
                    bgvVar.postOnAnimation(this);
                    return;
                }
                return;
            case 1:
                gdc gdcVar = (gdc) ((cc) this.f12434b).f12621b;
                if (bfc.ac(gdcVar.f17918b)) {
                    gdcVar.f17918b.h("android.settings.action.MANAGE_OVERLAY_PERMISSION");
                    return;
                } else {
                    gdcVar.f17918b.onDenied("android.settings.action.MANAGE_OVERLAY_PERMISSION");
                    return;
                }
            case 2:
                cpq cpqVar = (cpq) this.f12434b;
                cpqVar.f13287e = false;
                BottomSheetBehavior bottomSheetBehavior = (BottomSheetBehavior) cpqVar.f13284b;
                dfv dfvVar = bottomSheetBehavior.bh;
                if (dfvVar != null && dfvVar.ae()) {
                    cpqVar.g(cpqVar.f13286d);
                    return;
                } else {
                    if (bottomSheetBehavior.w == 2) {
                        bottomSheetBehavior.cd(cpqVar.f13286d);
                        return;
                    }
                    return;
                }
            case 3:
                try {
                    super/*android.app.Activity*/.onBackPressed();
                    return;
                } catch (IllegalStateException e2) {
                    if (!TextUtils.equals(e2.getMessage(), "Can not perform this action after onSaveInstanceState")) {
                        throw e2;
                    }
                    return;
                } catch (NullPointerException e3) {
                    if (!TextUtils.equals(e3.getMessage(), "Attempt to invoke virtual method 'android.os.Handler android.app.FragmentHostCallback.getHandler()' on a null object reference")) {
                        throw e3;
                    }
                    return;
                }
            case 4:
                bfp bfpVar = (bfp) this.f12434b;
                bfpVar.f11459c.endViewTransition(bfpVar.f11460d);
                bfpVar.f11457a.g();
                return;
            case 5:
                hbv.c(4, (ArrayList) this.f12434b);
                return;
            case 6:
                cf cfVar = (cf) this.f12434b;
                if (cfVar.j) {
                    cfVar.k(true);
                    if (cfVar.f12772g.f12846a == 7) {
                        return;
                    }
                    cfVar.f12769d.postDelayed(this, 300L);
                    return;
                }
                return;
            case 7:
                DeveloperOptionsGuideActivity developerOptionsGuideActivity = (DeveloperOptionsGuideActivity) this.f12434b;
                z = developerOptionsGuideActivity.waitingForEnable;
                if (!z || developerOptionsGuideActivity.isFinishing()) {
                    return;
                }
                if (!afo.ak(developerOptionsGuideActivity)) {
                    handler = developerOptionsGuideActivity.handler;
                    handler.postDelayed(this, 1000L);
                    return;
                }
                developerOptionsGuideActivity.waitingForEnable = false;
                if (afo.ao(developerOptionsGuideActivity, false)) {
                    gm.c(developerOptionsGuideActivity, R.string.dev_guide_auto_opened);
                    developerOptionsGuideActivity.finish();
                    return;
                }
                return;
            case 8:
                androidx.fragment.app.b bVar = (androidx.fragment.app.b) this.f12434b;
                onDismissListener = bVar.mOnDismissListener;
                dialog = bVar.mDialog;
                onDismissListener.onDismiss(dialog);
                return;
            case 9:
                fam famVar = (fam) this.f12434b;
                famVar.o(true);
                famVar.invalidateSelf();
                return;
            case 10:
                bgv bgvVar2 = (bgv) this.f12434b;
                bgvVar2.f11549e = null;
                bgvVar2.drawableStateChanged();
                return;
            case 11:
                eiu eiuVar = (eiu) this.f12434b;
                ValueAnimator valueAnimator = eiuVar.f15612d;
                int i8 = eiuVar.aa;
                if (i8 == 1) {
                    valueAnimator.cancel();
                } else if (i8 != 2) {
                    return;
                }
                eiuVar.aa = 3;
                valueAnimator.setFloatValues(((Float) valueAnimator.getAnimatedValue()).floatValue(), TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
                valueAnimator.setDuration(500);
                valueAnimator.start();
                return;
            case 12:
                ((dt) this.f12434b).f14753b.f15938e.selectAll();
                return;
            case 13:
                ((androidx.fragment.app.y) this.f12434b).k();
                return;
            case 14:
                ((androidx.fragment.app.v) this.f12434b).ci(true);
                return;
            case 15:
                ((gfg) ((anh) this.f12434b).f10515a).an.setEnabled(true);
                return;
            case 16:
                ReentrantReadWriteLock.ReadLock readLock = ((dbe) this.f12434b).f13914g.aa.readLock();
                bff.e(readLock, "readWriteLock.readLock()");
                readLock.lock();
                try {
                    try {
                        try {
                        } finally {
                            readLock.unlock();
                        }
                    } catch (SQLiteException e4) {
                        Log.e("ROOM", "Cannot run invalidation tracker. Is the db closed?", e4);
                        set = gpk.f18539a;
                    }
                } catch (IllegalStateException e5) {
                    Log.e("ROOM", "Cannot run invalidation tracker. Is the db closed?", e5);
                    set = gpk.f18539a;
                }
                if (((dbe) this.f12434b).p() && ((dbe) this.f12434b).h.compareAndSet(true, false) && !((dbe) this.f12434b).f13914g.ao().i().e()) {
                    crd i9 = ((dbe) this.f12434b).f13914g.ao().i();
                    i9.n();
                    try {
                        set = c();
                        i9.h();
                        if (set.isEmpty()) {
                            return;
                        }
                        dbe dbeVar = (dbe) this.f12434b;
                        synchronized (dbeVar.l) {
                            Iterator it = dbeVar.l.iterator();
                            while (true) {
                                cwl cwlVar = (cwl) it;
                                if (cwlVar.hasNext()) {
                                    ((gyp) ((Map.Entry) cwlVar.next()).getValue()).e(set);
                                }
                            }
                        }
                        return;
                    } finally {
                        i9.g();
                    }
                }
                return;
            case 17:
                azj azjVar = (azj) ((cc) this.f12434b).f12621b;
                baq baqVar = azjVar.f11112b;
                AtomicInteger atomicInteger = baq.f11185e;
                if (!bfc.ac(baqVar.bc)) {
                    fyt.d(azjVar.f11112b.bc, "android.permission.SYSTEM_ALERT_WINDOW");
                    azjVar.f11112b.z();
                    return;
                } else {
                    baq.an(azjVar.f11112b);
                    if (bfc.ac(azjVar.f11112b.bc)) {
                        baq.am(azjVar.f11112b);
                        return;
                    }
                    return;
                }
            case 18:
                baq baqVar2 = (baq) this.f12434b;
                baqVar2.getClass();
                int i10 = bus.f12241a;
                if (cro.an(baqVar2, "shizuku_compatibility_mode_enabled", false) && ark.q(baqVar2).w()) {
                    baqVar2.ab();
                    return;
                } else {
                    if (ern.h(baqVar2, baqVar2.bb)) {
                        baqVar2.ab();
                        return;
                    }
                    return;
                }
            case 19:
                d();
                return;
            case 20:
                gkb gkbVar = (gkb) this.f12434b;
                unused = gkbVar.k;
                unused2 = gkbVar.wp;
                i = gkbVar.k;
                i2 = gkbVar.wp;
                if (i > i2) {
                    gkb.cd(gkbVar);
                    fisVar = gkbVar.le;
                    StringBuilder sb = new StringBuilder();
                    i6 = gkbVar.k;
                    sb.append(i6);
                    fisVar.f16856b = sb.toString();
                    gkbVar.invalidate();
                    gkb.jy(gkbVar);
                    return;
                }
                i3 = gkbVar.f18302e;
                if (i3 >= 0) {
                    i4 = gkbVar.kx;
                    if (i4 >= 0) {
                        unused3 = gkbVar.f18302e;
                        gkbVar.dq();
                        i5 = gkbVar.f18302e;
                        gkbVar.setFrame(i5);
                        gkbVar.dq(new zl(i7, this));
                        str = gkbVar.h;
                        if (TextUtils.isEmpty(str)) {
                            jSONArray2 = gkbVar.ji;
                            if (jSONArray2 == null) {
                                return;
                            }
                            jSONArray3 = gkbVar.ji;
                            if (jSONArray3.length() <= 0) {
                                return;
                            }
                        }
                        bdgVar = gkbVar.n;
                        if (bdgVar == null) {
                            bdgVar2 = gkbVar.n;
                            str2 = gkbVar.h;
                            jSONArray = gkbVar.ji;
                            ((eie) bdgVar2).n(str2, jSONArray);
                            return;
                        }
                        return;
                    }
                }
                unused4 = gkbVar.f18302e;
                unused5 = gkbVar.kx;
                str = gkbVar.h;
                if (TextUtils.isEmpty(str)) {
                }
                bdgVar = gkbVar.n;
                if (bdgVar == null) {
                }
            case 21:
                dj djVar = (dj) this.f12434b;
                c.b.b bVar2 = (c.b.b) djVar.f14262a;
                try {
                    context = bVar2.context;
                    gm.c(context, R.string.op_update_menu_tips);
                    bVar2.f381g.performIdentifierAction(R.id.update_op_group, 0);
                    return;
                } catch (Exception e6) {
                    int i11 = djVar.f14264c;
                    if (i11 > 3) {
                        erl.ac(e6);
                        return;
                    } else {
                        int i12 = c.b.b.f378d;
                        bVar2.z(i11 + 1);
                        return;
                    }
                }
            case 22:
                throw new RuntimeException((Exception) this.f12434b);
            case 23:
                try {
                    ((Runnable) this.f12434b).run();
                    return;
                } catch (Exception e7) {
                    baf.bd("Executor", "Background execution failure.", e7);
                    return;
                }
            case 24:
                SearchView$SearchAutoComplete searchView$SearchAutoComplete = (SearchView$SearchAutoComplete) this.f12434b;
                if (searchView$SearchAutoComplete.f105c) {
                    ((InputMethodManager) searchView$SearchAutoComplete.getContext().getSystemService("input_method")).showSoftInput(searchView$SearchAutoComplete, 0);
                    searchView$SearchAutoComplete.f105c = false;
                    return;
                }
                return;
            case 25:
                ((StaggeredGridLayoutManager) this.f12434b).br();
                return;
            case 26:
                axs axsVar = (axs) this.f12434b;
                if (axsVar.f11040g) {
                    axsVar.c();
                    return;
                }
                return;
            case 27:
                e();
                return;
            case 28:
                ((ms) ((anh) this.f12434b).f10515a).an.setEnabled(true);
                return;
            default:
                fdi fdiVar = (fdi) ((cc) this.f12434b).f12621b;
                edx edxVar = fdiVar.f16607b;
                AtomicInteger atomicInteger2 = edx.f15386e;
                if (!bfc.ac(edxVar.bc)) {
                    fyt.d(fdiVar.f16607b.bc, "android.permission.SYSTEM_ALERT_WINDOW");
                    fdiVar.f16607b.z();
                    return;
                } else {
                    fdiVar.f16607b.an();
                    if (bfc.ac(fdiVar.f16607b.bc)) {
                        fdiVar.f16607b.at();
                        return;
                    }
                    return;
                }
        }
    }
}
