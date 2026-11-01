package g;

import android.text.TextUtils;
import java.text.SimpleDateFormat;
import java.util.HashSet;

/* loaded from: classes.dex */
public final class fyl {

    /* renamed from: a, reason: collision with root package name */
    public static final HashSet f17638a = new HashSet();

    /* renamed from: b, reason: collision with root package name */
    public cdy f17639b;

    /* renamed from: c, reason: collision with root package name */
    public volatile boolean f17640c;

    public static void d(fyl fylVar, cdy cdyVar, vg vgVar, int i) {
        fylVar.getClass();
        if (acw.au(cdyVar, "dpa-ati", "") && acw.au(cdyVar, "dpa-ame", "") && acw.au(cdyVar, "dpa-ack", "")) {
            acw.au(cdyVar, "dpa-ass", "");
        }
        e(vgVar, i, null);
    }

    public static void e(btp btpVar, int i, Throwable th) {
        btpVar.o(i);
        if (i == 1240 || i == 1000 || i == 0 || i == 1102) {
            return;
        }
        erl.ai("vs code is " + i, th);
    }

    public static void f(btp btpVar) {
        f17638a.add("a");
        btpVar.i(null);
    }

    public final boolean g(btp btpVar, boolean z) {
        if (TextUtils.isEmpty("a")) {
            e(btpVar, 1101, null);
            return true;
        }
        if (f17638a.contains("a")) {
            f(btpVar);
            return true;
        }
        if (!z || this.f17640c) {
            return false;
        }
        e(btpVar, 1102, null);
        return true;
    }

    public final void h(String str, btp btpVar) {
        cdy cdyVar = this.f17639b;
        if (g(btpVar, false) || TextUtils.isEmpty(str)) {
            return;
        }
        if (str.length() < 10) {
            e(btpVar, 1303, null);
            return;
        }
        haw hawVar = (haw) dtw.c(cdyVar).r(haw.class);
        String packageName = cdyVar.getPackageName();
        int bj = eyt.bj(cdyVar);
        String ab2 = cux.ab(cdyVar);
        SimpleDateFormat simpleDateFormat = dlb.f14354a;
        hawVar.a(str, packageName, bj, ab2, System.currentTimeMillis()).d(new dzh(this, btpVar, str, 1));
    }
}
