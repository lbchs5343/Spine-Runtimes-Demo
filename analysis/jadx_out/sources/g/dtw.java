package g;

import android.content.Context;
import android.text.TextUtils;
import cn.trinea.android.developertools.R;
import g.fxe;
import java.io.File;
import java.util.ArrayList;

/* loaded from: classes.dex */
public abstract class dtw {

    /* renamed from: a, reason: collision with root package name */
    public static daw f14801a;

    public static fys b(Context context) {
        long j;
        String str;
        String str2;
        long j2;
        String str3;
        fxe p = atf.g(context).p();
        String str4 = null;
        fxe.d dVar = p == null ? null : p.net;
        if (dVar != null) {
            str4 = dVar.cacheFileName;
            j = dVar.cacheSize;
            str = dVar.ua;
            str2 = acw.al(context, dVar.uaSuffix, context.getString(R.string.app_name_ua));
            j2 = dVar.outLineMaxStale;
        } else {
            j = -1;
            str = null;
            str2 = null;
            j2 = -1;
        }
        if (TextUtils.isEmpty(str4)) {
            str4 = "kkcache";
        }
        if (j < 0) {
            j = 10000000;
        }
        if (TextUtils.isEmpty(str)) {
            try {
                str = acw.an(context);
            } catch (Exception unused) {
            }
        }
        gez e2 = hca.e(context);
        if (e2 == null) {
            e2 = new gez(false);
        }
        StringBuilder sb = new StringBuilder();
        str3 = "";
        if (str == null) {
            str = "";
        }
        sb.append(str);
        if (str2 != null) {
            StringBuilder l = tn.l(str2, " it/");
            String[] strArr = (String[]) e2.f18008e;
            l.append(strArr != null ? TextUtils.join(",", strArr) : "");
            str3 = l.toString();
        }
        sb.append(str3);
        String sb2 = sb.toString();
        fvd fvdVar = new fvd(new File(context.getCacheDir(), str4), j);
        bsd bsdVar = new bsd(context, sb2, j2);
        gjb gjbVar = new gjb();
        gjbVar.f18232b = fvdVar;
        gjbVar.s.add(bsdVar);
        return new fys(gjbVar);
    }

    public static daw c(Context context) {
        if (f14801a == null) {
            synchronized (dtw.class) {
                try {
                    if (f14801a == null) {
                        dpa dpaVar = new dpa(4);
                        dpaVar.o((cro.an(context, "config_https", true) ? "https://" : "http://").concat("app.codekk.com/"));
                        dpaVar.f14569g = b(context);
                        ((ArrayList) dpaVar.f14567e).add(new bdx());
                        f14801a = dpaVar.s();
                    }
                } finally {
                }
            }
        }
        return f14801a;
    }
}
