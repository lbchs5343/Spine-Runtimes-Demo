package g;

import android.content.ComponentName;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.drawable.BitmapDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
import android.security.NetworkSecurityPolicy;
import android.text.TextUtils;
import android.util.Log;
import android.webkit.WebView;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.bytedance.sdk.openadsdk.mediation.init.MediationConfigUserInfoForSegment;
import com.google.android.gms.internal.ads.zzbef;
import com.google.android.gms.internal.ads.zzbuj;
import com.google.android.gms.internal.ads.zzbzt;
import com.google.android.gms.internal.ads.zzfny;
import com.google.android.gms.internal.ads.zzfwk;
import com.google.android.gms.internal.ads.zzfwm;
import com.google.android.gms.internal.ads.zzfxd;
import com.google.android.gms.internal.ads.zzgee;
import com.google.android.gms.internal.ads.zzgei;
import com.google.android.gms.internal.ads.zzgfk;
import com.google.android.gms.internal.ads.zzgfl;
import com.google.android.gms.measurement.internal.AppMeasurementDynamiteService;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final /* synthetic */ class fuy implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final Object f17457a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f17458b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f17459c;

    public /* synthetic */ fuy(int i, Object obj, Object obj2, boolean z) {
        this.f17458b = i;
        this.f17457a = obj;
        this.f17459c = obj2;
    }

    public fuy(emi emiVar, gio gioVar, emi emiVar2) {
        this.f17458b = 1;
        this.f17457a = emiVar;
        this.f17459c = gioVar;
    }

    public /* synthetic */ fuy(Object obj, int i, Object obj2) {
        this.f17458b = i;
        this.f17459c = obj;
        this.f17457a = obj2;
    }

    private final void d() {
        NetworkSecurityPolicy networkSecurityPolicy;
        cmo cmoVar = (cmo) this.f17459c;
        SharedPreferences sharedPreferences = ((Context) this.f17457a).getSharedPreferences(MediationConstant.ADN_ADMOB, 0);
        SharedPreferences.Editor edit = sharedPreferences.edit();
        try {
            synchronized (cmoVar.k) {
                try {
                    cmoVar.q = sharedPreferences;
                    cmoVar.ac = edit;
                    if (Build.VERSION.SDK_INT >= 23) {
                        networkSecurityPolicy = NetworkSecurityPolicy.getInstance();
                        networkSecurityPolicy.isCleartextTrafficPermitted();
                    }
                    cmoVar.f13129b = cmoVar.q.getBoolean("use_https", cmoVar.f13129b);
                    cmoVar.l = cmoVar.q.getBoolean("content_url_opted_out", cmoVar.l);
                    cmoVar.u = cmoVar.q.getString("content_url_hashes", cmoVar.u);
                    cmoVar.f13130c = cmoVar.q.getBoolean("gad_idless", cmoVar.f13130c);
                    cmoVar.o = cmoVar.q.getBoolean("content_vertical_opted_out", cmoVar.o);
                    cmoVar.w = cmoVar.q.getString("content_vertical_hashes", cmoVar.w);
                    cmoVar.ad = cmoVar.q.getInt("version_code", cmoVar.ad);
                    if (((Boolean) zzbef.zzg.zze()).booleanValue() && edt.f15376a.f15379d.zze()) {
                        cmoVar.f13133f = new zzbzt("", 0L);
                    } else {
                        cmoVar.f13133f = new zzbzt(cmoVar.q.getString("app_settings_json", cmoVar.f13133f.zzc()), cmoVar.q.getLong("app_settings_last_update_ms", cmoVar.f13133f.zza()));
                    }
                    cmoVar.f13131d = cmoVar.q.getLong("app_last_background_time_ms", cmoVar.f13131d);
                    cmoVar.x = cmoVar.q.getInt("request_in_session_count", cmoVar.x);
                    cmoVar.s = cmoVar.q.getLong("first_ad_req_time_ms", cmoVar.s);
                    cmoVar.r = cmoVar.q.getStringSet("never_pool_slots", cmoVar.r);
                    cmoVar.p = cmoVar.q.getString("display_cutout", cmoVar.p);
                    cmoVar.h = cmoVar.q.getInt("app_measurement_npa", cmoVar.h);
                    cmoVar.n = cmoVar.q.getInt("sd_app_measure_npa", cmoVar.n);
                    cmoVar.m = cmoVar.q.getLong("sd_app_measure_npa_ts", cmoVar.m);
                    cmoVar.f13128ab = cmoVar.q.getString("inspector_info", cmoVar.f13128ab);
                    cmoVar.f13132e = cmoVar.q.getBoolean("linked_device", cmoVar.f13132e);
                    cmoVar.f13127a = cmoVar.q.getString("linked_ad_unit", cmoVar.f13127a);
                    cmoVar.y = cmoVar.q.getString("inspector_ui_storage", cmoVar.y);
                    cmoVar.i = cmoVar.q.getString("IABTCF_TCString", cmoVar.i);
                    cmoVar.t = cmoVar.q.getInt("gad_has_consent_for_cookies", cmoVar.t);
                    try {
                        cmoVar.z = new JSONObject(cmoVar.q.getString("native_advanced_settings", "{}"));
                    } catch (JSONException unused) {
                        zzfxd zzfxdVar = agd.f10175a;
                    }
                    cmoVar.ah();
                } catch (Throwable th) {
                    throw th;
                }
            }
        } catch (Throwable th2) {
            ti.f20033a.f20034ab.zzw(th2, "AdSharedPreferenceManagerImpl.initializeOnBackgroundThread");
            agd.h();
        }
    }

    private final void e() {
        synchronized (((err) this.f17457a).f16049c) {
            fbr fbrVar = (fbr) ((err) this.f17457a).f16048b;
            Exception b2 = ((ci) this.f17459c).b();
            ckd.k(b2);
            fbrVar.onFailure(b2);
        }
    }

    private final void f() {
        synchronized (((err) this.f17457a).f16049c) {
            ((etk) ((err) this.f17457a).f16048b).onSuccess(((ci) this.f17459c).c());
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(42:156|(1:158)(49:359|360|361|362|(1:364)(2:386|(43:388|366|367|(7:369|(1:371)(1:383)|373|374|376|377|378)|384|160|(1:358)(1:164)|165|166|168|(1:170)|171|172|173|(1:175)|176|(6:178|(1:180)(1:189)|181|(3:185|186|184)|183|184)|(3:191|(1:193)(1:196)|194)|197|(1:199)(2:344|(23:346|(3:337|338|(21:340|(18:204|(1:206)(3:328|(3:331|(1:333)(1:334)|329)|335)|(1:208)(1:327)|209|(3:211|(1:213)(1:217)|(1:215)(1:216))|218|(1:220)|221|(1:326)(3:224|(2:314|(2:321|(1:323)))(1:234)|235)|(1:237)(1:313)|238|(1:240)|241|(1:245)|246|(2:248|(7:250|(1:252)|253|(1:255)|256|(4:260|(1:262)|263|(1:265))|266))(16:269|(2:271|(12:273|274|(1:276)|277|(3:279|280|281)|286|(2:288|(1:290))|291|(1:293)(1:301)|(1:297)|(1:299)|300))|302|(5:304|(1:306)(1:311)|307|(1:309)|310)|312|274|(0)|277|(0)|286|(0)|291|(0)(0)|(2:295|297)|(0)|300)|267|268)|336|(0)(0)|209|(0)|218|(0)|221|(0)|324|326|(0)(0)|238|(0)|241|(2:243|245)|246|(0)(0)|267|268))|202|(0)|336|(0)(0)|209|(0)|218|(0)|221|(0)|324|326|(0)(0)|238|(0)|241|(0)|246|(0)(0)|267|268))|200|(0)|202|(0)|336|(0)(0)|209|(0)|218|(0)|221|(0)|324|326|(0)(0)|238|(0)|241|(0)|246|(0)(0)|267|268))|365|366|367|(0)|384|160|(1:162)|358|165|166|168|(0)|171|172|173|(0)|176|(0)|(0)|197|(0)(0)|200|(0)|202|(0)|336|(0)(0)|209|(0)|218|(0)|221|(0)|324|326|(0)(0)|238|(0)|241|(0)|246|(0)(0)|267|268)|159|160|(0)|358|165|166|168|(0)|171|172|173|(0)|176|(0)|(0)|197|(0)(0)|200|(0)|202|(0)|336|(0)(0)|209|(0)|218|(0)|221|(0)|324|326|(0)(0)|238|(0)|241|(0)|246|(0)(0)|267|268) */
    /* JADX WARN: Can't wrap try/catch for region: R(48:359|(2:360|361)|362|(1:364)(2:386|(43:388|366|367|(7:369|(1:371)(1:383)|373|374|376|377|378)|384|160|(1:358)(1:164)|165|166|168|(1:170)|171|172|173|(1:175)|176|(6:178|(1:180)(1:189)|181|(3:185|186|184)|183|184)|(3:191|(1:193)(1:196)|194)|197|(1:199)(2:344|(23:346|(3:337|338|(21:340|(18:204|(1:206)(3:328|(3:331|(1:333)(1:334)|329)|335)|(1:208)(1:327)|209|(3:211|(1:213)(1:217)|(1:215)(1:216))|218|(1:220)|221|(1:326)(3:224|(2:314|(2:321|(1:323)))(1:234)|235)|(1:237)(1:313)|238|(1:240)|241|(1:245)|246|(2:248|(7:250|(1:252)|253|(1:255)|256|(4:260|(1:262)|263|(1:265))|266))(16:269|(2:271|(12:273|274|(1:276)|277|(3:279|280|281)|286|(2:288|(1:290))|291|(1:293)(1:301)|(1:297)|(1:299)|300))|302|(5:304|(1:306)(1:311)|307|(1:309)|310)|312|274|(0)|277|(0)|286|(0)|291|(0)(0)|(2:295|297)|(0)|300)|267|268)|336|(0)(0)|209|(0)|218|(0)|221|(0)|324|326|(0)(0)|238|(0)|241|(2:243|245)|246|(0)(0)|267|268))|202|(0)|336|(0)(0)|209|(0)|218|(0)|221|(0)|324|326|(0)(0)|238|(0)|241|(0)|246|(0)(0)|267|268))|200|(0)|202|(0)|336|(0)(0)|209|(0)|218|(0)|221|(0)|324|326|(0)(0)|238|(0)|241|(0)|246|(0)(0)|267|268))|365|366|367|(0)|384|160|(1:162)|358|165|166|168|(0)|171|172|173|(0)|176|(0)|(0)|197|(0)(0)|200|(0)|202|(0)|336|(0)(0)|209|(0)|218|(0)|221|(0)|324|326|(0)(0)|238|(0)|241|(0)|246|(0)(0)|267|268) */
    /* JADX WARN: Code restructure failed: missing block: B:347:0x0514, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:349:0x0532, code lost:
    
        g.cyg.ak(r8);
        r8.f11518b.e(g.bgm.t(r11), "Fetching Google App Id failed with exception. appId", r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:385:0x0429, code lost:
    
        r6 = "Unknown";
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:151:0x0333  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x044e  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x0462  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x04dd  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x04eb  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x04f4 A[Catch: IllegalStateException -> 0x0514, TryCatch #5 {IllegalStateException -> 0x0514, blocks: (B:173:0x04e0, B:176:0x04ec, B:178:0x04f4, B:181:0x0503, B:184:0x0511, B:186:0x050d, B:189:0x04ff, B:191:0x0518, B:193:0x0529, B:194:0x052e, B:196:0x052c), top: B:172:0x04e0 }] */
    /* JADX WARN: Removed duplicated region for block: B:191:0x0518 A[Catch: IllegalStateException -> 0x0514, TryCatch #5 {IllegalStateException -> 0x0514, blocks: (B:173:0x04e0, B:176:0x04ec, B:178:0x04f4, B:181:0x0503, B:184:0x0511, B:186:0x050d, B:189:0x04ff, B:191:0x0518, B:193:0x0529, B:194:0x052e, B:196:0x052c), top: B:172:0x04e0 }] */
    /* JADX WARN: Removed duplicated region for block: B:199:0x0553  */
    /* JADX WARN: Removed duplicated region for block: B:204:0x059a  */
    /* JADX WARN: Removed duplicated region for block: B:208:0x05cd  */
    /* JADX WARN: Removed duplicated region for block: B:211:0x0605  */
    /* JADX WARN: Removed duplicated region for block: B:220:0x0646  */
    /* JADX WARN: Removed duplicated region for block: B:223:0x06ab A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:237:0x0713  */
    /* JADX WARN: Removed duplicated region for block: B:240:0x072b  */
    /* JADX WARN: Removed duplicated region for block: B:243:0x0747  */
    /* JADX WARN: Removed duplicated region for block: B:248:0x0762  */
    /* JADX WARN: Removed duplicated region for block: B:269:0x07cd  */
    /* JADX WARN: Removed duplicated region for block: B:276:0x08cb  */
    /* JADX WARN: Removed duplicated region for block: B:279:0x08f1  */
    /* JADX WARN: Removed duplicated region for block: B:288:0x092d  */
    /* JADX WARN: Removed duplicated region for block: B:293:0x094a  */
    /* JADX WARN: Removed duplicated region for block: B:299:0x0961  */
    /* JADX WARN: Removed duplicated region for block: B:301:0x094c  */
    /* JADX WARN: Removed duplicated region for block: B:313:0x071b  */
    /* JADX WARN: Removed duplicated region for block: B:327:0x05d4  */
    /* JADX WARN: Removed duplicated region for block: B:337:0x0572 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:344:0x0561  */
    /* JADX WARN: Removed duplicated region for block: B:350:0x0470  */
    /* JADX WARN: Removed duplicated region for block: B:351:0x047d  */
    /* JADX WARN: Removed duplicated region for block: B:352:0x048a  */
    /* JADX WARN: Removed duplicated region for block: B:353:0x0497  */
    /* JADX WARN: Removed duplicated region for block: B:354:0x04a4  */
    /* JADX WARN: Removed duplicated region for block: B:355:0x04b1  */
    /* JADX WARN: Removed duplicated region for block: B:356:0x04be  */
    /* JADX WARN: Removed duplicated region for block: B:357:0x04cb  */
    /* JADX WARN: Removed duplicated region for block: B:369:0x0401 A[Catch: NameNotFoundException -> 0x0429, TryCatch #1 {NameNotFoundException -> 0x0429, blocks: (B:367:0x03f6, B:369:0x0401, B:371:0x040d), top: B:366:0x03f6 }] */
    /* JADX WARN: Removed duplicated region for block: B:393:0x09a9  */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void run() {
        fth fthVar;
        gmr gmrVar;
        acu acuVar;
        PackageManager packageManager;
        PackageInfo packageInfo;
        String str;
        String str2;
        int i;
        String str3;
        boolean z;
        int av;
        long j;
        Bundle t;
        Integer valueOf;
        String[] stringArray;
        List<String> asList;
        fou fouVar;
        Boolean h;
        Boolean h2;
        rs rsVar;
        int i2;
        rs rsVar2;
        bzv bzvVar;
        gmr gmrVar2;
        boolean as;
        SharedPreferences sharedPreferences;
        String av2;
        String string;
        Throwable zza;
        switch (this.f17458b) {
            case 0:
                cgp cgpVar = (cgp) this.f17459c;
                try {
                    cgpVar.f12849a.r(((awn) this.f17457a).f10978a);
                    return;
                } catch (IllegalStateException e2) {
                    zzbuj.zza(cgpVar.getContext()).zzh(e2, "BaseAdView.loadAd");
                    return;
                }
            case 1:
                emi emiVar = (emi) this.f17457a;
                yh yhVar = emiVar.f15794b;
                String str4 = emiVar.f15793a;
                gio gioVar = (gio) this.f17459c;
                cyg cygVar = yhVar.f20338a;
                fth fthVar2 = cygVar.j;
                cyg.ak(fthVar2);
                fthVar2._e();
                Bundle bundle = new Bundle();
                bundle.putString("package_name", str4);
                try {
                    amn amnVar = (amn) gioVar;
                    Parcel _cd = amnVar._cd();
                    m.e(_cd, bundle);
                    Parcel _cf = amnVar._cf(_cd, 1);
                    Bundle bundle2 = (Bundle) m.c(_cf, Bundle.CREATOR);
                    _cf.recycle();
                    if (bundle2 == null) {
                        bgm bgmVar = cygVar.z;
                        cyg.ak(bgmVar);
                        bgmVar.f11518b.h("Install Referrer Service returned a null response");
                    }
                } catch (Exception e3) {
                    bgm bgmVar2 = cygVar.z;
                    cyg.ak(bgmVar2);
                    bgmVar2.f11518b.i(e3.getMessage(), "Exception occurred while retrieving the Install Referrer");
                }
                fth fthVar3 = cygVar.j;
                cyg.ak(fthVar3);
                fthVar3._e();
                throw new IllegalStateException("Unexpected call on client side");
            case 2:
                zzfny.zzk((WebView) this.f17459c, (String) this.f17457a);
                return;
            case 3:
                cyg cygVar2 = (cyg) this.f17457a;
                gmr gmrVar3 = cygVar2.f13744b;
                acu acuVar2 = (acu) this.f17459c;
                fth fthVar4 = cygVar2.j;
                AtomicInteger atomicInteger = cygVar2.p;
                bgm bgmVar3 = cygVar2.z;
                cyg.ak(fthVar4);
                fthVar4._e();
                dsd dsdVar = cygVar2.f13747e;
                ((cyg) dsdVar.z).getClass();
                auk aukVar = new auk(cygVar2);
                aukVar.ao();
                cygVar2.f13749g = aukVar;
                fqh fqhVar = new fqh(cygVar2, acuVar2.f10007e);
                fqhVar.c();
                cygVar2.ac = fqhVar;
                efm efmVar = new efm(cygVar2);
                efmVar.c();
                cygVar2.f13746d = efmVar;
                dbb dbbVar = new dbb(cygVar2);
                dbbVar.c();
                cygVar2.o = dbbVar;
                dkq dkqVar = cygVar2.m;
                boolean z2 = dkqVar.am;
                cyg cygVar3 = (cyg) dkqVar.z;
                if (z2) {
                    throw new IllegalStateException("Can't initialize twice");
                }
                dkqVar._e();
                SecureRandom secureRandom = new SecureRandom();
                long nextLong = secureRandom.nextLong();
                if (nextLong == 0) {
                    nextLong = secureRandom.nextLong();
                    if (nextLong == 0) {
                        bgm bgmVar4 = ((cyg) dkqVar.z).z;
                        cyg.ak(bgmVar4);
                        fthVar = fthVar4;
                        bgmVar4.f11520g.h("Utils falling back to Random for random id");
                        dkqVar.h.set(nextLong);
                        cygVar3.aq();
                        dkqVar.am = true;
                        if (!gmrVar3.am) {
                            throw new IllegalStateException("Can't initialize twice");
                        }
                        SharedPreferences sharedPreferences2 = ((cyg) gmrVar3.z).v.getSharedPreferences("com.google.android.gms.measurement.prefs", 0);
                        gmrVar3.r = sharedPreferences2;
                        boolean z3 = sharedPreferences2.getBoolean("has_been_opened", false);
                        gmrVar3.f18413c = z3;
                        if (!z3) {
                            SharedPreferences.Editor edit = gmrVar3.r.edit();
                            edit.putBoolean("has_been_opened", true);
                            edit.apply();
                        }
                        gmrVar3.s = new dkh(gmrVar3, Math.max(0L, ((Long) gad.bj.h(null)).longValue()));
                        ((cyg) gmrVar3.z).aq();
                        gmrVar3.am = true;
                        fqh fqhVar2 = cygVar2.ac;
                        boolean z4 = fqhVar2.f19772a;
                        cyg cygVar4 = (cyg) fqhVar2.z;
                        if (z4) {
                            throw new IllegalStateException("Can't initialize twice");
                        }
                        Context context = cygVar4.v;
                        String str5 = cygVar4.q;
                        String str6 = cygVar4.aa;
                        bgm bgmVar5 = cygVar4.z;
                        String packageName = context.getPackageName();
                        Context context2 = cygVar4.v;
                        PackageManager packageManager2 = context2.getPackageManager();
                        String str7 = MediationConfigUserInfoForSegment.GENDER_UNKNOWN;
                        String str8 = "Unknown";
                        int i3 = Integer.MIN_VALUE;
                        if (packageManager2 != null) {
                            gmrVar = gmrVar3;
                            acuVar = acuVar2;
                            try {
                                str7 = packageManager2.getInstallerPackageName(packageName);
                            } catch (IllegalArgumentException unused) {
                                cyg.ak(bgmVar5);
                                bgmVar5.f11518b.i(bgm.t(packageName), "Error retrieving app installer package name. appId");
                            }
                            String str9 = str7;
                            if (str9 == null) {
                                str9 = "manual_install";
                            } else if ("com.android.vending".equals(str9)) {
                                str7 = "";
                                packageInfo = packageManager2.getPackageInfo(context2.getPackageName(), 0);
                                if (packageInfo != null) {
                                    CharSequence applicationLabel = packageManager2.getApplicationLabel(packageInfo.applicationInfo);
                                    String str10 = !TextUtils.isEmpty(applicationLabel) ? applicationLabel.toString() : "Unknown";
                                    try {
                                        str3 = packageInfo.versionName;
                                    } catch (PackageManager.NameNotFoundException unused2) {
                                    }
                                    try {
                                        i3 = packageInfo.versionCode;
                                        str8 = str3;
                                    } catch (PackageManager.NameNotFoundException unused3) {
                                        str8 = str3;
                                        cyg.ak(bgmVar5);
                                        packageManager = packageManager2;
                                        bgmVar5.f11518b.e(bgm.t(packageName), "Error retrieving package info. appId, appName", str10);
                                        str = str7;
                                        str2 = str8;
                                        i = Integer.MIN_VALUE;
                                        fqhVar2.o = packageName;
                                        fqhVar2.j = str;
                                        fqhVar2.p = str2;
                                        fqhVar2.u = i;
                                        fqhVar2.f17242g = 0L;
                                        if (TextUtils.isEmpty(str6)) {
                                        }
                                        av = cygVar4.av();
                                        switch (av) {
                                        }
                                        fqhVar2.t = "";
                                        fqhVar2.r = "";
                                        if (z) {
                                        }
                                        av2 = cux.av(context2, str5);
                                        fqhVar2.t = true != TextUtils.isEmpty(av2) ? av2 : "";
                                        if (!TextUtils.isEmpty(av2)) {
                                        }
                                        if (av == 0) {
                                        }
                                        fqhVar2.l = null;
                                        dsd dsdVar2 = cygVar4.f13747e;
                                        cyg cygVar5 = (cyg) dsdVar2.z;
                                        ckd.bf("analytics.safelisted_events");
                                        t = dsdVar2.t();
                                        if (t != null) {
                                        }
                                        valueOf = null;
                                        if (valueOf != null) {
                                        }
                                        asList = null;
                                        if (asList != null) {
                                        }
                                        fqhVar2.l = asList;
                                        if (packageManager != null) {
                                        }
                                        cygVar4.aq();
                                        fqhVar2.f19772a = true;
                                        cyg.ak(bgmVar3);
                                        dvb dvbVar = bgmVar3.p;
                                        dsdVar.n();
                                        dvbVar.i(73000L, "App measurement initialized, version");
                                        cyg.ak(bgmVar3);
                                        dvbVar.h("To enable debug logging run: adb shell setprop log.tag.FA VERBOSE");
                                        String x = fqhVar.x();
                                        if (TextUtils.isEmpty(cygVar2.aa)) {
                                        }
                                        cyg.ak(bgmVar3);
                                        bgmVar3.o.h("Debug-level message logging enabled");
                                        if (cygVar2.s != atomicInteger.get()) {
                                        }
                                        cygVar2.x = true;
                                        apu apuVar = acuVar.j;
                                        Context context3 = cygVar2.v;
                                        long j2 = cygVar2.ah;
                                        csp cspVar = cygVar2.f13745c;
                                        cyg.ak(fthVar);
                                        fthVar._e();
                                        cyg.ai(gmrVar);
                                        gmr gmrVar4 = gmrVar;
                                        dxb dxbVar = gmrVar4.f18414g;
                                        dxb dxbVar2 = gmrVar4.h;
                                        fouVar = gmrVar4.ap;
                                        rs as2 = gmrVar4.as();
                                        gmrVar4._e();
                                        int i4 = gmrVar4.ar().getInt("consent_source", 100);
                                        Object obj = dsdVar.z;
                                        h = dsdVar.h("google_analytics_default_allow_ad_storage");
                                        h2 = dsdVar.h("google_analytics_default_allow_analytics_storage");
                                        if (h == null) {
                                        }
                                        rsVar = new rs(h, h2);
                                        i2 = -10;
                                        if (rsVar != null) {
                                        }
                                        cyg.aj(cspVar);
                                        cspVar.ar(rsVar2);
                                        if (fouVar.f() == j) {
                                        }
                                        cyg.aj(cspVar);
                                        bzvVar = cspVar.k;
                                        if (bzvVar.e()) {
                                        }
                                        if (cygVar2.au()) {
                                        }
                                        gmrVar4.v.f(true);
                                        return;
                                    }
                                }
                                packageManager = packageManager2;
                                str = str7;
                                str2 = str8;
                                i = i3;
                                fqhVar2.o = packageName;
                                fqhVar2.j = str;
                                fqhVar2.p = str2;
                                fqhVar2.u = i;
                                fqhVar2.f17242g = 0L;
                                z = TextUtils.isEmpty(str6) && "am".equals(cygVar4.l);
                                av = cygVar4.av();
                                switch (av) {
                                    case 0:
                                        j = 0;
                                        cyg.ak(bgmVar5);
                                        bgmVar5.f11519c.h("App measurement collection enabled");
                                        break;
                                    case 1:
                                        j = 0;
                                        cyg.ak(bgmVar5);
                                        bgmVar5.p.h("App measurement deactivated via the manifest");
                                        break;
                                    case 2:
                                        j = 0;
                                        cyg.ak(bgmVar5);
                                        bgmVar5.f11519c.h("App measurement deactivated via the init parameters");
                                        break;
                                    case 3:
                                        j = 0;
                                        cyg.ak(bgmVar5);
                                        bgmVar5.p.h("App measurement disabled by setAnalyticsCollectionEnabled(false)");
                                        break;
                                    case 4:
                                        j = 0;
                                        cyg.ak(bgmVar5);
                                        bgmVar5.p.h("App measurement disabled via the manifest");
                                        break;
                                    case 5:
                                        j = 0;
                                        cyg.ak(bgmVar5);
                                        bgmVar5.f11519c.h("App measurement disabled via the init parameters");
                                        break;
                                    case 6:
                                        j = 0;
                                        cyg.ak(bgmVar5);
                                        bgmVar5.h.h("App measurement deactivated via resources. This method is being deprecated. Please refer to https://firebase.google.com/support/guides/disable-analytics");
                                        break;
                                    case 7:
                                        j = 0;
                                        cyg.ak(bgmVar5);
                                        bgmVar5.p.h("App measurement disabled via the global data collection setting");
                                        break;
                                    default:
                                        cyg.ak(bgmVar5);
                                        j = 0;
                                        bgmVar5.p.h("App measurement disabled due to denied storage consent");
                                        break;
                                }
                                fqhVar2.t = "";
                                fqhVar2.r = "";
                                if (z) {
                                    fqhVar2.r = str6;
                                }
                                av2 = cux.av(context2, str5);
                                fqhVar2.t = true != TextUtils.isEmpty(av2) ? av2 : "";
                                if (!TextUtils.isEmpty(av2)) {
                                    Resources resources = context2.getResources();
                                    if (TextUtils.isEmpty(str5)) {
                                        str5 = awt.v(context2);
                                    }
                                    int identifier = resources.getIdentifier("admob_app_id", "string", str5);
                                    if (identifier != 0) {
                                        try {
                                            string = resources.getString(identifier);
                                        } catch (Resources.NotFoundException unused4) {
                                        }
                                        fqhVar2.r = string;
                                    }
                                    string = null;
                                    fqhVar2.r = string;
                                }
                                if (av == 0) {
                                    cyg.ak(bgmVar5);
                                    bgmVar5.f11519c.e(fqhVar2.o, "App measurement enabled for app package, google app id", TextUtils.isEmpty(fqhVar2.t) ? fqhVar2.r : fqhVar2.t);
                                }
                                fqhVar2.l = null;
                                dsd dsdVar22 = cygVar4.f13747e;
                                cyg cygVar52 = (cyg) dsdVar22.z;
                                ckd.bf("analytics.safelisted_events");
                                t = dsdVar22.t();
                                if (t != null) {
                                    bgm bgmVar6 = cygVar52.z;
                                    cyg.ak(bgmVar6);
                                    bgmVar6.f11518b.h("Failed to load metadata: Metadata bundle is null");
                                } else if (t.containsKey("analytics.safelisted_events")) {
                                    valueOf = Integer.valueOf(t.getInt("analytics.safelisted_events"));
                                    if (valueOf != null) {
                                        try {
                                            stringArray = cygVar52.v.getResources().getStringArray(valueOf.intValue());
                                        } catch (Resources.NotFoundException e4) {
                                            bgm bgmVar7 = cygVar52.z;
                                            cyg.ak(bgmVar7);
                                            bgmVar7.f11518b.i(e4, "Failed to load string array from metadata: resource not found");
                                        }
                                        if (stringArray != null) {
                                            asList = Arrays.asList(stringArray);
                                            if (asList != null) {
                                                if (asList.isEmpty()) {
                                                    cyg.ak(bgmVar5);
                                                    bgmVar5.h.h("Safelisted event list is empty. Ignoring");
                                                } else {
                                                    for (String str11 : asList) {
                                                        dkq dkqVar2 = cygVar4.m;
                                                        cyg.ai(dkqVar2);
                                                        if (!dkqVar2.bd("safelisted event", str11)) {
                                                        }
                                                    }
                                                }
                                                if (packageManager != null) {
                                                    fqhVar2.m = ckd.bd(context2) ? 1 : 0;
                                                } else {
                                                    fqhVar2.m = 0;
                                                }
                                                cygVar4.aq();
                                                fqhVar2.f19772a = true;
                                                cyg.ak(bgmVar3);
                                                dvb dvbVar2 = bgmVar3.p;
                                                dsdVar.n();
                                                dvbVar2.i(73000L, "App measurement initialized, version");
                                                cyg.ak(bgmVar3);
                                                dvbVar2.h("To enable debug logging run: adb shell setprop log.tag.FA VERBOSE");
                                                String x2 = fqhVar.x();
                                                if (TextUtils.isEmpty(cygVar2.aa)) {
                                                    if (TextUtils.isEmpty(x2) ? false : cygVar3.f13747e.u("debug.firebase.analytics.app").equals(x2)) {
                                                        cyg.ak(bgmVar3);
                                                        dvbVar2.h("Faster debug mode event logging enabled. To disable, run:\n  adb shell setprop debug.firebase.analytics.app .none.");
                                                    } else {
                                                        cyg.ak(bgmVar3);
                                                        dvbVar2.h("To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app ".concat(String.valueOf(x2)));
                                                    }
                                                }
                                                cyg.ak(bgmVar3);
                                                bgmVar3.o.h("Debug-level message logging enabled");
                                                if (cygVar2.s != atomicInteger.get()) {
                                                    cyg.ak(bgmVar3);
                                                    bgmVar3.f11518b.e(Integer.valueOf(cygVar2.s), "Not all components initialized", Integer.valueOf(atomicInteger.get()));
                                                }
                                                cygVar2.x = true;
                                                apu apuVar2 = acuVar.j;
                                                Context context32 = cygVar2.v;
                                                long j22 = cygVar2.ah;
                                                csp cspVar2 = cygVar2.f13745c;
                                                cyg.ak(fthVar);
                                                fthVar._e();
                                                cyg.ai(gmrVar);
                                                gmr gmrVar42 = gmrVar;
                                                dxb dxbVar3 = gmrVar42.f18414g;
                                                dxb dxbVar22 = gmrVar42.h;
                                                fouVar = gmrVar42.ap;
                                                rs as22 = gmrVar42.as();
                                                gmrVar42._e();
                                                int i42 = gmrVar42.ar().getInt("consent_source", 100);
                                                Object obj2 = dsdVar.z;
                                                h = dsdVar.h("google_analytics_default_allow_ad_storage");
                                                h2 = dsdVar.h("google_analytics_default_allow_analytics_storage");
                                                if ((h == null || h2 != null) && gmrVar42.aq(-10)) {
                                                    rsVar = new rs(h, h2);
                                                    i2 = -10;
                                                } else {
                                                    if (!TextUtils.isEmpty(cygVar2.at().v()) && (i42 == 0 || i42 == 30 || i42 == 10 || i42 == 30 || i42 == 30 || i42 == 40)) {
                                                        cyg.aj(cspVar2);
                                                        cspVar2.as(rs.f19921a, -10, j22);
                                                    } else if (TextUtils.isEmpty(cygVar2.at().v()) && apuVar2 != null && apuVar2.zzg != null && gmrVar42.aq(30)) {
                                                        rsVar = rs.c(apuVar2.zzg);
                                                        if (!rsVar.equals(rs.f19921a)) {
                                                            i2 = 30;
                                                        }
                                                    }
                                                    rsVar = null;
                                                    i2 = 100;
                                                }
                                                if (rsVar != null) {
                                                    cyg.aj(cspVar2);
                                                    cspVar2.as(rsVar, i2, j22);
                                                    rsVar2 = rsVar;
                                                } else {
                                                    rsVar2 = as22;
                                                }
                                                cyg.aj(cspVar2);
                                                cspVar2.ar(rsVar2);
                                                if (fouVar.f() == j) {
                                                    cyg.ak(bgmVar3);
                                                    bgmVar3.f11519c.i(Long.valueOf(j22), "Persisting first open");
                                                    fouVar.g(j22);
                                                }
                                                cyg.aj(cspVar2);
                                                bzvVar = cspVar2.k;
                                                if (bzvVar.e() && bzvVar.h()) {
                                                    gmr gmrVar5 = ((cyg) bzvVar.f12530b).f13744b;
                                                    cyg.ai(gmrVar5);
                                                    gmrVar5.p.l(null);
                                                }
                                                if (cygVar2.au()) {
                                                    if (TextUtils.isEmpty(cygVar2.at().v())) {
                                                        fqh at = cygVar2.at();
                                                        at.zza();
                                                        if (TextUtils.isEmpty(at.r)) {
                                                            gmrVar2 = gmrVar42;
                                                            if (!gmrVar2.as().g(gxx.ANALYTICS_STORAGE)) {
                                                                dxbVar22.l(null);
                                                            }
                                                            cyg.aj(cspVar2);
                                                            cspVar2.f13446g.set(dxbVar22.i());
                                                            ((gbh) ear.f15205a.f15206b.zza()).getClass();
                                                            if (dsdVar.g(null, gad.q)) {
                                                                cyg.ai(dkqVar);
                                                                try {
                                                                    ((cyg) dkqVar.z).v.getClassLoader().loadClass("com.google.firebase.remoteconfig.FirebaseRemoteConfig");
                                                                } catch (ClassNotFoundException unused5) {
                                                                    if (!TextUtils.isEmpty(dxbVar3.i())) {
                                                                        cyg.ak(bgmVar3);
                                                                        bgmVar3.f11520g.h("Remote config removed with active feature rollouts");
                                                                        dxbVar3.l(null);
                                                                    }
                                                                }
                                                            }
                                                            if (TextUtils.isEmpty(cygVar2.at().v())) {
                                                                fqh at2 = cygVar2.at();
                                                                at2.zza();
                                                                if (TextUtils.isEmpty(at2.r)) {
                                                                    gmrVar42 = gmrVar2;
                                                                }
                                                            }
                                                            as = cygVar2.as();
                                                            gmrVar42 = gmrVar2;
                                                            sharedPreferences = gmrVar42.r;
                                                            if (!(sharedPreferences != null ? false : sharedPreferences.contains("deferred_analytics_collection")) && !dsdVar.m()) {
                                                                gmrVar42.at(!as);
                                                            }
                                                            if (as) {
                                                                cyg.aj(cspVar2);
                                                                cspVar2.am();
                                                            }
                                                            cjv cjvVar = cygVar2.n;
                                                            cyg.aj(cjvVar);
                                                            cjvVar.j.zza();
                                                            cygVar2.ao().r(new AtomicReference());
                                                            dbb ao = cygVar2.ao();
                                                            Bundle p = gmrVar42.w.p();
                                                            ao._e();
                                                            ao.zza();
                                                            ao.s(new eax(ao, ao.q(false), p, 20));
                                                        }
                                                    }
                                                    cyg.ai(dkqVar);
                                                    String v = cygVar2.at().v();
                                                    gmrVar42._e();
                                                    String string2 = gmrVar42.ar().getString("gmp_app_id", null);
                                                    fqh at3 = cygVar2.at();
                                                    at3.zza();
                                                    String str12 = at3.r;
                                                    gmrVar42._e();
                                                    gmrVar2 = gmrVar42;
                                                    if (dkq.m(v, string2, str12, gmrVar2.ar().getString("admob_app_id", null))) {
                                                        cyg.ak(bgmVar3);
                                                        bgmVar3.p.h("Rechecking which service to use due to a GMP App Id change");
                                                        gmrVar2._e();
                                                        gmrVar2._e();
                                                        Boolean valueOf2 = gmrVar2.ar().contains("measurement_enabled") ? Boolean.valueOf(gmrVar2.ar().getBoolean("measurement_enabled", true)) : null;
                                                        SharedPreferences.Editor edit2 = gmrVar2.ar().edit();
                                                        edit2.clear();
                                                        edit2.apply();
                                                        if (valueOf2 != null) {
                                                            gmrVar2._e();
                                                            SharedPreferences.Editor edit3 = gmrVar2.ar().edit();
                                                            edit3.putBoolean("measurement_enabled", valueOf2.booleanValue());
                                                            edit3.apply();
                                                        }
                                                        cygVar2.an().j();
                                                        cygVar2.o.am();
                                                        cygVar2.o.an();
                                                        fouVar.g(j22);
                                                        dxbVar22.l(null);
                                                    }
                                                    String v2 = cygVar2.at().v();
                                                    gmrVar2._e();
                                                    SharedPreferences.Editor edit4 = gmrVar2.ar().edit();
                                                    edit4.putString("gmp_app_id", v2);
                                                    edit4.apply();
                                                    fqh at4 = cygVar2.at();
                                                    at4.zza();
                                                    String str13 = at4.r;
                                                    gmrVar2._e();
                                                    SharedPreferences.Editor edit5 = gmrVar2.ar().edit();
                                                    edit5.putString("admob_app_id", str13);
                                                    edit5.apply();
                                                    if (!gmrVar2.as().g(gxx.ANALYTICS_STORAGE)) {
                                                    }
                                                    cyg.aj(cspVar2);
                                                    cspVar2.f13446g.set(dxbVar22.i());
                                                    ((gbh) ear.f15205a.f15206b.zza()).getClass();
                                                    if (dsdVar.g(null, gad.q)) {
                                                    }
                                                    if (TextUtils.isEmpty(cygVar2.at().v())) {
                                                    }
                                                    as = cygVar2.as();
                                                    gmrVar42 = gmrVar2;
                                                    sharedPreferences = gmrVar42.r;
                                                    if (!(sharedPreferences != null ? false : sharedPreferences.contains("deferred_analytics_collection"))) {
                                                        gmrVar42.at(!as);
                                                    }
                                                    if (as) {
                                                    }
                                                    cjv cjvVar2 = cygVar2.n;
                                                    cyg.aj(cjvVar2);
                                                    cjvVar2.j.zza();
                                                    cygVar2.ao().r(new AtomicReference());
                                                    dbb ao2 = cygVar2.ao();
                                                    Bundle p2 = gmrVar42.w.p();
                                                    ao2._e();
                                                    ao2.zza();
                                                    ao2.s(new eax(ao2, ao2.q(false), p2, 20));
                                                } else if (cygVar2.as()) {
                                                    cyg.ai(dkqVar);
                                                    if (!dkqVar.bk("android.permission.INTERNET")) {
                                                        cyg.ak(bgmVar3);
                                                        bgmVar3.f11518b.h("App is missing INTERNET permission");
                                                    }
                                                    if (!dkqVar.bk("android.permission.ACCESS_NETWORK_STATE")) {
                                                        cyg.ak(bgmVar3);
                                                        bgmVar3.f11518b.h("App is missing ACCESS_NETWORK_STATE permission");
                                                    }
                                                    if (!chk.c(context32).d() && !dsdVar.s()) {
                                                        if (!dkq.p(context32)) {
                                                            cyg.ak(bgmVar3);
                                                            bgmVar3.f11518b.h("AppMeasurementReceiver not registered/enabled");
                                                        }
                                                        if (!dkq.o(context32)) {
                                                            cyg.ak(bgmVar3);
                                                            bgmVar3.f11518b.h("AppMeasurementService not registered/enabled");
                                                        }
                                                    }
                                                    cyg.ak(bgmVar3);
                                                    bgmVar3.f11518b.h("Uploading is not possible. App measurement disabled");
                                                }
                                                gmrVar42.v.f(true);
                                                return;
                                            }
                                            fqhVar2.l = asList;
                                            if (packageManager != null) {
                                            }
                                            cygVar4.aq();
                                            fqhVar2.f19772a = true;
                                            cyg.ak(bgmVar3);
                                            dvb dvbVar22 = bgmVar3.p;
                                            dsdVar.n();
                                            dvbVar22.i(73000L, "App measurement initialized, version");
                                            cyg.ak(bgmVar3);
                                            dvbVar22.h("To enable debug logging run: adb shell setprop log.tag.FA VERBOSE");
                                            String x22 = fqhVar.x();
                                            if (TextUtils.isEmpty(cygVar2.aa)) {
                                            }
                                            cyg.ak(bgmVar3);
                                            bgmVar3.o.h("Debug-level message logging enabled");
                                            if (cygVar2.s != atomicInteger.get()) {
                                            }
                                            cygVar2.x = true;
                                            apu apuVar22 = acuVar.j;
                                            Context context322 = cygVar2.v;
                                            long j222 = cygVar2.ah;
                                            csp cspVar22 = cygVar2.f13745c;
                                            cyg.ak(fthVar);
                                            fthVar._e();
                                            cyg.ai(gmrVar);
                                            gmr gmrVar422 = gmrVar;
                                            dxb dxbVar32 = gmrVar422.f18414g;
                                            dxb dxbVar222 = gmrVar422.h;
                                            fouVar = gmrVar422.ap;
                                            rs as222 = gmrVar422.as();
                                            gmrVar422._e();
                                            int i422 = gmrVar422.ar().getInt("consent_source", 100);
                                            Object obj22 = dsdVar.z;
                                            h = dsdVar.h("google_analytics_default_allow_ad_storage");
                                            h2 = dsdVar.h("google_analytics_default_allow_analytics_storage");
                                            if (h == null) {
                                            }
                                            rsVar = new rs(h, h2);
                                            i2 = -10;
                                            if (rsVar != null) {
                                            }
                                            cyg.aj(cspVar22);
                                            cspVar22.ar(rsVar2);
                                            if (fouVar.f() == j) {
                                            }
                                            cyg.aj(cspVar22);
                                            bzvVar = cspVar22.k;
                                            if (bzvVar.e()) {
                                                gmr gmrVar52 = ((cyg) bzvVar.f12530b).f13744b;
                                                cyg.ai(gmrVar52);
                                                gmrVar52.p.l(null);
                                            }
                                            if (cygVar2.au()) {
                                            }
                                            gmrVar422.v.f(true);
                                            return;
                                        }
                                    }
                                    asList = null;
                                    if (asList != null) {
                                    }
                                    fqhVar2.l = asList;
                                    if (packageManager != null) {
                                    }
                                    cygVar4.aq();
                                    fqhVar2.f19772a = true;
                                    cyg.ak(bgmVar3);
                                    dvb dvbVar222 = bgmVar3.p;
                                    dsdVar.n();
                                    dvbVar222.i(73000L, "App measurement initialized, version");
                                    cyg.ak(bgmVar3);
                                    dvbVar222.h("To enable debug logging run: adb shell setprop log.tag.FA VERBOSE");
                                    String x222 = fqhVar.x();
                                    if (TextUtils.isEmpty(cygVar2.aa)) {
                                    }
                                    cyg.ak(bgmVar3);
                                    bgmVar3.o.h("Debug-level message logging enabled");
                                    if (cygVar2.s != atomicInteger.get()) {
                                    }
                                    cygVar2.x = true;
                                    apu apuVar222 = acuVar.j;
                                    Context context3222 = cygVar2.v;
                                    long j2222 = cygVar2.ah;
                                    csp cspVar222 = cygVar2.f13745c;
                                    cyg.ak(fthVar);
                                    fthVar._e();
                                    cyg.ai(gmrVar);
                                    gmr gmrVar4222 = gmrVar;
                                    dxb dxbVar322 = gmrVar4222.f18414g;
                                    dxb dxbVar2222 = gmrVar4222.h;
                                    fouVar = gmrVar4222.ap;
                                    rs as2222 = gmrVar4222.as();
                                    gmrVar4222._e();
                                    int i4222 = gmrVar4222.ar().getInt("consent_source", 100);
                                    Object obj222 = dsdVar.z;
                                    h = dsdVar.h("google_analytics_default_allow_ad_storage");
                                    h2 = dsdVar.h("google_analytics_default_allow_analytics_storage");
                                    if (h == null) {
                                    }
                                    rsVar = new rs(h, h2);
                                    i2 = -10;
                                    if (rsVar != null) {
                                    }
                                    cyg.aj(cspVar222);
                                    cspVar222.ar(rsVar2);
                                    if (fouVar.f() == j) {
                                    }
                                    cyg.aj(cspVar222);
                                    bzvVar = cspVar222.k;
                                    if (bzvVar.e()) {
                                    }
                                    if (cygVar2.au()) {
                                    }
                                    gmrVar4222.v.f(true);
                                    return;
                                }
                                valueOf = null;
                                if (valueOf != null) {
                                }
                                asList = null;
                                if (asList != null) {
                                }
                                fqhVar2.l = asList;
                                if (packageManager != null) {
                                }
                                cygVar4.aq();
                                fqhVar2.f19772a = true;
                                cyg.ak(bgmVar3);
                                dvb dvbVar2222 = bgmVar3.p;
                                dsdVar.n();
                                dvbVar2222.i(73000L, "App measurement initialized, version");
                                cyg.ak(bgmVar3);
                                dvbVar2222.h("To enable debug logging run: adb shell setprop log.tag.FA VERBOSE");
                                String x2222 = fqhVar.x();
                                if (TextUtils.isEmpty(cygVar2.aa)) {
                                }
                                cyg.ak(bgmVar3);
                                bgmVar3.o.h("Debug-level message logging enabled");
                                if (cygVar2.s != atomicInteger.get()) {
                                }
                                cygVar2.x = true;
                                apu apuVar2222 = acuVar.j;
                                Context context32222 = cygVar2.v;
                                long j22222 = cygVar2.ah;
                                csp cspVar2222 = cygVar2.f13745c;
                                cyg.ak(fthVar);
                                fthVar._e();
                                cyg.ai(gmrVar);
                                gmr gmrVar42222 = gmrVar;
                                dxb dxbVar3222 = gmrVar42222.f18414g;
                                dxb dxbVar22222 = gmrVar42222.h;
                                fouVar = gmrVar42222.ap;
                                rs as22222 = gmrVar42222.as();
                                gmrVar42222._e();
                                int i42222 = gmrVar42222.ar().getInt("consent_source", 100);
                                Object obj2222 = dsdVar.z;
                                h = dsdVar.h("google_analytics_default_allow_ad_storage");
                                h2 = dsdVar.h("google_analytics_default_allow_analytics_storage");
                                if (h == null) {
                                }
                                rsVar = new rs(h, h2);
                                i2 = -10;
                                if (rsVar != null) {
                                }
                                cyg.aj(cspVar2222);
                                cspVar2222.ar(rsVar2);
                                if (fouVar.f() == j) {
                                }
                                cyg.aj(cspVar2222);
                                bzvVar = cspVar2222.k;
                                if (bzvVar.e()) {
                                }
                                if (cygVar2.au()) {
                                }
                                gmrVar42222.v.f(true);
                                return;
                            }
                            str7 = str9;
                            packageInfo = packageManager2.getPackageInfo(context2.getPackageName(), 0);
                            if (packageInfo != null) {
                            }
                            packageManager = packageManager2;
                            str = str7;
                            str2 = str8;
                            i = i3;
                            fqhVar2.o = packageName;
                            fqhVar2.j = str;
                            fqhVar2.p = str2;
                            fqhVar2.u = i;
                            fqhVar2.f17242g = 0L;
                            if (TextUtils.isEmpty(str6)) {
                            }
                            av = cygVar4.av();
                            switch (av) {
                            }
                            fqhVar2.t = "";
                            fqhVar2.r = "";
                            if (z) {
                            }
                            av2 = cux.av(context2, str5);
                            fqhVar2.t = true != TextUtils.isEmpty(av2) ? av2 : "";
                            if (!TextUtils.isEmpty(av2)) {
                            }
                            if (av == 0) {
                            }
                            fqhVar2.l = null;
                            dsd dsdVar222 = cygVar4.f13747e;
                            cyg cygVar522 = (cyg) dsdVar222.z;
                            ckd.bf("analytics.safelisted_events");
                            t = dsdVar222.t();
                            if (t != null) {
                            }
                            valueOf = null;
                            if (valueOf != null) {
                            }
                            asList = null;
                            if (asList != null) {
                            }
                            fqhVar2.l = asList;
                            if (packageManager != null) {
                            }
                            cygVar4.aq();
                            fqhVar2.f19772a = true;
                            cyg.ak(bgmVar3);
                            dvb dvbVar22222 = bgmVar3.p;
                            dsdVar.n();
                            dvbVar22222.i(73000L, "App measurement initialized, version");
                            cyg.ak(bgmVar3);
                            dvbVar22222.h("To enable debug logging run: adb shell setprop log.tag.FA VERBOSE");
                            String x22222 = fqhVar.x();
                            if (TextUtils.isEmpty(cygVar2.aa)) {
                            }
                            cyg.ak(bgmVar3);
                            bgmVar3.o.h("Debug-level message logging enabled");
                            if (cygVar2.s != atomicInteger.get()) {
                            }
                            cygVar2.x = true;
                            apu apuVar22222 = acuVar.j;
                            Context context322222 = cygVar2.v;
                            long j222222 = cygVar2.ah;
                            csp cspVar22222 = cygVar2.f13745c;
                            cyg.ak(fthVar);
                            fthVar._e();
                            cyg.ai(gmrVar);
                            gmr gmrVar422222 = gmrVar;
                            dxb dxbVar32222 = gmrVar422222.f18414g;
                            dxb dxbVar222222 = gmrVar422222.h;
                            fouVar = gmrVar422222.ap;
                            rs as222222 = gmrVar422222.as();
                            gmrVar422222._e();
                            int i422222 = gmrVar422222.ar().getInt("consent_source", 100);
                            Object obj22222 = dsdVar.z;
                            h = dsdVar.h("google_analytics_default_allow_ad_storage");
                            h2 = dsdVar.h("google_analytics_default_allow_analytics_storage");
                            if (h == null) {
                            }
                            rsVar = new rs(h, h2);
                            i2 = -10;
                            if (rsVar != null) {
                            }
                            cyg.aj(cspVar22222);
                            cspVar22222.ar(rsVar2);
                            if (fouVar.f() == j) {
                            }
                            cyg.aj(cspVar22222);
                            bzvVar = cspVar22222.k;
                            if (bzvVar.e()) {
                            }
                            if (cygVar2.au()) {
                            }
                            gmrVar422222.v.f(true);
                            return;
                        }
                        cyg.ak(bgmVar5);
                        gmrVar = gmrVar3;
                        acuVar = acuVar2;
                        bgmVar5.f11518b.i(bgm.t(packageName), "PackageManager is null, app identity information might be inaccurate. appId");
                        packageManager = packageManager2;
                        str = str7;
                        str2 = str8;
                        i = Integer.MIN_VALUE;
                        fqhVar2.o = packageName;
                        fqhVar2.j = str;
                        fqhVar2.p = str2;
                        fqhVar2.u = i;
                        fqhVar2.f17242g = 0L;
                        if (TextUtils.isEmpty(str6)) {
                        }
                        av = cygVar4.av();
                        switch (av) {
                        }
                        fqhVar2.t = "";
                        fqhVar2.r = "";
                        if (z) {
                        }
                        av2 = cux.av(context2, str5);
                        fqhVar2.t = true != TextUtils.isEmpty(av2) ? av2 : "";
                        if (!TextUtils.isEmpty(av2)) {
                        }
                        if (av == 0) {
                        }
                        fqhVar2.l = null;
                        dsd dsdVar2222 = cygVar4.f13747e;
                        cyg cygVar5222 = (cyg) dsdVar2222.z;
                        ckd.bf("analytics.safelisted_events");
                        t = dsdVar2222.t();
                        if (t != null) {
                        }
                        valueOf = null;
                        if (valueOf != null) {
                        }
                        asList = null;
                        if (asList != null) {
                        }
                        fqhVar2.l = asList;
                        if (packageManager != null) {
                        }
                        cygVar4.aq();
                        fqhVar2.f19772a = true;
                        cyg.ak(bgmVar3);
                        dvb dvbVar222222 = bgmVar3.p;
                        dsdVar.n();
                        dvbVar222222.i(73000L, "App measurement initialized, version");
                        cyg.ak(bgmVar3);
                        dvbVar222222.h("To enable debug logging run: adb shell setprop log.tag.FA VERBOSE");
                        String x222222 = fqhVar.x();
                        if (TextUtils.isEmpty(cygVar2.aa)) {
                        }
                        cyg.ak(bgmVar3);
                        bgmVar3.o.h("Debug-level message logging enabled");
                        if (cygVar2.s != atomicInteger.get()) {
                        }
                        cygVar2.x = true;
                        apu apuVar222222 = acuVar.j;
                        Context context3222222 = cygVar2.v;
                        long j2222222 = cygVar2.ah;
                        csp cspVar222222 = cygVar2.f13745c;
                        cyg.ak(fthVar);
                        fthVar._e();
                        cyg.ai(gmrVar);
                        gmr gmrVar4222222 = gmrVar;
                        dxb dxbVar322222 = gmrVar4222222.f18414g;
                        dxb dxbVar2222222 = gmrVar4222222.h;
                        fouVar = gmrVar4222222.ap;
                        rs as2222222 = gmrVar4222222.as();
                        gmrVar4222222._e();
                        int i4222222 = gmrVar4222222.ar().getInt("consent_source", 100);
                        Object obj222222 = dsdVar.z;
                        h = dsdVar.h("google_analytics_default_allow_ad_storage");
                        h2 = dsdVar.h("google_analytics_default_allow_analytics_storage");
                        if (h == null) {
                        }
                        rsVar = new rs(h, h2);
                        i2 = -10;
                        if (rsVar != null) {
                        }
                        cyg.aj(cspVar222222);
                        cspVar222222.ar(rsVar2);
                        if (fouVar.f() == j) {
                        }
                        cyg.aj(cspVar222222);
                        bzvVar = cspVar222222.k;
                        if (bzvVar.e()) {
                        }
                        if (cygVar2.au()) {
                        }
                        gmrVar4222222.v.f(true);
                        return;
                    }
                }
                fthVar = fthVar4;
                dkqVar.h.set(nextLong);
                cygVar3.aq();
                dkqVar.am = true;
                if (!gmrVar3.am) {
                }
                break;
            case 4:
                bsz bszVar = ((zs) this.f17457a).f20414b;
                bszVar.ay();
                bou bouVar = (bou) this.f17459c;
                if (bouVar.zzc.zza() == null) {
                    bszVar.getClass();
                    String str14 = bouVar.zza;
                    ckd.k(str14);
                    afh az = bszVar.az(str14);
                    if (az != null) {
                        bszVar.bj(bouVar, az);
                        return;
                    }
                    return;
                }
                bszVar.getClass();
                String str15 = bouVar.zza;
                ckd.k(str15);
                afh az2 = bszVar.az(str15);
                if (az2 != null) {
                    bszVar.bg(bouVar, az2);
                    return;
                }
                return;
            case 5:
                zzgee zzgeeVar = (zzgee) this.f17457a;
                Future future = (Future) this.f17459c;
                if ((future instanceof zzgfk) && (zza = zzgfl.zza((zzgfk) future)) != null) {
                    zzgeeVar.zza(zza);
                    return;
                }
                try {
                    zzgeeVar.zzb(zzgei.zzp(future));
                    return;
                } catch (ExecutionException e5) {
                    zzgeeVar.zza(e5.getCause());
                    return;
                } catch (Throwable th) {
                    zzgeeVar.zza(th);
                    return;
                }
            case 6:
                fpd fpdVar = (fpd) this.f17459c;
                chw chwVar = ((eeo) this.f17457a).f15402a;
                Context context4 = (Context) fpdVar.f17190f;
                String string3 = fpd.m(context4).getString("app_set_id", null);
                long j3 = fpd.m(context4).getLong("app_set_id_last_used_time", -1L);
                long j4 = j3 != -1 ? 33696000000L + j3 : -1L;
                if (string3 == null || System.currentTimeMillis() > j4) {
                    string3 = UUID.randomUUID().toString();
                    try {
                        if (!context4.getSharedPreferences("app_set_id_storage", 0).edit().putString("app_set_id", string3).commit()) {
                            String valueOf3 = String.valueOf(context4.getPackageName());
                            Log.e("AppSet", valueOf3.length() != 0 ? "Failed to store app set ID generated for App ".concat(valueOf3) : new String("Failed to store app set ID generated for App "));
                            throw new auq("Failed to store the app set ID.");
                        }
                        fpd.r(context4);
                        if (!context4.getSharedPreferences("app_set_id_storage", 0).edit().putLong("app_set_id_creation_time", System.currentTimeMillis()).commit()) {
                            String valueOf4 = String.valueOf(context4.getPackageName());
                            Log.e("AppSet", valueOf4.length() != 0 ? "Failed to store app set ID creation time for App ".concat(valueOf4) : new String("Failed to store app set ID creation time for App "));
                            throw new auq("Failed to store the app set ID creation time.");
                        }
                    } catch (auq e6) {
                        chwVar.l(e6);
                        return;
                    }
                } else {
                    try {
                        fpd.r(context4);
                    } catch (auq e7) {
                        chwVar.l(e7);
                        return;
                    }
                }
                chwVar.m(new fro(string3, 1));
                return;
            case 7:
                csp cspVar3 = (csp) this.f17459c;
                String str16 = (String) this.f17457a;
                fqh at5 = ((cyg) cspVar3.z).at();
                String str17 = at5.s;
                boolean z5 = false;
                if (str17 != null && !str17.equals(str16)) {
                    z5 = true;
                }
                at5.s = str16;
                if (z5) {
                    ((cyg) cspVar3.z).at().w();
                    return;
                }
                return;
            case 8:
                ((csp) this.f17457a).ao((Boolean) this.f17459c, true);
                return;
            case 9:
                synchronized (((err) this.f17457a).f16049c) {
                    ((dyt) ((err) this.f17457a).f16048b).onComplete((ci) this.f17459c);
                }
                return;
            case 10:
                d();
                return;
            case 11:
                ((cwg) ((bbu) this.f17459c).f11243b).s.getWindow().setBackgroundDrawable((BitmapDrawable) this.f17457a);
                return;
            case 12:
                dbb dbbVar2 = (dbb) this.f17457a;
                ake akeVar = dbbVar2.l;
                cyg cygVar6 = (cyg) dbbVar2.z;
                if (akeVar == null) {
                    bgm bgmVar8 = cygVar6.z;
                    cyg.ak(bgmVar8);
                    bgmVar8.f11518b.h("Failed to send current screen to service");
                    return;
                }
                try {
                    ein einVar = (ein) this.f17459c;
                    if (einVar == null) {
                        akeVar.g(0L, null, null, cygVar6.v.getPackageName());
                    } else {
                        akeVar.g(einVar.f15600f, einVar.f15597c, einVar.f15599e, cygVar6.v.getPackageName());
                    }
                    dbbVar2.x();
                    return;
                } catch (RemoteException e8) {
                    bgm bgmVar9 = ((cyg) dbbVar2.z).z;
                    cyg.ak(bgmVar9);
                    bgmVar9.f11518b.i(e8, "Failed to send current screen to the service");
                    return;
                }
            case 13:
                dbb.o(((gyy) this.f17457a).f19034a, (ComponentName) this.f17459c);
                return;
            case 14:
                bsz bszVar2 = (bsz) this.f17459c;
                bszVar2.ay();
                Runnable runnable = (Runnable) this.f17457a;
                bszVar2.zzaz()._e();
                if (bszVar2.f12157c == null) {
                    bszVar2.f12157c = new ArrayList();
                }
                bszVar2.f12157c.add(runnable);
                bszVar2.bf();
                return;
            case 15:
                e();
                return;
            case 16:
                csp cspVar4 = ((AppMeasurementDynamiteService) this.f17457a).f8992a.f13745c;
                cyg.aj(cspVar4);
                ffm ffmVar = (ffm) this.f17459c;
                cspVar4._e();
                cspVar4.zza();
                ffm ffmVar2 = cspVar4.p;
                if (ffmVar != ffmVar2) {
                    ckd.an("EventInterceptor already set.", ffmVar2 == null);
                }
                cspVar4.p = ffmVar;
                return;
            case 17:
                f();
                return;
            default:
                chw chwVar2 = (chw) this.f17459c;
                try {
                    chwVar2.m(((Callable) this.f17457a).call());
                    return;
                } catch (Exception e9) {
                    chwVar2.l(e9);
                    return;
                } catch (Throwable th2) {
                    chwVar2.l(new RuntimeException(th2));
                    return;
                }
        }
    }

    public String toString() {
        switch (this.f17458b) {
            case 5:
                zzfwk zza = zzfwm.zza(this);
                zza.zza((zzgee) this.f17457a);
                return zza.toString();
            default:
                return super.toString();
        }
    }
}
