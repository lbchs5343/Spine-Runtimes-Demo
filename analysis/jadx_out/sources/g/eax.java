package g;

import android.animation.ValueAnimator;
import android.app.AlertDialog;
import android.app.Service;
import android.app.job.JobParameters;
import android.content.BroadcastReceiver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Pair;
import android.view.View;
import android.webkit.CookieManager;
import android.webkit.WebView;
import androidx.work.impl.background.systemalarm.ConstraintProxy$BatteryChargingProxy;
import androidx.work.impl.background.systemalarm.ConstraintProxy$BatteryNotLowProxy;
import androidx.work.impl.background.systemalarm.ConstraintProxy$NetworkStateProxy;
import androidx.work.impl.background.systemalarm.ConstraintProxy$StorageNotLowProxy;
import androidx.work.impl.background.systemalarm.ConstraintProxyUpdateReceiver;
import cn.trinea.android.developertools.R;
import com.bykv.vk.component.ttvideo.LiveConfigKey;
import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import com.google.android.gms.internal.ads.zzapp;
import com.google.android.gms.internal.ads.zzapv;
import com.google.android.gms.internal.ads.zzcbj;
import com.google.android.gms.internal.ads.zzcbk;
import com.google.android.gms.internal.ads.zzcfk;
import com.google.android.gms.internal.ads.zzdsr;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class eax implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public Object f15209a;

    /* renamed from: b, reason: collision with root package name */
    public Object f15210b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f15211c;

    /* renamed from: d, reason: collision with root package name */
    public Object f15212d;

    public /* synthetic */ eax() {
        this.f15211c = 3;
    }

    public eax(View view, cer cerVar, akj akjVar, ValueAnimator valueAnimator) {
        this.f15211c = 5;
        this.f15212d = view;
        this.f15209a = akjVar;
        this.f15210b = valueAnimator;
    }

    public eax(bww bwwVar, String str, URL url, yh yhVar) {
        this.f15211c = 17;
        this.f15209a = bwwVar;
        ckd.bf(str);
        this.f15212d = url;
        this.f15210b = yhVar;
    }

    public /* synthetic */ eax(Object obj, Object obj2, Object obj3, int i) {
        this.f15211c = i;
        this.f15210b = obj;
        this.f15212d = obj2;
        this.f15209a = obj3;
    }

    public /* synthetic */ eax(Object obj, Object obj2, Object obj3, int i, boolean z) {
        this.f15211c = i;
        this.f15212d = obj;
        this.f15209a = obj2;
        this.f15210b = obj3;
    }

    private final void f() {
        afh afhVar = (afh) this.f15212d;
        brv brvVar = (brv) this.f15209a;
        dbb dbbVar = (dbb) this.f15210b;
        cyg cygVar = (cyg) dbbVar.z;
        String str = null;
        try {
            try {
                gmr gmrVar = cygVar.f13744b;
                cyg.ai(gmrVar);
                if (gmrVar.as().g(gxx.ANALYTICS_STORAGE)) {
                    ake akeVar = dbbVar.l;
                    if (akeVar == null) {
                        bgm bgmVar = cygVar.z;
                        cyg.ak(bgmVar);
                        bgmVar.f11518b.h("Failed to get app instance id");
                    } else {
                        str = akeVar.l(afhVar);
                        if (str != null) {
                            csp cspVar = cygVar.f13745c;
                            cyg.aj(cspVar);
                            cspVar.f13446g.set(str);
                            gmr gmrVar2 = cygVar.f13744b;
                            cyg.ai(gmrVar2);
                            gmrVar2.h.l(str);
                        }
                        dbbVar.x();
                    }
                } else {
                    bgm bgmVar2 = cygVar.z;
                    cyg.ak(bgmVar2);
                    bgmVar2.h.h("Analytics storage consent denied; will not get app instance id");
                    csp cspVar2 = cygVar.f13745c;
                    cyg.aj(cspVar2);
                    cspVar2.f13446g.set(null);
                    gmr gmrVar3 = cygVar.f13744b;
                    cyg.ai(gmrVar3);
                    gmrVar3.h.l(null);
                }
            } catch (RemoteException e2) {
                bgm bgmVar3 = cygVar.z;
                cyg.ak(bgmVar3);
                bgmVar3.f11518b.i(e2, "Failed to get app instance id");
            }
        } finally {
            dkq dkqVar = cygVar.m;
            cyg.ai(dkqVar);
            dkqVar.ax(null, brvVar);
        }
    }

    private final void g() {
        zzdsr zzdsrVar = (zzdsr) this.f15212d;
        String str = (String) this.f15209a;
        Pair[] pairArr = (Pair[]) this.f15210b;
        ConcurrentHashMap zzc = zzdsrVar.zzc();
        if (!TextUtils.isEmpty("action") && !TextUtils.isEmpty(str)) {
            zzc.put("action", str);
        }
        for (Pair pair : pairArr) {
            String str2 = (String) pair.first;
            String str3 = (String) pair.second;
            if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
                zzc.put(str2, str3);
            }
        }
        zzdsrVar.zzf(zzc);
    }

    public void e(int i, IOException iOException, byte[] bArr, Map map) {
        fth fthVar = ((cyg) ((bww) this.f15209a).z).j;
        cyg.ak(fthVar);
        fthVar.p(new bk(this, i, iOException, bArr, map));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:100:0x0241  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x024c  */
    /* JADX WARN: Type inference failed for: r0v155, types: [android.app.Service] */
    /* JADX WARN: Type inference failed for: r14v0, types: [g.eax, java.lang.Object, java.lang.Runnable] */
    /* JADX WARN: Type inference failed for: r5v24 */
    /* JADX WARN: Type inference failed for: r5v25 */
    /* JADX WARN: Type inference failed for: r5v26, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r5v27, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r5v29 */
    /* JADX WARN: Type inference failed for: r5v30 */
    /* JADX WARN: Type inference failed for: r5v31 */
    /* JADX WARN: Type inference failed for: r5v34 */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void run() {
        CookieManager a2;
        cde cdeVar;
        Bundle bundle;
        clv clvVar;
        cde cdeVar2;
        HttpURLConnection httpURLConnection;
        ?? r5;
        ?? r52;
        InputStream inputStream;
        AtomicReference atomicReference;
        gmr gmrVar;
        int i = 3;
        Object obj = null;
        r4 = 0;
        r4 = 0;
        int i2 = 0;
        int i3 = 0;
        r4 = false;
        boolean z = false;
        switch (this.f15211c) {
            case 0:
                ((bcq) this.f15209a).ak.post(new gfh(9, this, ((auj) this.f15212d).l(((eas) this.f15210b).f13438e, true), r4));
                return;
            case 1:
                BroadcastReceiver.PendingResult pendingResult = (BroadcastReceiver.PendingResult) this.f15210b;
                Context context = (Context) this.f15209a;
                Intent intent = (Intent) this.f15212d;
                try {
                    boolean booleanExtra = intent.getBooleanExtra("KEY_BATTERY_NOT_LOW_PROXY_ENABLED", false);
                    boolean booleanExtra2 = intent.getBooleanExtra("KEY_BATTERY_CHARGING_PROXY_ENABLED", false);
                    boolean booleanExtra3 = intent.getBooleanExtra("KEY_STORAGE_NOT_LOW_PROXY_ENABLED", false);
                    boolean booleanExtra4 = intent.getBooleanExtra("KEY_NETWORK_STATE_PROXY_ENABLED", false);
                    cyl f2 = cyl.f();
                    int i4 = ConstraintProxyUpdateReceiver.f337a;
                    f2.getClass();
                    bcd.a(context, ConstraintProxy$BatteryNotLowProxy.class, booleanExtra);
                    bcd.a(context, ConstraintProxy$BatteryChargingProxy.class, booleanExtra2);
                    bcd.a(context, ConstraintProxy$StorageNotLowProxy.class, booleanExtra3);
                    bcd.a(context, ConstraintProxy$NetworkStateProxy.class, booleanExtra4);
                    return;
                } finally {
                    pendingResult.finish();
                }
            case 2:
                Handler handler = (Handler) this.f15210b;
                Context context2 = (Context) this.f15209a;
                AlertDialog alertDialog = (AlertDialog) this.f15212d;
                if (alertDialog.isShowing()) {
                    if (!afo.ak(context2)) {
                        handler.postDelayed(this, 1000L);
                        return;
                    }
                    handler.postDelayed(new gtf(context2, i), 2500L);
                    alertDialog.dismiss();
                    handler.postDelayed(new gtf(context2, 4), 500L);
                    return;
                }
                return;
            case 3:
                try {
                    obj = ((dq) this.f15212d).call();
                } catch (Exception unused) {
                }
                ((Handler) this.f15210b).post(new gfh((gmv) this.f15209a, 21, obj));
                return;
            case 4:
                Uri uri = (Uri) this.f15209a;
                String str = (String) this.f15212d;
                gtb gtbVar = (gtb) this.f15210b;
                try {
                    if (TextUtils.isEmpty(str) && uri == null) {
                        ((bid) gtbVar.f18712b).showTipMessage(R.string.error_no_file);
                        return;
                    }
                    String v = gtbVar.v(uri, str);
                    bid bidVar = (bid) gtbVar.f18712b;
                    if (v == null) {
                        bidVar.showTipMessage(R.string.error_no_file);
                        return;
                    } else if (TextUtils.isEmpty(v)) {
                        bidVar.showTipMessage(R.string.error_file_is_empty);
                        return;
                    } else {
                        bidVar.showData(gtb.i(v), TextUtils.isEmpty(str) ? "" : buj.n(str));
                        return;
                    }
                } catch (xy unused2) {
                    ((bid) gtbVar.f18712b).showTipMessage(R.string.error_file_too_large);
                    return;
                } catch (IOException e2) {
                    erl.ai("ViewerPresenter read file", e2);
                    ((bid) gtbVar.f18712b).showTipMessage(R.string.error_read_file_exception);
                    return;
                }
            case 5:
                cuo.m((View) this.f15212d, (akj) this.f15209a);
                ((ValueAnimator) this.f15210b).start();
                return;
            case 6:
                zzapp zzappVar = (zzapp) this.f15212d;
                zzappVar.zzw();
                zzapv zzapvVar = (zzapv) this.f15209a;
                if (zzapvVar.zzc()) {
                    zzappVar.q(zzapvVar.zza);
                } else {
                    zzappVar.zzn(zzapvVar.zzc);
                }
                if (zzapvVar.zzd) {
                    zzappVar.zzm("intermediate-response");
                } else {
                    zzappVar.r("done");
                }
                Runnable runnable = (Runnable) this.f15210b;
                if (runnable != null) {
                    runnable.run();
                    return;
                }
                return;
            case 7:
                ad adVar = (ad) this.f15212d;
                Bundle bundle2 = (Bundle) this.f15209a;
                dm dmVar = (dm) this.f15210b;
                lp lpVar = ti.f20033a.k;
                Context context3 = adVar.f10029f;
                CookieManager a3 = lpVar.a();
                bundle2.putBoolean("accept_3p_cookie", a3 != null ? a3.acceptThirdPartyCookies(adVar.i) : false);
                bme bmeVar = bme.BANNER;
                dcq dcqVar = new dcq(3);
                dcqVar.h(bundle2);
                emr.t(context3, bmeVar, new awn(dcqVar), dmVar);
                return;
            case 8:
                super/*g.tq*/.am((aoy) this.f15209a, (emr) this.f15210b);
                return;
            case 9:
                super/*g.tq*/.aq((czw) this.f15209a, (dzt) this.f15210b);
                return;
            case 10:
                zzcbk zzcbkVar = ((zzcbj) this.f15210b).f5141c;
                if (zzcbkVar != null) {
                    zzcbkVar.zzb((String) this.f15212d, (String) this.f15209a);
                    return;
                }
                return;
            case 11:
                sq sqVar = (sq) this.f15212d;
                Object obj2 = this.f15209a;
                Pair pair = (Pair) this.f15210b;
                HashMap hashMap = sqVar.f20002d;
                if ((obj2 instanceof WebView) && (a2 = ti.f20033a.k.a()) != null) {
                    z = a2.acceptThirdPartyCookies((WebView) obj2);
                }
                HashMap hashMap2 = sqVar.f20001c;
                Boolean valueOf = Boolean.valueOf(z);
                gai gaiVar = (gai) hashMap2.get(valueOf);
                if (gaiVar != null) {
                    ti.f20033a.v.getClass();
                    if (gaiVar.f17795e > System.currentTimeMillis()) {
                        sqVar.f(gaiVar, pair, true);
                        return;
                    }
                }
                List list = (List) hashMap.get(valueOf);
                if (list == null) {
                    list = new ArrayList();
                    hashMap.put(valueOf, list);
                }
                list.add(pair);
                return;
            case 12:
                zs zsVar = (zs) this.f15212d;
                String str2 = (String) this.f15209a;
                Bundle bundle3 = (Bundle) this.f15210b;
                ggz ggzVar = zsVar.f20414b.l;
                bsz.ag(ggzVar);
                ggzVar._e();
                ggzVar.n();
                cyg cygVar = (cyg) ggzVar.z;
                ckd.bf(str2);
                ckd.bf("dep");
                TextUtils.isEmpty("");
                if (bundle3 == null || bundle3.isEmpty()) {
                    cdeVar = new cde(new Bundle());
                } else {
                    Bundle bundle4 = new Bundle(bundle3);
                    Iterator<String> it = bundle4.keySet().iterator();
                    while (it.hasNext()) {
                        String next = it.next();
                        if (next == null) {
                            bgm bgmVar = cygVar.z;
                            cyg.ak(bgmVar);
                            bgmVar.f11518b.h("Param name can't be null");
                            it.remove();
                        } else {
                            dkq dkqVar = cygVar.m;
                            cyg.ai(dkqVar);
                            Object be = dkqVar.be(bundle4.get(next), next);
                            if (be == null) {
                                bgm bgmVar2 = cygVar.z;
                                cyg.ak(bgmVar2);
                                bgmVar2.f11520g.i(cygVar.af.g(next), "Param value can't be null");
                                it.remove();
                            } else {
                                dkq dkqVar2 = cygVar.m;
                                cyg.ai(dkqVar2);
                                dkqVar2.az(bundle4, next, be);
                            }
                        }
                    }
                    cdeVar = new cde(bundle4);
                }
                fit fitVar = ggzVar.f10133a.f12159e;
                bsz.ag(fitVar);
                btw g2 = kk.g();
                if (g2.i) {
                    g2.p();
                    g2.i = false;
                }
                kk.h(0L, (kk) g2.k);
                bundle = cdeVar.zza;
                for (String str3 : bundle.keySet()) {
                    bd i5 = asm.i();
                    i5.a(str3);
                    Object zzf = cdeVar.zzf(str3);
                    ckd.k(zzf);
                    fitVar.at(i5, zzf);
                    g2.e(i5);
                }
                byte[] z2 = ((kk) g2.o()).z();
                bgm bgmVar3 = cygVar.z;
                cyg.ak(bgmVar3);
                bgmVar3.f11519c.e(cygVar.af.f(str2), "Saving default event parameters, appId, data size", Integer.valueOf(z2.length));
                ContentValues contentValues = new ContentValues();
                contentValues.put(PluginConstants.KEY_APP_ID, str2);
                contentValues.put("parameters", z2);
                try {
                    if (ggzVar.bg().insertWithOnConflict("default_event_params", null, contentValues, 5) == -1) {
                        cyg.ak(bgmVar3);
                        bgmVar3.f11518b.i(bgm.t(str2), "Failed to insert default event parameters (got -1). appId");
                        return;
                    }
                    return;
                } catch (SQLiteException e3) {
                    cyg.ak(bgmVar3);
                    bgmVar3.f11518b.e(bgm.t(str2), "Error storing default event parameters. appId", e3);
                    return;
                }
            case 13:
                afh afhVar = (afh) this.f15209a;
                bsz bszVar = ((zs) this.f15210b).f20414b;
                bszVar.ay();
                bou bouVar = (bou) this.f15212d;
                if (bouVar.zzc.zza() == null) {
                    bszVar.bj(bouVar, afhVar);
                    return;
                } else {
                    bszVar.bg(bouVar, afhVar);
                    return;
                }
            case 14:
                zs zsVar2 = (zs) this.f15210b;
                bsz bszVar2 = zsVar2.f20414b;
                ctf ctfVar = (ctf) this.f15212d;
                if ("_cmp".equals(ctfVar.zza) && (cdeVar2 = ctfVar.zzb) != null && cdeVar2.zza() != 0) {
                    String zzg = ctfVar.zzb.zzg("_cis");
                    if ("referrer broadcast".equals(zzg) || "referrer API".equals(zzg)) {
                        bszVar2.zzay().p.i(ctfVar.toString(), "Event has been filtered ");
                        ctfVar = new ctf("_cmpx", ctfVar.zzb, ctfVar.zzc, ctfVar.zzd);
                    }
                }
                afh afhVar2 = (afh) this.f15209a;
                dqu dquVar = bszVar2.u;
                fit fitVar2 = bszVar2.f12159e;
                bsz.ag(dquVar);
                String str4 = afhVar2.zza;
                if (TextUtils.isEmpty(str4) || (clvVar = (clv) dquVar.q.get(str4)) == null || clvVar.j() == 0) {
                    zsVar2.i(ctfVar, afhVar2);
                    return;
                }
                bszVar2.zzay().f11519c.i(afhVar2.zza, "EES config found for");
                dqu dquVar2 = bszVar2.u;
                bsz.ag(dquVar2);
                String str5 = afhVar2.zza;
                eqg eqgVar = TextUtils.isEmpty(str5) ? null : (eqg) dquVar2.o.x(str5);
                if (eqgVar == null) {
                    bszVar2.zzay().f11519c.i(afhVar2.zza, "EES not loaded for");
                    zsVar2.i(ctfVar, afhVar2);
                    return;
                }
                try {
                    dzh dzhVar = eqgVar.f15991d;
                    bsz.ag(fitVar2);
                    HashMap x = fit.x(ctfVar.zzb.zzc(), true);
                    String ai = cux.ai(ctfVar.zza, dyd.q, dyd.i);
                    if (ai == null) {
                        ai = ctfVar.zza;
                    }
                    if (eqgVar.f(new guq(ai, ctfVar.zzd, x))) {
                        if (((guq) dzhVar.f15121f).equals((guq) dzhVar.i)) {
                            zsVar2.i(ctfVar, afhVar2);
                        } else {
                            bszVar2.zzay().f11519c.i(ctfVar.zza, "EES edited event");
                            bsz.ag(fitVar2);
                            zsVar2.i(fit.g((guq) dzhVar.f15121f), afhVar2);
                        }
                        if (((ArrayList) dzhVar.f15122g).isEmpty()) {
                            return;
                        }
                        Iterator it2 = ((ArrayList) dzhVar.f15122g).iterator();
                        while (it2.hasNext()) {
                            guq guqVar = (guq) it2.next();
                            bszVar2.zzay().f11519c.i(guqVar.f18780a, "EES logging created event");
                            bsz.ag(fitVar2);
                            zsVar2.i(fit.g(guqVar), afhVar2);
                        }
                        return;
                    }
                } catch (egg unused3) {
                    bszVar2.zzay().f11518b.e(afhVar2.zzb, "EES error. appId, eventName", ctfVar.zza);
                }
                bszVar2.zzay().f11519c.i(ctfVar.zza, "EES was not applied to event");
                zsVar2.i(ctfVar, afhVar2);
                return;
            case 15:
                bsz bszVar3 = ((zs) this.f15210b).f20414b;
                bszVar3.ay();
                bszVar3.be((ctf) this.f15212d, (String) this.f15209a);
                return;
            case 16:
                afh afhVar3 = (afh) this.f15209a;
                bsz bszVar4 = ((zs) this.f15210b).f20414b;
                bszVar4.ay();
                cmd cmdVar = (cmd) this.f15212d;
                if (cmdVar.zza() == null) {
                    bszVar4.an(cmdVar, afhVar3);
                    return;
                } else {
                    bszVar4.aq(cmdVar, afhVar3);
                    return;
                }
            case 17:
                bww bwwVar = (bww) this.f15209a;
                cyg cygVar2 = (cyg) bwwVar.z;
                cyg cygVar3 = (cyg) bwwVar.z;
                fth fthVar = cygVar2.j;
                cyg.ak(fthVar);
                fthVar.r();
                try {
                    URLConnection openConnection = ((URL) this.f15212d).openConnection();
                    if (!(openConnection instanceof HttpURLConnection)) {
                        throw new IOException("Failed to obtain HTTP connection");
                    }
                    httpURLConnection = (HttpURLConnection) openConnection;
                    httpURLConnection.setDefaultUseCaches(false);
                    cygVar3.getClass();
                    r5 = 60000;
                    r52 = 60000;
                    httpURLConnection.setConnectTimeout(60000);
                    cygVar3.getClass();
                    httpURLConnection.setReadTimeout(61000);
                    httpURLConnection.setInstanceFollowRedirects(false);
                    httpURLConnection.setDoInput(true);
                    try {
                        int responseCode = httpURLConnection.getResponseCode();
                        try {
                            try {
                                Map<String, List<String>> headerFields = httpURLConnection.getHeaderFields();
                                try {
                                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                                    inputStream = httpURLConnection.getInputStream();
                                    try {
                                        byte[] bArr = new byte[1024];
                                        while (true) {
                                            int read = inputStream.read(bArr);
                                            if (read <= 0) {
                                                byte[] byteArray = byteArrayOutputStream.toByteArray();
                                                inputStream.close();
                                                httpURLConnection.disconnect();
                                                e(responseCode, null, byteArray, headerFields);
                                                return;
                                            }
                                            byteArrayOutputStream.write(bArr, 0, read);
                                        }
                                    } catch (Throwable th) {
                                        th = th;
                                        if (inputStream != null) {
                                            inputStream.close();
                                        }
                                        throw th;
                                    }
                                } catch (Throwable th2) {
                                    th = th2;
                                    inputStream = null;
                                }
                            } catch (IOException e4) {
                                e = e4;
                                i2 = responseCode;
                                if (httpURLConnection != null) {
                                    httpURLConnection.disconnect();
                                }
                                e(i2, e, null, r52);
                                return;
                            } catch (Throwable th3) {
                                th = th3;
                                i3 = responseCode;
                                if (httpURLConnection != null) {
                                    httpURLConnection.disconnect();
                                }
                                e(i3, null, null, r5);
                                throw th;
                            }
                        } catch (IOException e5) {
                            e = e5;
                            i2 = responseCode;
                            r52 = 0;
                            if (httpURLConnection != null) {
                            }
                            e(i2, e, null, r52);
                            return;
                        } catch (Throwable th4) {
                            th = th4;
                            i3 = responseCode;
                            r5 = 0;
                            if (httpURLConnection != null) {
                            }
                            e(i3, null, null, r5);
                            throw th;
                        }
                    } catch (IOException e6) {
                        e = e6;
                    } catch (Throwable th5) {
                        th = th5;
                    }
                } catch (IOException e7) {
                    e = e7;
                    httpURLConnection = null;
                    r52 = 0;
                } catch (Throwable th6) {
                    th = th6;
                    httpURLConnection = null;
                    r5 = 0;
                }
            case 18:
                synchronized (((AtomicReference) this.f15212d)) {
                    try {
                        try {
                            gmrVar = ((cyg) ((dbb) this.f15210b).z).f13744b;
                            cyg.ai(gmrVar);
                        } catch (RemoteException e8) {
                            bgm bgmVar4 = ((cyg) ((dbb) this.f15210b).z).z;
                            cyg.ak(bgmVar4);
                            bgmVar4.f11518b.i(e8, "Failed to get app instance id");
                            atomicReference = (AtomicReference) this.f15212d;
                        }
                        if (gmrVar.as().g(gxx.ANALYTICS_STORAGE)) {
                            dbb dbbVar = (dbb) this.f15210b;
                            ake akeVar = dbbVar.l;
                            if (akeVar != null) {
                                ((AtomicReference) this.f15212d).set(akeVar.l((afh) this.f15209a));
                                String str6 = (String) ((AtomicReference) this.f15212d).get();
                                if (str6 != null) {
                                    csp cspVar = ((cyg) ((dbb) this.f15210b).z).f13745c;
                                    cyg.aj(cspVar);
                                    cspVar.f13446g.set(str6);
                                    gmr gmrVar2 = ((cyg) ((dbb) this.f15210b).z).f13744b;
                                    cyg.ai(gmrVar2);
                                    gmrVar2.h.l(str6);
                                }
                                ((dbb) this.f15210b).x();
                                atomicReference = (AtomicReference) this.f15212d;
                                atomicReference.notify();
                                return;
                            }
                            bgm bgmVar5 = ((cyg) dbbVar.z).z;
                            cyg.ak(bgmVar5);
                            bgmVar5.f11518b.h("Failed to get app instance id");
                            ((AtomicReference) this.f15212d).notify();
                        } else {
                            bgm bgmVar6 = ((cyg) ((dbb) this.f15210b).z).z;
                            cyg.ak(bgmVar6);
                            bgmVar6.h.h("Analytics storage consent denied; will not get app instance id");
                            csp cspVar2 = ((cyg) ((dbb) this.f15210b).z).f13745c;
                            cyg.aj(cspVar2);
                            cspVar2.f13446g.set(null);
                            gmr gmrVar3 = ((cyg) ((dbb) this.f15210b).z).f13744b;
                            cyg.ai(gmrVar3);
                            gmrVar3.h.l(null);
                            ((AtomicReference) this.f15212d).set(null);
                        }
                        return;
                    } finally {
                        ((AtomicReference) this.f15212d).notify();
                    }
                }
            case 19:
                f();
                return;
            case 20:
                afh afhVar4 = (afh) this.f15212d;
                dbb dbbVar2 = (dbb) this.f15210b;
                ake akeVar2 = dbbVar2.l;
                cyg cygVar4 = (cyg) dbbVar2.z;
                if (akeVar2 == null) {
                    bgm bgmVar7 = cygVar4.z;
                    cyg.ak(bgmVar7);
                    bgmVar7.f11518b.h("Failed to send default event parameters to service");
                    return;
                } else {
                    try {
                        akeVar2.j((Bundle) this.f15209a, afhVar4);
                        return;
                    } catch (RemoteException e9) {
                        bgm bgmVar8 = cygVar4.z;
                        cyg.ak(bgmVar8);
                        bgmVar8.f11518b.i(e9, "Failed to send default event parameters to service");
                        return;
                    }
                }
            case 21:
                ccp ccpVar = (ccp) this.f15212d;
                bgm bgmVar9 = (bgm) this.f15209a;
                JobParameters jobParameters = (JobParameters) this.f15210b;
                bgmVar9.f11519c.h("AppMeasurementJobService processed last upload request.");
                ((ir) ((Service) ccpVar.f12646d)).c(jobParameters);
                return;
            case 22:
                bsz bszVar5 = (bsz) ((ecv) this.f15210b).f15320a;
                dkq ap = bszVar5.ap();
                Bundle bundle5 = (Bundle) this.f15209a;
                ((czz) bszVar5.zzav()).getClass();
                ctf cb = ap.cb("_err", bundle5, LiveConfigKey.AUTO, System.currentTimeMillis(), false);
                ckd.k(cb);
                bszVar5.be(cb, (String) this.f15212d);
                return;
            case 23:
                g();
                return;
            default:
                axs axsVar = (axs) this.f15212d;
                String str7 = (String) this.f15209a;
                HashMap hashMap3 = (HashMap) this.f15210b;
                zzcfk zzcfkVar = (zzcfk) axsVar.f11037d;
                if (zzcfkVar != null) {
                    zzcfkVar.zzd(str7, hashMap3);
                    return;
                }
                return;
        }
    }
}
