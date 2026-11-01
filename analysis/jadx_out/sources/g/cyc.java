package g;

import android.net.TrafficStats;
import android.service.quicksettings.TileService;
import android.text.TextUtils;
import android.util.Log;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class cyc implements gle {

    /* renamed from: c, reason: collision with root package name */
    public final ThreadPoolExecutor f13734c;

    /* renamed from: d, reason: collision with root package name */
    public final HashSet f13735d;

    /* renamed from: e, reason: collision with root package name */
    public final ff f13736e;

    /* renamed from: f, reason: collision with root package name */
    public final ArrayList f13737f;

    /* renamed from: g, reason: collision with root package name */
    public final g f13738g;
    public final rm h;
    public final crg i;
    public final ThreadPoolExecutor j;
    public final fmu k;
    public String l;
    public final gtb m;
    public final Object n;

    /* renamed from: b, reason: collision with root package name */
    public static final Object f13733b = new Object();

    /* renamed from: a, reason: collision with root package name */
    public static final dil f13732a = new dil(1);

    public cyc(rm rmVar, boa boaVar) {
        TimeUnit timeUnit = TimeUnit.SECONDS;
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        dil dilVar = f13732a;
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, 30L, timeUnit, linkedBlockingQueue, dilVar);
        rmVar.p();
        fmu fmuVar = new fmu(rmVar.f19913g, boaVar);
        gtb gtbVar = new gtb(9, rmVar);
        if (cfg.f12779f == null) {
            cfg.f12779f = new cfg(12);
        }
        cfg cfgVar = cfg.f12779f;
        if (ff.f16686a == null) {
            ff.f16686a = new ff(cfgVar);
        }
        ff ffVar = ff.f16686a;
        g gVar = new g(rmVar);
        crg crgVar = new crg();
        this.n = new Object();
        this.f13735d = new HashSet();
        this.f13737f = new ArrayList();
        this.h = rmVar;
        this.k = fmuVar;
        this.m = gtbVar;
        this.f13736e = ffVar;
        this.f13738g = gVar;
        this.i = crgVar;
        this.f13734c = threadPoolExecutor;
        this.j = new ThreadPoolExecutor(0, 1, 30L, timeUnit, new LinkedBlockingQueue(), dilVar);
    }

    public static cyc o() {
        rm n = rm.n();
        n.p();
        return (cyc) n.f19911e.b(gle.class);
    }

    public final void p() {
        synchronized (this.n) {
            try {
                Iterator it = this.f13737f.iterator();
                while (it.hasNext()) {
                    ((dyk) it.next()).getClass();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final synchronized void q(fsy fsyVar, fsy fsyVar2) {
        try {
            if (this.f13735d.size() != 0 && !fsyVar.f17357d.equals(fsyVar2.f17357d)) {
                Iterator it = this.f13735d.iterator();
                if (it.hasNext()) {
                    if (it.next() != null) {
                        throw new ClassCastException();
                    }
                    throw null;
                }
            }
        } finally {
        }
    }

    /* JADX WARN: Finally extract failed */
    public final void r(fsy fsyVar) {
        synchronized (f13733b) {
            try {
                rm rmVar = this.h;
                rmVar.p();
                clx f2 = clx.f(rmVar.f19913g);
                try {
                    this.m.u(fsyVar);
                    if (f2 != null) {
                        f2.r();
                    }
                } catch (Throwable th) {
                    if (f2 != null) {
                        f2.r();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final chw s() {
        eeo eeoVar = new eeo();
        dyk dykVar = new dyk(eeoVar);
        synchronized (this.n) {
            this.f13737f.add(dykVar);
        }
        return eeoVar.f15402a;
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x001c, code lost:
    
        if ("[DEFAULT]".equals(r0.j) != false) goto L6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final String t(fsy fsyVar) {
        String f2;
        rm rmVar = this.h;
        rmVar.p();
        if (!rmVar.j.equals("CHIME_ANDROID_SDK")) {
            rm rmVar2 = this.h;
            rmVar2.p();
        }
        if (fsyVar.f17359f == gyk.ATTEMPT_MIGRATION) {
            g gVar = this.f13738g;
            synchronized (gVar.f17767d) {
                try {
                    f2 = gVar.f();
                    if (f2 == null) {
                        f2 = gVar.g();
                    }
                } finally {
                }
            }
            if (!TextUtils.isEmpty(f2)) {
                return f2;
            }
            this.i.getClass();
            return crg.c();
        }
        this.i.getClass();
        return crg.c();
    }

    public final void u(fsy fsyVar) {
        synchronized (this.n) {
            try {
                Iterator it = this.f13737f.iterator();
                while (it.hasNext()) {
                    dyk dykVar = (dyk) it.next();
                    dykVar.getClass();
                    gyk gykVar = fsyVar.f17359f;
                    if (!(gykVar == gyk.UNREGISTERED)) {
                        if (!(gykVar == gyk.REGISTERED)) {
                            if (gykVar == gyk.REGISTER_ERROR) {
                            }
                        }
                    }
                    dykVar.f15091a.c(fsyVar.f17357d);
                    it.remove();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final fsy v(fsy fsyVar) {
        int responseCode;
        elz j;
        rm rmVar = this.h;
        rmVar.p();
        String str = rmVar.k.f17218c;
        String str2 = fsyVar.f17357d;
        rmVar.p();
        String str3 = rmVar.k.f17222g;
        String str4 = fsyVar.f17355b;
        fmu fmuVar = this.k;
        dd ddVar = fmuVar.f17046e;
        if (!ddVar.h()) {
            throw new drg("Firebase Installations Service is unavailable. Please try again later.", ety.UNAVAILABLE);
        }
        URL i = fmu.i("projects/" + str3 + "/installations/" + str2 + "/authTokens:generate");
        for (int i2 = 0; i2 <= 1; i2++) {
            TrafficStats.setThreadStatsTag(32771);
            HttpURLConnection n = fmuVar.n(i, str);
            try {
                try {
                    n.setRequestMethod("POST");
                    n.addRequestProperty("Authorization", "FIS_v2 " + str4);
                    n.setDoOutput(true);
                    fmu.f(n);
                    responseCode = n.getResponseCode();
                    ddVar.f(responseCode);
                } catch (IOException | AssertionError unused) {
                }
                if (responseCode >= 200 && responseCode < 300) {
                    j = fmu.j(n);
                } else {
                    fmu.l(n, null, str, str3);
                    if (responseCode == 401 || responseCode == 404) {
                        dzh d2 = elz.d();
                        d2.f15122g = deh.AUTH_ERROR;
                        j = d2.t();
                    } else {
                        if (responseCode == 429) {
                            throw new drg("Firebase servers have received too many requests from this client in a short period of time. Please try again later.", ety.TOO_MANY_REQUESTS);
                        }
                        if (responseCode < 500 || responseCode >= 600) {
                            Log.e("Firebase-Installations", "Firebase Installations can not communicate with Firebase server APIs due to invalid configuration. Please update your Firebase initialization process and set valid Firebase options (API key, Project ID, Application ID) when initializing Firebase.");
                            dzh d3 = elz.d();
                            d3.f15122g = deh.BAD_CONFIG;
                            j = d3.t();
                        }
                    }
                }
                int i3 = axf.f11019b[j.f15787c.ordinal()];
                if (i3 != 1) {
                    if (i3 == 2) {
                        ph i4 = fsyVar.i();
                        i4.f19815g = "BAD CONFIG";
                        i4.j(gyk.REGISTER_ERROR);
                        return i4.i();
                    }
                    if (i3 != 3) {
                        throw new drg("Firebase Installations Service is unavailable. Please try again later.", ety.UNAVAILABLE);
                    }
                    w(null);
                    ph i5 = fsyVar.i();
                    i5.j(gyk.NOT_GENERATED);
                    return i5.i();
                }
                String str5 = j.f15785a;
                long j2 = j.f15786b;
                ff ffVar = this.f13736e;
                ffVar.getClass();
                TimeUnit timeUnit = TimeUnit.MILLISECONDS;
                ffVar.f16689d.getClass();
                long seconds = timeUnit.toSeconds(System.currentTimeMillis());
                ph i6 = fsyVar.i();
                i6.f19814f = str5;
                i6.f19810b = Long.valueOf(j2);
                i6.f19812d = Long.valueOf(seconds);
                return i6.i();
            } finally {
                n.disconnect();
                TrafficStats.clearThreadStatsTag();
            }
        }
        throw new drg("Firebase Installations Service is unavailable. Please try again later.", ety.UNAVAILABLE);
    }

    public final synchronized void w(String str) {
        this.l = str;
    }

    public final chw x() {
        String str;
        rm rmVar = this.h;
        rmVar.p();
        ckd.j(rmVar.k.f17220e, "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.");
        rm rmVar2 = this.h;
        rmVar2.p();
        ckd.j(rmVar2.k.f17222g, "Please set your Project ID. A valid Firebase Project ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.");
        rm rmVar3 = this.h;
        rmVar3.p();
        ckd.j(rmVar3.k.f17218c, "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options.");
        rm rmVar4 = this.h;
        rmVar4.p();
        String str2 = rmVar4.k.f17220e;
        Pattern pattern = ff.f16688c;
        ckd.ar("Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.", str2.contains(":"));
        rm rmVar5 = this.h;
        rmVar5.p();
        ckd.ar("Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options.", ff.f16688c.matcher(rmVar5.k.f17218c).matches());
        synchronized (this) {
            str = this.l;
        }
        if (str != null) {
            return byh.w(str);
        }
        chw s = s();
        this.f13734c.execute(new gsz(this, 0));
        return s;
    }

    public final fsy y(fsy fsyVar) {
        int responseCode;
        gug h;
        String str = fsyVar.f17357d;
        String str2 = null;
        if (str != null && str.length() == 11) {
            g gVar = this.f13738g;
            synchronized (gVar.f17767d) {
                try {
                    String[] strArr = g.f17765b;
                    int i = 0;
                    while (true) {
                        if (i < 4) {
                            String str3 = strArr[i];
                            String string = gVar.f17767d.getString("|T|" + gVar.f17766c + "|" + str3, null);
                            if (string == null || string.isEmpty()) {
                                i++;
                            } else if (string.startsWith("{")) {
                                try {
                                    str2 = new JSONObject(string).getString(TileService.EXTRA_TOKEN);
                                } catch (JSONException unused) {
                                }
                            } else {
                                str2 = string;
                            }
                        }
                    }
                } finally {
                }
            }
        }
        fmu fmuVar = this.k;
        rm rmVar = this.h;
        rmVar.p();
        String str4 = rmVar.k.f17218c;
        String str5 = fsyVar.f17357d;
        rm rmVar2 = this.h;
        rmVar2.p();
        String str6 = rmVar2.k.f17222g;
        rm rmVar3 = this.h;
        rmVar3.p();
        String str7 = rmVar3.k.f17220e;
        dd ddVar = fmuVar.f17046e;
        if (!ddVar.h()) {
            throw new drg("Firebase Installations Service is unavailable. Please try again later.", ety.UNAVAILABLE);
        }
        URL i2 = fmu.i("projects/" + str6 + "/installations");
        for (int i3 = 0; i3 <= 1; i3++) {
            TrafficStats.setThreadStatsTag(32769);
            HttpURLConnection n = fmuVar.n(i2, str4);
            try {
                try {
                    n.setRequestMethod("POST");
                    n.setDoOutput(true);
                    if (str2 != null) {
                        n.addRequestProperty("x-goog-fis-android-iid-migration-auth", str2);
                    }
                    fmu.m(n, str5, str7);
                    responseCode = n.getResponseCode();
                    ddVar.f(responseCode);
                } catch (IOException | AssertionError unused2) {
                }
                if (responseCode >= 200 && responseCode < 300) {
                    h = fmu.h(n);
                    n.disconnect();
                    TrafficStats.clearThreadStatsTag();
                } else {
                    fmu.l(n, str7, str4, str6);
                    if (responseCode == 429) {
                        throw new drg("Firebase servers have received too many requests from this client in a short period of time. Please try again later.", ety.TOO_MANY_REQUESTS);
                    }
                    if (responseCode < 500 || responseCode >= 600) {
                        Log.e("Firebase-Installations", "Firebase Installations can not communicate with Firebase server APIs due to invalid configuration. Please update your Firebase initialization process and set valid Firebase options (API key, Project ID, Application ID) when initializing Firebase.");
                        gug gugVar = new gug(null, null, null, null, of.BAD_CONFIG);
                        n.disconnect();
                        TrafficStats.clearThreadStatsTag();
                        h = gugVar;
                    }
                    n.disconnect();
                    TrafficStats.clearThreadStatsTag();
                }
                int i4 = axf.f11018a[h.f18770b.ordinal()];
                if (i4 != 1) {
                    if (i4 != 2) {
                        throw new drg("Firebase Installations Service is unavailable. Please try again later.", ety.UNAVAILABLE);
                    }
                    ph i5 = fsyVar.i();
                    i5.f19815g = "BAD CONFIG";
                    i5.j(gyk.REGISTER_ERROR);
                    return i5.i();
                }
                String str8 = h.f18772d;
                String str9 = h.f18773e;
                ff ffVar = this.f13736e;
                ffVar.getClass();
                TimeUnit timeUnit = TimeUnit.MILLISECONDS;
                ffVar.f16689d.getClass();
                long seconds = timeUnit.toSeconds(System.currentTimeMillis());
                elz elzVar = h.f18769a;
                String str10 = elzVar.f15785a;
                long j = elzVar.f15786b;
                ph i6 = fsyVar.i();
                i6.f19811c = str8;
                i6.j(gyk.REGISTERED);
                i6.f19814f = str10;
                i6.f19809a = str9;
                i6.f19810b = Long.valueOf(j);
                i6.f19812d = Long.valueOf(seconds);
                return i6.i();
            } finally {
                n.disconnect();
                TrafficStats.clearThreadStatsTag();
            }
        }
        throw new drg("Firebase Installations Service is unavailable. Please try again later.", ety.UNAVAILABLE);
    }
}
