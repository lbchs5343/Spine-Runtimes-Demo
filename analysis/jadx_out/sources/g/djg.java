package g;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Pair;
import com.bykv.vk.component.ttvideo.LiveConfigKey;
import java.net.MalformedURLException;
import java.net.URL;

/* loaded from: classes3.dex */
public final /* synthetic */ class djg implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f14272a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ csp f14273b;

    public /* synthetic */ djg(csp cspVar, int i) {
        this.f14272a = i;
        this.f14273b = cspVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:61:0x028e  */
    /* JADX WARN: Removed duplicated region for block: B:63:? A[ADDED_TO_REGION, REMOVE, RETURN, SYNTHETIC] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void run() {
        Pair pair;
        NetworkInfo activeNetworkInfo;
        switch (this.f14272a) {
            case 0:
                csp cspVar = this.f14273b;
                cspVar._e();
                cyg cygVar = (cyg) cspVar.z;
                gmr gmrVar = cygVar.f13744b;
                bgm bgmVar = cygVar.z;
                gmr gmrVar2 = cygVar.f13744b;
                cyg.ai(gmrVar);
                if (gmrVar.t.g()) {
                    cyg.ak(bgmVar);
                    bgmVar.o.h("Deferred Deep Link already retrieved. Not fetching again.");
                    break;
                } else {
                    cyg.ai(gmrVar2);
                    long f2 = gmrVar2.q.f();
                    cyg.ai(gmrVar2);
                    gmrVar2.q.g(1 + f2);
                    if (f2 >= 5) {
                        cyg.ak(bgmVar);
                        bgmVar.f11520g.h("Permanently failed to retrieve Deferred Deep Link. Reached maximum retries.");
                        cyg.ai(gmrVar2);
                        gmrVar2.t.f(true);
                        break;
                    } else {
                        fth fthVar = cygVar.j;
                        cyg.ak(fthVar);
                        fthVar._e();
                        bww bwwVar = cygVar.u;
                        cyg.ak(bwwVar);
                        cyg cygVar2 = (cyg) bwwVar.z;
                        cyg.ak(bwwVar);
                        String x = cygVar.at().x();
                        cyg.ai(gmrVar2);
                        gmrVar2._e();
                        cyg cygVar3 = (cyg) gmrVar2.z;
                        cygVar3.f13743ab.getClass();
                        long elapsedRealtime = SystemClock.elapsedRealtime();
                        String str = gmrVar2.f18412b;
                        if (str == null || elapsedRealtime >= gmrVar2.l) {
                            gmrVar2.l = cygVar3.f13747e.o(x, gad.ax) + elapsedRealtime;
                            try {
                                dez i = xo.i(cygVar3.v);
                                gmrVar2.f18412b = "";
                                String str2 = i.f14078a;
                                if (str2 != null) {
                                    gmrVar2.f18412b = str2;
                                }
                                gmrVar2.u = i.f14079b;
                            } catch (Exception e2) {
                                bgm bgmVar2 = cygVar3.z;
                                cyg.ak(bgmVar2);
                                bgmVar2.o.i(e2, "Unable to get advertising id");
                                gmrVar2.f18412b = "";
                            }
                            pair = new Pair(gmrVar2.f18412b, Boolean.valueOf(gmrVar2.u));
                        } else {
                            pair = new Pair(str, Boolean.valueOf(gmrVar2.u));
                        }
                        Boolean h = cygVar.f13747e.h("google_analytics_adid_collection_enabled");
                        if (!(h == null || h.booleanValue()) || ((Boolean) pair.second).booleanValue() || TextUtils.isEmpty((CharSequence) pair.first)) {
                            cyg.ak(bgmVar);
                            bgmVar.o.h("ADID unavailable to retrieve Deferred Deep Link. Skipping");
                            break;
                        } else {
                            cyg.ak(bwwVar);
                            bwwVar.an();
                            ConnectivityManager connectivityManager = (ConnectivityManager) cygVar2.v.getSystemService("connectivity");
                            URL url = null;
                            if (connectivityManager != null) {
                                try {
                                    activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                                } catch (SecurityException unused) {
                                }
                                if (activeNetworkInfo != null || !activeNetworkInfo.isConnected()) {
                                    cyg.ak(bgmVar);
                                    bgmVar.f11520g.h("Network is not available for Deferred Deep Link request. Skipping");
                                    break;
                                } else {
                                    dkq dkqVar = cygVar.m;
                                    cyg.ai(dkqVar);
                                    ((cyg) cygVar.at().z).f13747e.n();
                                    String str3 = (String) pair.first;
                                    long f3 = gmrVar2.q.f() - 1;
                                    cyg cygVar4 = (cyg) dkqVar.z;
                                    try {
                                        ckd.bf(str3);
                                        ckd.bf(x);
                                        String str4 = "https://www.googleadservices.com/pagead/conversion/app/deeplink?id_type=adid&sdk_version=" + ("v73000." + dkqVar.ay()) + "&rdid=" + str3 + "&bundleid=" + x + "&retry=" + f3;
                                        if (x.equals(cygVar4.f13747e.u("debug.deferred.deeplink"))) {
                                            str4 = str4.concat("&ddl_test=1");
                                        }
                                        url = new URL(str4);
                                    } catch (IllegalArgumentException e3) {
                                        e = e3;
                                        bgm bgmVar3 = cygVar4.z;
                                        cyg.ak(bgmVar3);
                                        bgmVar3.f11518b.i(e.getMessage(), "Failed to create BOW URL for Deferred Deep Link. exception");
                                        if (url != null) {
                                            return;
                                        }
                                    } catch (MalformedURLException e4) {
                                        e = e4;
                                        bgm bgmVar32 = cygVar4.z;
                                        cyg.ak(bgmVar32);
                                        bgmVar32.f11518b.i(e.getMessage(), "Failed to create BOW URL for Deferred Deep Link. exception");
                                        if (url != null) {
                                        }
                                    }
                                    if (url != null) {
                                        cyg.ak(bwwVar);
                                        yh yhVar = new yh(cygVar);
                                        bwwVar._e();
                                        bwwVar.an();
                                        fth fthVar2 = cygVar2.j;
                                        cyg.ak(fthVar2);
                                        fthVar2.v(new eax(bwwVar, x, url, yhVar));
                                        break;
                                    }
                                }
                            }
                            activeNetworkInfo = null;
                            if (activeNetworkInfo != null) {
                            }
                            cyg.ak(bgmVar);
                            bgmVar.f11520g.h("Network is not available for Deferred Deep Link request. Skipping");
                        }
                    }
                }
                break;
            default:
                bzv bzvVar = this.f14273b.k;
                cyg cygVar5 = (cyg) bzvVar.f12530b;
                fth fthVar3 = cygVar5.j;
                csp cspVar2 = cygVar5.f13745c;
                gmr gmrVar3 = cygVar5.f13744b;
                cyg.ak(fthVar3);
                fthVar3._e();
                if (bzvVar.e()) {
                    if (bzvVar.h()) {
                        cyg.ai(gmrVar3);
                        gmrVar3.p.l(null);
                        Bundle bundle = new Bundle();
                        bundle.putString(abn.EXTRA_SOURCE, "(not set)");
                        bundle.putString("medium", "(not set)");
                        bundle.putString("_cis", "intent");
                        bundle.putLong("_cc", 1L);
                        cyg.aj(cspVar2);
                        cspVar2.au(LiveConfigKey.AUTO, "_cmpx", bundle);
                    } else {
                        cyg.ai(gmrVar3);
                        String i2 = gmrVar3.p.i();
                        if (TextUtils.isEmpty(i2)) {
                            bgm bgmVar4 = cygVar5.z;
                            cyg.ak(bgmVar4);
                            bgmVar4.f11517a.h("Cache still valid but referrer not found");
                        } else {
                            cyg.ai(gmrVar3);
                            long f4 = ((gmrVar3.j.f() / 3600000) - 1) * 3600000;
                            Uri parse = Uri.parse(i2);
                            Bundle bundle2 = new Bundle();
                            Pair pair2 = new Pair(parse.getPath(), bundle2);
                            for (String str5 : parse.getQueryParameterNames()) {
                                bundle2.putString(str5, parse.getQueryParameter(str5));
                            }
                            ((Bundle) pair2.second).putLong("_cc", f4);
                            Object obj = pair2.first;
                            String str6 = obj == null ? "app" : (String) obj;
                            cyg.aj(cspVar2);
                            cspVar2.au(str6, "_cmp", (Bundle) pair2.second);
                        }
                        cyg.ai(gmrVar3);
                        gmrVar3.p.l(null);
                    }
                    cyg.ai(gmrVar3);
                    gmrVar3.j.g(0L);
                    break;
                }
                break;
        }
    }
}
