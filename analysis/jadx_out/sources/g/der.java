package g;

import android.content.Context;
import android.graphics.Point;
import android.net.Uri;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.WebView;
import com.google.android.gms.internal.ads.zzavc;
import com.google.android.gms.internal.ads.zzbce;
import com.google.android.gms.internal.ads.zzbcl;
import com.google.android.gms.internal.ads.zzbcn;
import com.google.android.gms.internal.ads.zzbds;
import com.google.android.gms.internal.ads.zzbeg;
import com.google.android.gms.internal.ads.zzbes;
import com.google.android.gms.internal.ads.zzbtv;
import com.google.android.gms.internal.ads.zzbue;
import com.google.android.gms.internal.ads.zzbze;
import com.google.android.gms.internal.ads.zzbzg;
import com.google.android.gms.internal.ads.zzbzl;
import com.google.android.gms.internal.ads.zzcaj;
import com.google.android.gms.internal.ads.zzchk;
import com.google.android.gms.internal.ads.zzcta;
import com.google.android.gms.internal.ads.zzcuz;
import com.google.android.gms.internal.ads.zzcvu;
import com.google.android.gms.internal.ads.zzcvw;
import com.google.android.gms.internal.ads.zzdcd;
import com.google.android.gms.internal.ads.zzdoc;
import com.google.android.gms.internal.ads.zzdrv;
import com.google.android.gms.internal.ads.zzdsr;
import com.google.android.gms.internal.ads.zzdta;
import com.google.android.gms.internal.ads.zzffm;
import com.google.android.gms.internal.ads.zzffs;
import com.google.android.gms.internal.ads.zzfgn;
import com.google.android.gms.internal.ads.zzfjz;
import com.google.android.gms.internal.ads.zzfka;
import com.google.android.gms.internal.ads.zzfkl;
import com.google.android.gms.internal.ads.zzfko;
import com.google.android.gms.internal.ads.zzflr;
import com.google.android.gms.internal.ads.zzfxf;
import com.google.android.gms.internal.ads.zzgdp;
import com.google.android.gms.internal.ads.zzgdz;
import com.google.android.gms.internal.ads.zzgei;
import com.google.android.gms.internal.ads.zzges;
import com.google.android.gms.internal.ads.zzhgf;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class der extends zzbzg {
    public final ArrayList aa;

    /* renamed from: ab, reason: collision with root package name */
    public final ArrayList f14068ab;
    public Context ae;
    public final boolean af;
    public final ArrayList ag;
    public final String ai;
    public final boolean aj;
    public final zzges ak;

    /* renamed from: e, reason: collision with root package name */
    public zzbue f14069e;

    /* renamed from: f, reason: collision with root package name */
    public final boolean f14070f;

    /* renamed from: g, reason: collision with root package name */
    public final akx f14071g;
    public final ScheduledExecutorService h;
    public final ArrayList i;
    public final String j;
    public final boolean k;
    public final zzbds m;
    public final zzavc p;
    public final zzflr q;
    public final zzdsr r;
    public String s;
    public final bsn t;
    public final zzffs v;
    public final sq w;
    public final zzfgn x;
    public final String y;
    public final zzchk z;

    /* renamed from: d, reason: collision with root package name */
    public static final ArrayList f14067d = new ArrayList(Arrays.asList("/aclk", "/pcs/click", "/dbm/clk"));

    /* renamed from: c, reason: collision with root package name */
    public static final ArrayList f14066c = new ArrayList(Arrays.asList(".doubleclick.net", ".googleadservices.com"));

    /* renamed from: b, reason: collision with root package name */
    public static final ArrayList f14065b = new ArrayList(Arrays.asList("/pagead/adview", "/pcs/view", "/pagead/conversion", "/dbm/ad"));

    /* renamed from: a, reason: collision with root package name */
    public static final ArrayList f14064a = new ArrayList(Arrays.asList(".doubleclick.net", ".googleadservices.com", ".googlesyndication.com"));
    public Point ad = new Point();
    public Point n = new Point();
    public final AtomicInteger u = new AtomicInteger(0);
    public final AtomicBoolean ah = new AtomicBoolean(false);
    public final AtomicBoolean ac = new AtomicBoolean(false);
    public final AtomicInteger o = new AtomicInteger(0);

    public der(zzchk zzchkVar, Context context, zzavc zzavcVar, zzfgn zzfgnVar, zzges zzgesVar, ScheduledExecutorService scheduledExecutorService, zzdsr zzdsrVar, zzflr zzflrVar, akx akxVar, zzbds zzbdsVar, zzffs zzffsVar, sq sqVar, bsn bsnVar) {
        ArrayList arrayList;
        this.z = zzchkVar;
        this.ae = context;
        this.p = zzavcVar;
        this.v = zzffsVar;
        this.x = zzfgnVar;
        this.ak = zzgesVar;
        this.h = scheduledExecutorService;
        this.r = zzdsrVar;
        this.q = zzflrVar;
        this.f14071g = akxVar;
        this.m = zzbdsVar;
        zzbce zzbceVar = zzbcn.zzgV;
        edt edtVar = edt.f15376a;
        this.aj = ((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue();
        zzbce zzbceVar2 = zzbcn.zzgU;
        zzbcl zzbclVar = edtVar.f15379d;
        this.af = ((Boolean) zzbclVar.zza(zzbceVar2)).booleanValue();
        this.k = ((Boolean) zzbclVar.zza(zzbcn.zzgX)).booleanValue();
        this.f14070f = ((Boolean) zzbclVar.zza(zzbcn.zzgZ)).booleanValue();
        this.ai = (String) zzbclVar.zza(zzbcn.zzgY);
        this.y = (String) zzbclVar.zza(zzbcn.zzha);
        this.j = (String) zzbclVar.zza(zzbcn.zzhb);
        this.w = sqVar;
        this.t = bsnVar;
        if (((Boolean) zzbclVar.zza(zzbcn.zzhc)).booleanValue()) {
            this.ag = al((String) zzbclVar.zza(zzbcn.zzhd));
            this.f14068ab = al((String) zzbclVar.zza(zzbcn.zzhe));
            this.i = al((String) zzbclVar.zza(zzbcn.zzhf));
            arrayList = al((String) zzbclVar.zza(zzbcn.zzhg));
        } else {
            this.ag = f14067d;
            this.f14068ab = f14066c;
            this.i = f14065b;
            arrayList = f14064a;
        }
        this.aa = arrayList;
    }

    public static final ArrayList al(String str) {
        String[] split = TextUtils.split(str, ",");
        ArrayList arrayList = new ArrayList();
        for (String str2 : split) {
            if (!zzfxf.zzd(str2)) {
                arrayList.add(str2);
            }
        }
        return arrayList;
    }

    public static final Uri am(Uri uri, String str, String str2) {
        String uri2 = uri.toString();
        int indexOf = uri2.indexOf("&adurl=");
        if (indexOf == -1) {
            indexOf = uri2.indexOf("?adurl=");
        }
        if (indexOf == -1) {
            return uri.buildUpon().appendQueryParameter(str, str2).build();
        }
        int i = indexOf + 1;
        StringBuilder sb = new StringBuilder(uri2.substring(0, i));
        awf.y(sb, str, "=", str2, "&");
        sb.append(uri2.substring(i));
        return Uri.parse(sb.toString());
    }

    public static zzfkl an(dcy dcyVar, zzbzl zzbzlVar) {
        if (zzfko.zza() && ((Boolean) zzbeg.zze.zze()).booleanValue()) {
            try {
                zzfkl zzfklVar = (zzfkl) ((com.google.android.gms.internal.ads.g) ((pq) zzgei.zzp(dcyVar))).af.zzb();
                zzfklVar.zzd(new ArrayList(Collections.singletonList(zzbzlVar.zzb)));
                aeh aehVar = zzbzlVar.zzd;
                zzfklVar.zzb(aehVar == null ? "" : aehVar.zzp);
                zzfklVar.zzf(zzbzlVar.zzd.zzm);
                return zzfklVar;
            } catch (ExecutionException e2) {
                ti.f20033a.f20034ab.zzw(e2, "SignalGeneratorImpl.getConfiguredCriticalUserJourney");
            }
        }
        return null;
    }

    public static boolean ao(Uri uri, List list, List list2) {
        String host = uri.getHost();
        String path = uri.getPath();
        if (host != null && path != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                if (path.contains((String) it.next())) {
                    Iterator it2 = list2.iterator();
                    while (it2.hasNext()) {
                        if (host.endsWith((String) it2.next())) {
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    public final void ap() {
        zzbce zzbceVar = zzbcn.zzjg;
        edt edtVar = edt.f15376a;
        if (((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue()) {
            if (((Boolean) edtVar.f15379d.zza(zzbcn.zzjj)).booleanValue()) {
                return;
            }
            if (((Boolean) edtVar.f15379d.zza(zzbcn.zzjn)).booleanValue() && this.ah.getAndSet(true)) {
                return;
            }
            as();
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public final com.google.android.gms.internal.ads.g aq(Context context, String str, String str2, eno enoVar, aeh aehVar, Bundle bundle) {
        eno enoVar2;
        char c2;
        zzffm zzffmVar = new zzffm();
        if ("REWARDED".equals(str2)) {
            zzffmVar.zzp().zza(2);
        } else if ("REWARDED_INTERSTITIAL".equals(str2)) {
            zzffmVar.zzp().zza(3);
        }
        my zzp = this.z.zzp();
        zzcvu zzcvuVar = new zzcvu();
        zzcvuVar.zze(context);
        zzffmVar.zzt(str == null ? "adUnitId" : str);
        zzffmVar.zzH(aehVar == null ? new aeh(8, -1L, new Bundle(), -1, new ArrayList(), false, -1, false, null, null, null, null, new Bundle(), new Bundle(), new ArrayList(), null, null, false, null, -1, null, new ArrayList(), 60000, null, ddh.DEFAULT.b(), 0L) : aehVar);
        if (enoVar == null) {
            switch (str2.hashCode()) {
                case -1999289321:
                    if (str2.equals("NATIVE")) {
                        c2 = 3;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -428325382:
                    if (str2.equals("APP_OPEN_AD")) {
                        c2 = 4;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 543046670:
                    if (str2.equals("REWARDED")) {
                        c2 = 1;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 1854800829:
                    if (str2.equals("REWARDED_INTERSTITIAL")) {
                        c2 = 2;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 1951953708:
                    if (str2.equals("BANNER")) {
                        c2 = 0;
                        break;
                    }
                    c2 = 65535;
                    break;
                default:
                    c2 = 65535;
                    break;
            }
            enoVar2 = c2 != 0 ? (c2 == 1 || c2 == 2) ? eno.zzd() : c2 != 3 ? c2 != 4 ? new eno() : eno.zzb() : eno.zzc() : new eno(context, gin.f18199a);
        } else {
            enoVar2 = enoVar;
        }
        zzffmVar.zzs(enoVar2);
        zzffmVar.zzz(true);
        zzffmVar.zzA(bundle);
        zzcvuVar.zzi(zzffmVar.zzJ());
        dzh dzhVar = (dzh) zzp;
        dzhVar.f15121f = zzcvuVar.zzj();
        hy hyVar = new hy();
        hyVar.f19400b = str2;
        dzhVar.f15122g = new dup(hyVar);
        new zzdcd();
        zzhgf.zzc((zzcvw) dzhVar.f15121f, zzcvw.class);
        zzhgf.zzc((dup) dzhVar.f15122g, dup.class);
        dup dupVar = (dup) dzhVar.f15122g;
        new zzcta();
        return new com.google.android.gms.internal.ads.g((bxr) dzhVar.i, dupVar, new zzcuz(), new zzdta(), (zzcvw) dzhVar.f15121f);
    }

    public final void ar(List list, bjq bjqVar, zzbtv zzbtvVar, boolean z) {
        ArrayList arrayList;
        ArrayList arrayList2;
        dcy dcyVar;
        Map map;
        if (!((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzhm)).booleanValue()) {
            agd.b("The updating URL feature is not enabled.");
            try {
                zzbtvVar.zze("The updating URL feature is not enabled.");
                return;
            } catch (RemoteException e2) {
                agd.f("", e2);
                return;
            }
        }
        Iterator it = list.iterator();
        int i = 0;
        while (true) {
            boolean hasNext = it.hasNext();
            arrayList = this.f14068ab;
            arrayList2 = this.ag;
            if (!hasNext) {
                break;
            } else if (ao((Uri) it.next(), arrayList2, arrayList)) {
                i++;
            }
        }
        if (i > 1) {
            agd.b("Multiple google urls found: ".concat(String.valueOf(list)));
        }
        ArrayList arrayList3 = new ArrayList();
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            Uri uri = (Uri) it2.next();
            if (ao(uri, arrayList2, arrayList)) {
                cao caoVar = new cao(this, uri, bjqVar, 1);
                zzges zzgesVar = this.ak;
                dcy zzb = zzgesVar.zzb(caoVar);
                zzbue zzbueVar = this.f14069e;
                if (zzbueVar == null || (map = zzbueVar.zzb) == null || map.isEmpty()) {
                    agd.k("Asset view map is empty.");
                    dcyVar = zzb;
                } else {
                    dcyVar = zzgei.zzn(zzb, new acy(this, 0), zzgesVar);
                }
            } else {
                agd.b("Not a Google URL: ".concat(String.valueOf(uri)));
                dcyVar = zzgei.zzh(uri);
            }
            arrayList3.add(dcyVar);
        }
        zzgei.zzr(zzgei.zzd(arrayList3), new exn(this, zzbtvVar, z, 1), this.z.zzC());
    }

    public final void as() {
        der derVar;
        dcy dcyVar;
        if (((Boolean) zzbes.zzb.zze()).booleanValue()) {
            sq sqVar = this.w;
            synchronized (sqVar) {
                sqVar.j(true);
                sqVar.j(false);
            }
            return;
        }
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzkK)).booleanValue()) {
            dcyVar = zzgei.zzk(new eig(this), zzcaj.zza);
            derVar = this;
        } else {
            derVar = this;
            dcyVar = (dcy) derVar.aq(this.ae, null, bme.BANNER.name(), null, null, new Bundle()).ai.zzb();
        }
        zzgei.zzr(dcyVar, new eig(this), derVar.z.zzC());
    }

    public final zzgdz at(final String str) {
        final zzdoc[] zzdocVarArr = new zzdoc[1];
        dcy zza = this.x.zza();
        zzgdp zzgdpVar = new zzgdp() { // from class: g.dlj
            @Override // com.google.android.gms.internal.ads.zzgdp
            public final dcy zza(Object obj) {
                zzdoc zzdocVar = (zzdoc) obj;
                der derVar = der.this;
                derVar.getClass();
                zzdocVarArr[0] = zzdocVar;
                Context context = derVar.ae;
                zzbue zzbueVar = derVar.f14069e;
                Map map = zzbueVar.zzb;
                JSONObject ao = ckd.ao(context, map, map, zzbueVar.zza, null);
                JSONObject y = ckd.y(derVar.ae, derVar.f14069e.zza);
                JSONObject as = ckd.as(derVar.f14069e.zza);
                JSONObject az = ckd.az(derVar.ae, derVar.f14069e.zza);
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("asset_view_signal", ao);
                jSONObject.put("ad_view_signal", y);
                jSONObject.put("scroll_view_signal", as);
                jSONObject.put("lock_screen_signal", az);
                String str2 = str;
                if ("google.afma.nativeAds.getPublisherCustomRenderedClickSignals".equals(str2)) {
                    jSONObject.put("click_signal", ckd.ap(null, derVar.ae, derVar.n, derVar.ad));
                }
                return zzdocVar.zzg(str2, jSONObject);
            }
        };
        zzges zzgesVar = this.ak;
        dcy zzn = zzgei.zzn(zza, zzgdpVar, zzgesVar);
        zzn.addListener(new efr(12, this, zzdocVarArr, false), zzgesVar);
        return (zzgdz) zzgei.zze((zzgdz) zzgei.zzm((zzgdz) zzgei.zzo(zzgdz.zzu(zzn), ((Integer) edt.f15376a.f15379d.zza(zzbcn.zzhn)).intValue(), TimeUnit.MILLISECONDS, this.h), new eor(0), zzgesVar), Exception.class, new eor(1), zzgesVar);
    }

    public final void au(List list, bjq bjqVar, zzbtv zzbtvVar, boolean z) {
        Map map;
        if (!((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzhm)).booleanValue()) {
            try {
                zzbtvVar.zze("The updating URL feature is not enabled.");
                return;
            } catch (RemoteException e2) {
                agd.f("", e2);
                return;
            }
        }
        cao caoVar = new cao(this, list, bjqVar, 3);
        zzges zzgesVar = this.ak;
        dcy zzb = zzgesVar.zzb(caoVar);
        zzbue zzbueVar = this.f14069e;
        if (zzbueVar == null || (map = zzbueVar.zzb) == null || map.isEmpty()) {
            agd.k("Asset view map is empty.");
        } else {
            zzb = zzgei.zzn(zzb, new acy(this, 1), zzgesVar);
        }
        zzgei.zzr(zzb, new exn(this, zzbtvVar, z, 0), this.z.zzC());
    }

    @Override // com.google.android.gms.internal.ads.zzbzh
    public final bjq zze(bjq bjqVar, bjq bjqVar2, String str, bjq bjqVar3) {
        zzbds zzbdsVar = this.m;
        if (!((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzjt)).booleanValue()) {
            return new bpp(null);
        }
        zzbdsVar.zzg((Context) bpp.b(bjqVar), (eab) bpp.b(bjqVar2), str, (gwy) bpp.b(bjqVar3));
        if (((Boolean) zzbes.zzb.zze()).booleanValue()) {
            sq sqVar = this.w;
            synchronized (sqVar) {
                sqVar.j(true);
                sqVar.j(false);
            }
        }
        if (((Boolean) zzbes.zza.zze()).booleanValue()) {
            this.t.h();
        }
        return new bpp(zzbdsVar.zzb());
    }

    @Override // com.google.android.gms.internal.ads.zzbzh
    public final void zzf(bjq bjqVar, zzbzl zzbzlVar, zzbze zzbzeVar) {
        dcy dcyVar;
        dcy dcyVar2;
        Bundle bundle = new Bundle();
        zzbce zzbceVar = zzbcn.zzci;
        edt edtVar = edt.f15376a;
        zzbcl zzbclVar = edtVar.f15379d;
        zzbcl zzbclVar2 = edtVar.f15379d;
        if (((Boolean) zzbclVar.zza(zzbceVar)).booleanValue()) {
            bundle.putLong(zzdrv.PUBLIC_API_CALL.zza(), zzbzlVar.zzd.zzz);
            dub.m(ti.f20033a.v, bundle, zzdrv.DYNAMITE_ENTER.zza());
        }
        Context context = (Context) bpp.b(bjqVar);
        this.ae = context;
        zzfka zza = zzfjz.zza(context, 22);
        zza.zzi();
        if ("UNKNOWN".equals(zzbzlVar.zzb)) {
            List arrayList = new ArrayList();
            zzbce zzbceVar2 = zzbcn.zzhl;
            if (!((String) zzbclVar2.zza(zzbceVar2)).isEmpty()) {
                arrayList = Arrays.asList(((String) zzbclVar2.zza(zzbceVar2)).split(","));
            }
            if (arrayList.contains(dzm.w(zzbzlVar.zzd))) {
                dcy zzg = zzgei.zzg(new IllegalArgumentException("Unknown format is no longer supported."));
                dcyVar = zzgei.zzg(new IllegalArgumentException("Unknown format is no longer supported."));
                dcyVar2 = zzg;
                zzgei.zzr(dcyVar, new fzn((Object) this, dcyVar2, (Object) zzbzlVar, (Object) zzbzeVar, (Object) zza, 11), this.z.zzC());
            }
        }
        if (((Boolean) zzbclVar2.zza(zzbcn.zzkK)).booleanValue()) {
            zzges zzgesVar = zzcaj.zza;
            dcyVar2 = zzgesVar.zzb(new cao(this, zzbzlVar, bundle, 2));
            dcyVar = zzgei.zzn(dcyVar2, new fco(), zzgesVar);
        } else {
            com.google.android.gms.internal.ads.g aq = aq(this.ae, zzbzlVar.zza, zzbzlVar.zzb, zzbzlVar.zzc, zzbzlVar.zzd, bundle);
            dcy zzh = zzgei.zzh(aq);
            dcyVar = (dcy) aq.ai.zzb();
            dcyVar2 = zzh;
        }
        zzgei.zzr(dcyVar, new fzn((Object) this, dcyVar2, (Object) zzbzlVar, (Object) zzbzeVar, (Object) zza, 11), this.z.zzC());
    }

    @Override // com.google.android.gms.internal.ads.zzbzh
    public final void zzg(zzbue zzbueVar) {
        this.f14069e = zzbueVar;
        this.x.zzc(1);
    }

    @Override // com.google.android.gms.internal.ads.zzbzh
    public final void zzh(List list, bjq bjqVar, zzbtv zzbtvVar) {
        ar(list, bjqVar, zzbtvVar, true);
    }

    @Override // com.google.android.gms.internal.ads.zzbzh
    public final void zzi(List list, bjq bjqVar, zzbtv zzbtvVar) {
        au(list, bjqVar, zzbtvVar, true);
    }

    @Override // com.google.android.gms.internal.ads.zzbzh
    public final void zzj(bjq bjqVar) {
        zzbce zzbceVar = zzbcn.zzjf;
        edt edtVar = edt.f15376a;
        zzbcl zzbclVar = edtVar.f15379d;
        zzbcl zzbclVar2 = edtVar.f15379d;
        if (((Boolean) zzbclVar.zza(zzbceVar)).booleanValue()) {
            zzbce zzbceVar2 = zzbcn.zzhk;
            if (!((Boolean) zzbclVar2.zza(zzbceVar2)).booleanValue()) {
                ap();
            }
            WebView webView = (WebView) bpp.b(bjqVar);
            if (webView == null) {
                agd.d("The webView cannot be null.");
                return;
            }
            zzges zzgesVar = zzcaj.zze;
            bsn bsnVar = this.t;
            ju juVar = new ju(webView, bsnVar, zzgesVar);
            webView.addJavascriptInterface(new ad(webView, this.p, this.r, this.q, this.v, this.w, this.t, juVar), "gmaSdk");
            if (((Boolean) zzbclVar2.zza(zzbcn.zzjp)).booleanValue()) {
                ti.f20033a.f20034ab.zzs();
            }
            if (((Boolean) zzbes.zza.zze()).booleanValue()) {
                bsnVar.h();
                zzcaj.zzd.scheduleWithFixedDelay(new dwz(juVar, 1), 0L, ((Integer) zzbclVar2.zza(zzbcn.zzjq)).intValue(), TimeUnit.MILLISECONDS);
            }
            if (((Boolean) zzbclVar2.zza(zzbceVar2)).booleanValue()) {
                ap();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbzh
    public final void zzk(bjq bjqVar) {
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzhm)).booleanValue()) {
            MotionEvent motionEvent = (MotionEvent) bpp.b(bjqVar);
            zzbue zzbueVar = this.f14069e;
            View view = zzbueVar == null ? null : zzbueVar.zza;
            int[] iArr = new int[2];
            if (view != null) {
                view.getLocationOnScreen(iArr);
            }
            this.ad = new Point(((int) motionEvent.getRawX()) - iArr[0], ((int) motionEvent.getRawY()) - iArr[1]);
            if (motionEvent.getAction() == 0) {
                this.n = this.ad;
            }
            MotionEvent obtain = MotionEvent.obtain(motionEvent);
            Point point = this.ad;
            obtain.setLocation(point.x, point.y);
            this.p.zzd(obtain);
            obtain.recycle();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbzh
    public final void zzl(List list, bjq bjqVar, zzbtv zzbtvVar) {
        ar(list, bjqVar, zzbtvVar, false);
    }

    @Override // com.google.android.gms.internal.ads.zzbzh
    public final void zzm(List list, bjq bjqVar, zzbtv zzbtvVar) {
        au(list, bjqVar, zzbtvVar, false);
    }
}
