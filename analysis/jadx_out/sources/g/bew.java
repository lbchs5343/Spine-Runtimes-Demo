package g;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import android.util.Pair;
import android.view.Window;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public abstract class bew {

    /* renamed from: a, reason: collision with root package name */
    public static hdn f11413a;

    /* renamed from: c, reason: collision with root package name */
    public static Context f11415c;

    /* renamed from: d, reason: collision with root package name */
    public static bkq f11416d;

    /* renamed from: e, reason: collision with root package name */
    public static int f11417e;

    /* renamed from: g, reason: collision with root package name */
    public static ParcelFileDescriptor f11419g;
    public static Pair h;
    public static boolean j;
    public static he k;
    public static AtomicBoolean l;

    /* renamed from: f, reason: collision with root package name */
    public static final Handler f11418f = new Handler(Looper.getMainLooper());
    public static final ArrayList i = new ArrayList();

    /* renamed from: b, reason: collision with root package name */
    public static final ArrayList f11414b = new ArrayList();

    public static he m() {
        Context context = f11415c;
        if (context != null && bus.u(context) && ark.q(f11415c).w() && n(k)) {
            return k;
        }
        return null;
    }

    public static boolean n(he heVar) {
        if (heVar == null || TextUtils.isEmpty(heVar.getPackageName()) || ern.i(heVar.getPackageName()) || TextUtils.equals("com.android.systemui", heVar.getPackageName()) || ern.k(heVar.getBoundsInScreen())) {
            return false;
        }
        boolean z = gk.f18292d;
        CharSequence packageName = heVar.getPackageName();
        int windowId = heVar.getWindowId();
        int i2 = dyd.p;
        if (i2 >= 0) {
            return i2 == windowId && TextUtils.equals(dyd.z, packageName);
        }
        return true;
    }

    public static void o() {
        bkq bkqVar = f11416d;
        Handler handler = f11418f;
        if (bkqVar != null) {
            handler.removeCallbacks(bkqVar);
        }
        f11416d = null;
        hdn hdnVar = f11413a;
        if (hdnVar != null) {
            handler.removeCallbacks(hdnVar);
        }
        f11413a = null;
        AtomicBoolean atomicBoolean = l;
        if (atomicBoolean != null) {
            atomicBoolean.set(true);
        }
        l = null;
        ParcelFileDescriptor parcelFileDescriptor = f11419g;
        if (parcelFileDescriptor != null) {
            try {
                parcelFileDescriptor.close();
            } catch (IOException e2) {
                erl.ac(e2);
            }
        }
        f11419g = null;
        ArrayList arrayList = f11414b;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            elb elbVar = (elb) it.next();
            Window window = elbVar.f15739b;
            window.setLayout(elbVar.f15741d, elbVar.f15738a);
            window.clearFlags(elbVar.f15740c);
        }
        arrayList.clear();
    }

    public static void p(Context context, bky bkyVar) {
        Context applicationContext = context.getApplicationContext();
        ark q = ark.q(applicationContext);
        if (!bus.u(applicationContext) || !q.w() || q.ab()) {
            s(context, bkyVar);
        } else {
            q.m.post(new dsf(q, 10, new ki(context, bkyVar, applicationContext)));
        }
    }

    public static void q() {
        k = null;
        f11417e++;
        o();
        h = null;
        ArrayList arrayList = i;
        ArrayList arrayList2 = new ArrayList(arrayList);
        arrayList.clear();
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            ((bky) it.next()).d(null, true);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:49:0x0094, code lost:
    
        if (n(r0) != false) goto L56;
     */
    /* JADX WARN: Removed duplicated region for block: B:34:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00ae A[LOOP:0: B:39:0x00a8->B:41:0x00ae, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void r(he heVar, int i2) {
        boolean z;
        boolean z2;
        Iterator it;
        int i3 = f11417e;
        if (i2 != i3) {
            return;
        }
        f11417e = i3 + 1;
        o();
        if (ern.f16035a) {
            ern.f16040f = null;
        }
        he m = ern.m();
        Context context = f11415c;
        if (context != null) {
            int i4 = bus.f12241a;
            if (cro.an(context, "shizuku_compatibility_mode_enabled", false)) {
                z = true;
                Context context2 = f11415c;
                boolean z3 = !z && (context2 == null && ark.q(context2).w());
                boolean z4 = gk.f18292d;
                Pair pair = (dyd.p >= 0 || !dyd.am(dyd.z)) ? null : new Pair(dyd.z, Integer.valueOf(dyd.p));
                Pair pair2 = h;
                z2 = pair2 != null || pair2.equals(pair);
                if (z2 || !z3 || !n(heVar)) {
                    heVar = null;
                }
                k = heVar;
                if (z2) {
                    if (!n(m) || m.getChildCount() <= 0) {
                        if (n(heVar)) {
                            m = heVar;
                        }
                    }
                    h = null;
                    ArrayList arrayList = i;
                    ArrayList arrayList2 = new ArrayList(arrayList);
                    arrayList.clear();
                    it = arrayList2.iterator();
                    while (it.hasNext()) {
                        ((bky) it.next()).d(m, true);
                    }
                }
                m = null;
                h = null;
                ArrayList arrayList3 = i;
                ArrayList arrayList22 = new ArrayList(arrayList3);
                arrayList3.clear();
                it = arrayList22.iterator();
                while (it.hasNext()) {
                }
            }
        }
        z = false;
        Context context22 = f11415c;
        if (z) {
        }
        boolean z42 = gk.f18292d;
        if (dyd.p >= 0) {
        }
        Pair pair22 = h;
        if (pair22 != null) {
        }
        if (z2) {
        }
        heVar = null;
        k = heVar;
        if (z2) {
        }
        m = null;
        h = null;
        ArrayList arrayList32 = i;
        ArrayList arrayList222 = new ArrayList(arrayList32);
        arrayList32.clear();
        it = arrayList222.iterator();
        while (it.hasNext()) {
        }
    }

    public static void s(Context context, bky bkyVar) {
        if (context instanceof Activity) {
            Activity activity = (Activity) context;
            if (activity.isFinishing() || activity.isDestroyed()) {
                bkyVar.d(null, true);
                return;
            }
        }
        f11415c = context.getApplicationContext();
        boolean z = gk.f18292d;
        Pair pair = (dyd.p < 0 || !dyd.am(dyd.z)) ? null : new Pair(dyd.z, Integer.valueOf(dyd.p));
        boolean z2 = (context instanceof baq) || (context instanceof edx);
        ArrayList arrayList = i;
        if (!arrayList.isEmpty()) {
            Pair pair2 = h;
            if (j != z2 || (pair2 != null ? !pair2.equals(pair) : pair != null)) {
                q();
            }
        }
        if (ern.f16035a) {
            ern.f16040f = null;
        }
        he m = ern.m();
        ark q = ark.q(f11415c);
        boolean z3 = bus.u(f11415c) && q.w();
        if (n(m) && (!z3 || (n(m) && m.getChildCount() != 0))) {
            if (!arrayList.isEmpty()) {
                r(null, f11417e);
            }
            bkyVar.d(m, false);
            return;
        }
        k = null;
        if (!z3) {
            if (!arrayList.isEmpty()) {
                q();
            }
            bkyVar.d(null, false);
            return;
        }
        if (z2) {
            Window window = ((Activity) context).getWindow();
            ArrayList arrayList2 = f11414b;
            Iterator it = arrayList2.iterator();
            while (true) {
                if (!it.hasNext()) {
                    arrayList2.add(new elb(window));
                    break;
                } else if (((elb) it.next()).f15739b == window) {
                    break;
                }
            }
        }
        arrayList.add(bkyVar);
        if (arrayList.size() > 1) {
            return;
        }
        h = pair;
        j = z2;
        int i2 = f11417e + 1;
        f11417e = i2;
        AtomicBoolean atomicBoolean = new AtomicBoolean();
        l = atomicBoolean;
        bkq bkqVar = new bkq(i2, q, pair, z2, atomicBoolean);
        f11416d = bkqVar;
        f11418f.postDelayed(bkqVar, z2 ? 150L : 0L);
    }
}
