package g;

import android.content.Context;
import android.text.TextUtils;
import cn.trinea.android.developertools.R;
import g.fxe;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

/* loaded from: classes.dex */
public final class atf {

    /* renamed from: a, reason: collision with root package name */
    public static volatile long f10794a;

    /* renamed from: b, reason: collision with root package name */
    public static volatile long f10795b;

    /* renamed from: c, reason: collision with root package name */
    public static fxe f10796c;

    /* renamed from: d, reason: collision with root package name */
    public static atf f10797d;

    /* renamed from: e, reason: collision with root package name */
    public Context f10798e;

    public static boolean f(Context context) {
        if (f10794a <= 0) {
            f10794a = cro.ae(context, "config_last_update", -1L);
        }
        if (f10795b <= 0) {
            f10795b = cro.ae(context, "config_last_success_update", -1L);
        }
        long longValue = acw.k(context, "config_request_interval", 0L).longValue();
        if (longValue < 600 || longValue > 172800) {
            longValue = 21600;
        }
        return System.currentTimeMillis() - f10794a >= longValue * 1000;
    }

    public static atf g(Context context) {
        if (f10797d == null) {
            synchronized (atf.class) {
                try {
                    if (f10797d == null) {
                        Context d2 = fgj.d(context);
                        atf atfVar = new atf();
                        atfVar.f10798e = fgj.d(d2);
                        f10797d = atfVar;
                    }
                } finally {
                }
            }
        }
        if (f(context)) {
            synchronized (atf.class) {
                try {
                    if (f(context)) {
                        long currentTimeMillis = System.currentTimeMillis();
                        f10794a = currentTimeMillis;
                        acw.s(context, "config_last_update", currentTimeMillis);
                        f10797d.k();
                    }
                } finally {
                }
            }
        }
        return f10797d;
    }

    public final boolean h(fxe.e eVar) {
        if (!eVar.isShowAd) {
            return false;
        }
        if (eVar.isOnlyZHCN) {
            return cux.aj(this.f10798e);
        }
        return true;
    }

    public final boolean i() {
        fxe.e m = m();
        Context context = this.f10798e;
        return (!(context.getResources().getInteger(R.integer.cchannel) == 2 || context.getResources().getInteger(R.integer.cchannel) == 3) || byh.k) && m != null && m.isShowGoogleAd;
    }

    public final fxe.a j() {
        fxe p = p();
        if (p == null) {
            return null;
        }
        return p.devTools;
    }

    public final void k() {
        Context context = this.f10798e;
        gez e2 = hca.e(context);
        if (e2 == null) {
            e2 = new gez(false);
        }
        fyk fykVar = (fyk) dtw.c(context).r(fyk.class);
        String packageName = context.getPackageName();
        int bj = eyt.bj(context);
        String ab2 = cux.ab(context);
        String[] strArr = (String[]) e2.f18008e;
        fykVar.a(packageName, bj, ab2, strArr == null ? "" : TextUtils.join(",", strArr), dyd.az(context)).d(new gro(this));
    }

    public final fxe.b l() {
        fxe p = p();
        if (p == null) {
            return null;
        }
        return p.donation;
    }

    public final fxe.e m() {
        fxe p = p();
        if (p == null) {
            return null;
        }
        return p.alliance;
    }

    public final int n() {
        fxe.b l = l();
        if (l != null) {
            return l.promotionId;
        }
        return 0;
    }

    public final boolean o() {
        fxe.e m = m();
        return m != null && m.isCooking;
    }

    public final fxe p() {
        if (f10796c == null) {
            synchronized (atf.class) {
                try {
                    if (f10796c == null) {
                        f10796c = q();
                    }
                } finally {
                }
            }
        }
        return f10796c;
    }

    /* JADX WARN: Removed duplicated region for block: B:39:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x003f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final fxe q() {
        fxe fxeVar;
        Context context = this.f10798e;
        int av = cro.av(context, -1, "con_v");
        int integer = context.getResources().getInteger(R.integer.config_version);
        if (av < integer) {
            acw.au(context, "config", "");
            cro.az(context, integer, "con_v");
        }
        String str = null;
        String string = context.getSharedPreferences("TrineaAndroidCommon", 0).getString("config", null);
        if (!TextUtils.isEmpty(string)) {
            try {
                fxeVar = (fxe) ex.f(fxe.class, string);
            } catch (Exception unused) {
            }
            if (fxeVar == null) {
                return fxeVar;
            }
            if (!TextUtils.isEmpty("ac")) {
                StringBuilder sb = new StringBuilder("");
                try {
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(context.getResources().getAssets().open("ac")));
                    while (true) {
                        String readLine = bufferedReader.readLine();
                        if (readLine == null) {
                            break;
                        }
                        sb.append(readLine);
                    }
                    str = sb.toString();
                } catch (IOException e2) {
                    e2.printStackTrace();
                }
            }
            if (TextUtils.isEmpty(str)) {
                return fxeVar;
            }
            if (dyd.az(context) == 1) {
                str = str.replaceAll("(https?://([a-zA-Z0-9.-]+\\.)?)codekk.com", "$1timeshining.com");
            }
            try {
                return (fxe) ex.f(fxe.class, str);
            } catch (AssertionError e3) {
                erl.ac(e3);
                return fxeVar;
            } catch (Exception unused2) {
                return fxeVar;
            }
        }
        fxeVar = null;
        if (fxeVar == null) {
        }
    }
}
