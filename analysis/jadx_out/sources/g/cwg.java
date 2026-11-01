package g;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Color;
import android.os.Build;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.webkit.CookieManager;
import android.webkit.WebChromeClient;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.RelativeLayout;
import android.widget.Toolbar;
import cn.trinea.android.developertools.R;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.internal.ads.zzbbl;
import com.google.android.gms.internal.ads.zzbce;
import com.google.android.gms.internal.ads.zzbcn;
import com.google.android.gms.internal.ads.zzbih;
import com.google.android.gms.internal.ads.zzbij;
import com.google.android.gms.internal.ads.zzbsk;
import com.google.android.gms.internal.ads.zzbsz;
import com.google.android.gms.internal.ads.zzbtf;
import com.google.android.gms.internal.ads.zzcfk;
import com.google.android.gms.internal.ads.zzcfx;
import com.google.android.gms.internal.ads.zzchc;
import com.google.android.gms.internal.ads.zzche;
import com.google.android.gms.internal.ads.zzcwz;
import com.google.android.gms.internal.ads.zzdel;
import com.google.android.gms.internal.ads.zzeeb;
import com.google.android.gms.internal.ads.zzeec;
import com.google.android.gms.internal.ads.zzeeu;
import com.google.android.gms.internal.ads.zzeew;
import java.util.Collections;

/* loaded from: classes3.dex */
public abstract class cwg extends zzbtf {

    /* renamed from: b, reason: collision with root package name */
    public static final int f13622b = Color.argb(0, 0, 0, 0);

    /* renamed from: c, reason: collision with root package name */
    public WebChromeClient.CustomViewCallback f13623c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f13624d;

    /* renamed from: f, reason: collision with root package name */
    public FrameLayout f13626f;
    public aku h;
    public zzcfk j;
    public ats m;
    public Toolbar n;
    public fkn p;
    public czm q;
    public final Activity s;
    public AdOverlayInfoParcel u;
    public boolean w;
    public boolean y = false;
    public boolean t = false;
    public boolean i = false;
    public boolean k = false;

    /* renamed from: g, reason: collision with root package name */
    public int f13627g = 1;
    public final Object x = new Object();
    public final get v = new get(17, this);
    public boolean r = false;
    public boolean o = false;

    /* renamed from: e, reason: collision with root package name */
    public boolean f13625e = true;

    public cwg(Activity activity) {
        this.s = activity;
    }

    public static final void z(View view, zzeew zzeewVar) {
        if (zzeewVar == null || view == null) {
            return;
        }
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzfd)).booleanValue() && zzeewVar.zzb()) {
            return;
        }
        ti.f20033a.aa.zzj(zzeewVar.zza(), view);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0031, code lost:
    
        if (((java.lang.Boolean) g.edt.f15376a.f15379d.zza(com.google.android.gms.internal.ads.zzbcn.zzaN)).booleanValue() != false) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0034, code lost:
    
        r1 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0048, code lost:
    
        if (((java.lang.Boolean) g.edt.f15376a.f15379d.zza(com.google.android.gms.internal.ads.zzbcn.zzaM)).booleanValue() != false) goto L20;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void aa(Configuration configuration) {
        fbp fbpVar;
        fbp fbpVar2;
        AdOverlayInfoParcel adOverlayInfoParcel = this.u;
        boolean z = true;
        boolean z2 = false;
        boolean z3 = (adOverlayInfoParcel == null || (fbpVar2 = adOverlayInfoParcel.zzo) == null || !fbpVar2.zzb) ? false : true;
        lp lpVar = ti.f20033a.k;
        Activity activity = this.s;
        boolean i = lpVar.i(activity, configuration);
        if (this.i && !z3) {
        }
        if (i) {
        }
        AdOverlayInfoParcel adOverlayInfoParcel2 = this.u;
        if (adOverlayInfoParcel2 != null && (fbpVar = adOverlayInfoParcel2.zzo) != null && fbpVar.zzg) {
            z2 = true;
        }
        Window window = activity.getWindow();
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzbl)).booleanValue()) {
            window.getDecorView().setSystemUiVisibility(z ? z2 ? 5894 : 5380 : 256);
            return;
        }
        if (!z) {
            window.addFlags(2048);
            window.clearFlags(1024);
            return;
        }
        window.addFlags(1024);
        window.clearFlags(2048);
        if (z2) {
            window.getDecorView().setSystemUiVisibility(4098);
        }
    }

    public final void ab(int i) {
        Activity activity = this.s;
        int i2 = activity.getApplicationInfo().targetSdkVersion;
        zzbce zzbceVar = zzbcn.zzfR;
        edt edtVar = edt.f15376a;
        if (i2 >= ((Integer) edtVar.f15379d.zza(zzbceVar)).intValue()) {
            if (activity.getApplicationInfo().targetSdkVersion <= ((Integer) edtVar.f15379d.zza(zzbcn.zzfS)).intValue()) {
                int i3 = Build.VERSION.SDK_INT;
                if (i3 >= ((Integer) edtVar.f15379d.zza(zzbcn.zzfT)).intValue()) {
                    if (i3 <= ((Integer) edtVar.f15379d.zza(zzbcn.zzfU)).intValue()) {
                        return;
                    }
                }
            }
        }
        try {
            activity.setRequestedOrientation(i);
        } catch (Throwable th) {
            ti.f20033a.f20034ab.zzv(th, "AdOverlay.setRequestedOrientation");
        }
    }

    public final void ac(View view) {
        zzeew zzQ;
        zzeeu zzP;
        zzcfk zzcfkVar = this.j;
        if (zzcfkVar == null) {
            return;
        }
        zzbce zzbceVar = zzbcn.zzfe;
        edt edtVar = edt.f15376a;
        if (((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue() && (zzP = zzcfkVar.zzP()) != null) {
            zzP.zza(view);
        } else if (((Boolean) edtVar.f15379d.zza(zzbcn.zzfd)).booleanValue() && (zzQ = zzcfkVar.zzQ()) != null && zzQ.zzb()) {
            ti.f20033a.aa.zzg(zzQ.zza(), view);
        }
    }

    public final void ad(boolean z, boolean z2) {
        AdOverlayInfoParcel adOverlayInfoParcel;
        fbp fbpVar;
        AdOverlayInfoParcel adOverlayInfoParcel2;
        fbp fbpVar2;
        zzbce zzbceVar = zzbcn.zzbf;
        edt edtVar = edt.f15376a;
        boolean z3 = true;
        boolean z4 = ((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue() && (adOverlayInfoParcel2 = this.u) != null && (fbpVar2 = adOverlayInfoParcel2.zzo) != null && fbpVar2.zzh;
        boolean z5 = ((Boolean) edtVar.f15379d.zza(zzbcn.zzbg)).booleanValue() && (adOverlayInfoParcel = this.u) != null && (fbpVar = adOverlayInfoParcel.zzo) != null && fbpVar.zzi;
        if (z && z2 && z4 && !z5) {
            new zzbsk(this.j, "useCustomClose").zzh("Custom close has been disabled for interstitial ads in this ad slot.");
        }
        czm czmVar = this.q;
        if (czmVar != null) {
            if (!z5 && (!z2 || z4)) {
                z3 = false;
            }
            ImageButton imageButton = czmVar.f13813a;
            if (!z3) {
                imageButton.setVisibility(0);
                return;
            }
            imageButton.setVisibility(8);
            if (((Long) edtVar.f15379d.zza(zzbcn.zzbj)).longValue() > 0) {
                imageButton.animate().cancel();
                imageButton.clearAnimation();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:114:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0174  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0183  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x019b  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x01ab  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0277  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0286  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x009d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void ae(boolean z) {
        boolean z2;
        zzcfk zzcfkVar;
        zzbsz zzbszVar;
        boolean z3 = this.w;
        Activity activity = this.s;
        if (!z3) {
            activity.requestWindowFeature(1);
        }
        Window window = activity.getWindow();
        if (window == null) {
            throw new bij("Invalid activity, no window available.");
        }
        zzcfk zzcfkVar2 = this.u.zzd;
        zzchc zzN = zzcfkVar2 != null ? zzcfkVar2.zzN() : null;
        boolean z4 = zzN != null && zzN.zzS();
        this.k = false;
        if (z4) {
            int i = this.u.zzj;
            if (i == 6) {
                z2 = activity.getResources().getConfiguration().orientation == 1;
                this.k = z2;
            } else if (i == 7) {
                z2 = activity.getResources().getConfiguration().orientation == 2;
                this.k = z2;
            }
            agd.c("Delay onShow to next orientation change: " + z2);
            ab(this.u.zzj);
            window.setFlags(16777216, 16777216);
            agd.c("Hardware acceleration on the AdActivity window enabled.");
            if (this.i) {
                this.m.setBackgroundColor(-16777216);
            } else {
                this.m.setBackgroundColor(f13622b);
            }
            activity.setContentView(this.m);
            this.w = true;
            if (z) {
                zzcfk zzcfkVar3 = this.u.zzd;
                this.j = zzcfkVar3;
                zzcfkVar3.zzan(activity);
            } else {
                try {
                    zzcfx zzcfxVar = ti.f20033a.h;
                    Activity activity2 = this.s;
                    zzcfk zzcfkVar4 = this.u.zzd;
                    zzche zzO = zzcfkVar4 != null ? zzcfkVar4.zzO() : null;
                    zzcfk zzcfkVar5 = this.u.zzd;
                    String zzU = zzcfkVar5 != null ? zzcfkVar5.zzU() : null;
                    AdOverlayInfoParcel adOverlayInfoParcel = this.u;
                    akx akxVar = adOverlayInfoParcel.zzm;
                    zzcfk zzcfkVar6 = adOverlayInfoParcel.zzd;
                    zzcfk zza = zzcfx.zza(activity2, zzO, zzU, true, z4, null, null, akxVar, null, null, zzcfkVar6 != null ? zzcfkVar6.zzj() : null, zzbbl.zza(), null, null, null, null);
                    this.j = zza;
                    zzchc zzN2 = zza.zzN();
                    AdOverlayInfoParcel adOverlayInfoParcel2 = this.u;
                    zzbih zzbihVar = adOverlayInfoParcel2.zzp;
                    zzbij zzbijVar = adOverlayInfoParcel2.zze;
                    gst gstVar = adOverlayInfoParcel2.zzi;
                    zzcfk zzcfkVar7 = adOverlayInfoParcel2.zzd;
                    zzN2.zzU(null, zzbihVar, null, zzbijVar, gstVar, true, null, zzcfkVar7 != null ? zzcfkVar7.zzN().zzd() : null, null, null, null, null, null, null, null, null, null, null, null);
                    this.j.zzN().zzB(new eap(0, this));
                    AdOverlayInfoParcel adOverlayInfoParcel3 = this.u;
                    String str = adOverlayInfoParcel3.zzl;
                    if (str != null) {
                        this.j.loadUrl(str);
                    } else {
                        String str2 = adOverlayInfoParcel3.zzh;
                        if (str2 == null) {
                            throw new bij("No URL or HTML to display in ad overlay.");
                        }
                        this.j.loadDataWithBaseURL(adOverlayInfoParcel3.zzf, str2, "text/html", "UTF-8", null);
                    }
                    zzcfk zzcfkVar8 = this.u.zzd;
                    if (zzcfkVar8 != null) {
                        zzcfkVar8.zzaw(this);
                    }
                } catch (Exception e2) {
                    agd.f("Error obtaining webview.", e2);
                    throw new bij("Could not obtain webview for the overlay.", e2);
                }
            }
            if (this.u.zzw) {
                CookieManager.getInstance().setAcceptThirdPartyCookies(this.j.zzG(), false);
            }
            this.j.zzai(this);
            zzcfkVar = this.u.zzd;
            if (zzcfkVar != null) {
                z(this.m, zzcfkVar.zzQ());
            }
            if (this.u.zzk != 5) {
                ViewParent parent = this.j.getParent();
                if (parent != null && (parent instanceof ViewGroup)) {
                    ((ViewGroup) parent).removeView(this.j.zzF());
                }
                if (this.i) {
                    this.j.zzam();
                }
                if (!this.u.zzw || Build.VERSION.SDK_INT < 24) {
                    this.m.addView(this.j.zzF(), -1, -1);
                } else {
                    Toolbar toolbar = new Toolbar(activity);
                    this.n = toolbar;
                    toolbar.setId(View.generateViewId());
                    this.j.zzF().setId(View.generateViewId());
                    this.n.setBackgroundColor(-12303292);
                    this.n.setVisibility(0);
                    try {
                        this.n.setNavigationIcon(ti.f20033a.f20034ab.zze().getDrawable(R.drawable.admob_close_button_white_cross, null));
                    } catch (Resources.NotFoundException | NullPointerException unused) {
                        agd.h();
                    }
                    this.n.setNavigationOnClickListener(this.v);
                    this.n.setTitleMarginStart(0);
                    RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
                    layoutParams.addRule(10);
                    this.m.addView(this.n, layoutParams);
                    RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -2);
                    layoutParams2.addRule(3, this.n.getId());
                    layoutParams2.addRule(12);
                    this.m.addView(this.j.zzF(), layoutParams2);
                    ac(this.n);
                }
            }
            if (!z && !this.k) {
                this.j.zzaa();
            }
            if (this.u.zzk == 5) {
                af(z4);
                if (this.j.zzaB()) {
                    ad(z4, true);
                    return;
                }
                return;
            }
            zzeeb zze = zzeec.zze();
            zze.zza(activity);
            zze.zzb(this);
            zze.zzc(this.u.zzq);
            zze.zzd(this.u.zzr);
            zzeec zze2 = zze.zze();
            try {
                AdOverlayInfoParcel adOverlayInfoParcel4 = this.u;
                if (adOverlayInfoParcel4 == null || (zzbszVar = adOverlayInfoParcel4.zzv) == null) {
                    throw new bij("noioou");
                }
                zzbszVar.zzg(new bpp(zze2));
                return;
            } catch (RemoteException | bij e3) {
                throw new bij(e3.getMessage(), e3);
            }
        }
        z2 = false;
        agd.c("Delay onShow to next orientation change: " + z2);
        ab(this.u.zzj);
        window.setFlags(16777216, 16777216);
        agd.c("Hardware acceleration on the AdActivity window enabled.");
        if (this.i) {
        }
        activity.setContentView(this.m);
        this.w = true;
        if (z) {
        }
        if (this.u.zzw) {
        }
        this.j.zzai(this);
        zzcfkVar = this.u.zzd;
        if (zzcfkVar != null) {
        }
        if (this.u.zzk != 5) {
        }
        if (!z) {
            this.j.zzaa();
        }
        if (this.u.zzk == 5) {
        }
    }

    public final void af(boolean z) {
        if (this.u.zzw) {
            return;
        }
        zzbce zzbceVar = zzbcn.zzeU;
        edt edtVar = edt.f15376a;
        int intValue = ((Integer) edtVar.f15379d.zza(zzbceVar)).intValue();
        boolean z2 = ((Boolean) edtVar.f15379d.zza(zzbcn.zzbh)).booleanValue() || z;
        bwg bwgVar = new bwg();
        bwgVar.f12310b = 0;
        bwgVar.f12311c = 0;
        bwgVar.f12312d = 0;
        bwgVar.f12309a = 50;
        bwgVar.f12310b = true != z2 ? 0 : intValue;
        bwgVar.f12311c = true != z2 ? intValue : 0;
        bwgVar.f12312d = intValue;
        this.q = new czm(this.s, bwgVar, this);
        RelativeLayout.LayoutParams q = tn.q(-2, -2, 10);
        q.addRule(true != z2 ? 9 : 11);
        ad(z, this.u.zzg);
        this.m.addView(this.q, q);
        ac(this.q);
    }

    public final void zzE() {
        synchronized (this.x) {
            try {
                this.f13624d = true;
                aku akuVar = this.h;
                if (akuVar != null) {
                    gfx gfxVar = esy.f16117a;
                    gfxVar.removeCallbacks(akuVar);
                    gfxVar.post(this.h);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zzF() {
        AdOverlayInfoParcel adOverlayInfoParcel;
        fim fimVar;
        if (!this.s.isFinishing() || this.r) {
            return;
        }
        this.r = true;
        zzcfk zzcfkVar = this.j;
        if (zzcfkVar != null) {
            zzcfkVar.zzZ(this.f13627g - 1);
            synchronized (this.x) {
                try {
                    if (!this.f13624d && this.j.zzaC()) {
                        zzbce zzbceVar = zzbcn.zzeP;
                        edt edtVar = edt.f15376a;
                        if (((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue() && !this.o && (adOverlayInfoParcel = this.u) != null && (fimVar = adOverlayInfoParcel.zzc) != null) {
                            fimVar.zzdq();
                        }
                        aku akuVar = new aku(3, this);
                        this.h = akuVar;
                        esy.f16117a.postDelayed(akuVar, ((Long) edtVar.f15379d.zza(zzbcn.zzbe)).longValue());
                        return;
                    }
                } finally {
                }
            }
        }
        zzc();
    }

    @Override // com.google.android.gms.internal.ads.zzbtg
    public final boolean zzH() {
        this.f13627g = 1;
        if (this.j == null) {
            return true;
        }
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zziz)).booleanValue() && this.j.canGoBack()) {
            this.j.goBack();
            return false;
        }
        boolean zzaH = this.j.zzaH();
        if (!zzaH) {
            this.j.zzd("onbackblocked", Collections.EMPTY_MAP);
        }
        return zzaH;
    }

    public final void zzb() {
        this.f13627g = 3;
        Activity activity = this.s;
        activity.finish();
        AdOverlayInfoParcel adOverlayInfoParcel = this.u;
        if (adOverlayInfoParcel == null || adOverlayInfoParcel.zzk != 5) {
            return;
        }
        activity.overridePendingTransition(0, 0);
    }

    public final void zzc() {
        zzcfk zzcfkVar;
        fim fimVar;
        if (this.o) {
            return;
        }
        this.o = true;
        zzcfk zzcfkVar2 = this.j;
        if (zzcfkVar2 != null) {
            this.m.removeView(zzcfkVar2.zzF());
            fkn fknVar = this.p;
            if (fknVar != null) {
                this.j.zzan((Context) fknVar.f16937a);
                this.j.zzaq(false);
                if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzmq)).booleanValue() && this.j.getParent() != null) {
                    ((ViewGroup) this.j.getParent()).removeView(this.j.zzF());
                }
                ViewGroup viewGroup = (ViewGroup) this.p.f16940d;
                View zzF = this.j.zzF();
                fkn fknVar2 = this.p;
                viewGroup.addView(zzF, fknVar2.f16938b, (ViewGroup.LayoutParams) fknVar2.f16939c);
                this.p = null;
            } else {
                Activity activity = this.s;
                if (activity.getApplicationContext() != null) {
                    this.j.zzan(activity.getApplicationContext());
                }
            }
            this.j = null;
        }
        AdOverlayInfoParcel adOverlayInfoParcel = this.u;
        if (adOverlayInfoParcel != null && (fimVar = adOverlayInfoParcel.zzc) != null) {
            fimVar.zzdu(this.f13627g);
        }
        AdOverlayInfoParcel adOverlayInfoParcel2 = this.u;
        if (adOverlayInfoParcel2 == null || (zzcfkVar = adOverlayInfoParcel2.zzd) == null) {
            return;
        }
        z(this.u.zzd.zzF(), zzcfkVar.zzQ());
    }

    public final void zzg() {
        AdOverlayInfoParcel adOverlayInfoParcel = this.u;
        if (adOverlayInfoParcel != null && this.y) {
            ab(adOverlayInfoParcel.zzj);
        }
        if (this.f13626f != null) {
            this.s.setContentView(this.m);
            this.w = true;
            this.f13626f.removeAllViews();
            this.f13626f = null;
        }
        WebChromeClient.CustomViewCallback customViewCallback = this.f13623c;
        if (customViewCallback != null) {
            customViewCallback.onCustomViewHidden();
            this.f13623c = null;
        }
        this.y = false;
    }

    @Override // com.google.android.gms.internal.ads.zzbtg
    public final void zzh(int i, int i2, Intent intent) {
    }

    @Override // com.google.android.gms.internal.ads.zzbtg
    public final void zzi() {
        this.f13627g = 1;
    }

    @Override // com.google.android.gms.internal.ads.zzbtg
    public final void zzk(bjq bjqVar) {
        aa((Configuration) bpp.b(bjqVar));
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x008b A[Catch: bij -> 0x0035, TryCatch #0 {bij -> 0x0035, blocks: (B:11:0x001b, B:13:0x0027, B:15:0x002b, B:17:0x0031, B:18:0x0038, B:19:0x0041, B:21:0x004c, B:22:0x004e, B:24:0x0054, B:25:0x0060, B:27:0x0067, B:30:0x0074, B:32:0x0078, B:34:0x007d, B:36:0x008b, B:38:0x008f, B:40:0x0095, B:41:0x0098, B:43:0x009e, B:44:0x00a1, B:46:0x00a7, B:48:0x00ab, B:49:0x00ae, B:51:0x00b4, B:52:0x00b7, B:59:0x00e2, B:62:0x00e6, B:63:0x00ed, B:64:0x00ee, B:66:0x00f2, B:68:0x00ff, B:70:0x006e, B:72:0x0072, B:73:0x0087, B:74:0x0103, B:75:0x010a), top: B:10:0x001b }] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00da  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00ff A[Catch: bij -> 0x0035, TryCatch #0 {bij -> 0x0035, blocks: (B:11:0x001b, B:13:0x0027, B:15:0x002b, B:17:0x0031, B:18:0x0038, B:19:0x0041, B:21:0x004c, B:22:0x004e, B:24:0x0054, B:25:0x0060, B:27:0x0067, B:30:0x0074, B:32:0x0078, B:34:0x007d, B:36:0x008b, B:38:0x008f, B:40:0x0095, B:41:0x0098, B:43:0x009e, B:44:0x00a1, B:46:0x00a7, B:48:0x00ab, B:49:0x00ae, B:51:0x00b4, B:52:0x00b7, B:59:0x00e2, B:62:0x00e6, B:63:0x00ed, B:64:0x00ee, B:66:0x00f2, B:68:0x00ff, B:70:0x006e, B:72:0x0072, B:73:0x0087, B:74:0x0103, B:75:0x010a), top: B:10:0x001b }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void zzl(Bundle bundle) {
        int i;
        boolean z = this.w;
        Activity activity = this.s;
        if (!z) {
            activity.requestWindowFeature(1);
        }
        this.t = bundle != null && bundle.getBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", false);
        try {
            AdOverlayInfoParcel zza = AdOverlayInfoParcel.zza(activity.getIntent());
            this.u = zza;
            if (zza == null) {
                throw new bij("Could not get info for ad overlay.");
            }
            if (zza.zzw) {
                if (Build.VERSION.SDK_INT >= 28) {
                    activity.setShowWhenLocked(true);
                } else {
                    activity.getWindow().addFlags(524288);
                }
            }
            if (this.u.zzm.clientJarVersion > 7500000) {
                this.f13627g = 4;
            }
            if (activity.getIntent() != null) {
                this.f13625e = activity.getIntent().getBooleanExtra("shouldCallOnOverlayOpened", true);
            }
            AdOverlayInfoParcel adOverlayInfoParcel = this.u;
            fbp fbpVar = adOverlayInfoParcel.zzo;
            if (fbpVar != null) {
                boolean z2 = fbpVar.zza;
                this.i = z2;
                if (z2) {
                    if (adOverlayInfoParcel.zzk != 5 && fbpVar.zzf != -1) {
                        new bbu(2, this).zzb();
                    }
                }
                if (bundle == null) {
                    if (this.f13625e) {
                        zzcwz zzcwzVar = this.u.zzt;
                        if (zzcwzVar != null) {
                            zzcwzVar.zze();
                        }
                        fim fimVar = this.u.zzc;
                        if (fimVar != null) {
                            fimVar.zzdr();
                        }
                    }
                    AdOverlayInfoParcel adOverlayInfoParcel2 = this.u;
                    if (adOverlayInfoParcel2.zzk != 1) {
                        evo evoVar = adOverlayInfoParcel2.zzb;
                        if (evoVar != null) {
                            evoVar.onAdClicked();
                        }
                        zzdel zzdelVar = this.u.zzu;
                        if (zzdelVar != null) {
                            zzdelVar.zzdG();
                        }
                    }
                }
                AdOverlayInfoParcel adOverlayInfoParcel3 = this.u;
                ats atsVar = new ats(activity, adOverlayInfoParcel3.zzn, adOverlayInfoParcel3.zzm.afmaVersion, adOverlayInfoParcel3.zzs);
                this.m = atsVar;
                atsVar.setId(1000);
                ti.f20033a.k.h(activity);
                AdOverlayInfoParcel adOverlayInfoParcel4 = this.u;
                i = adOverlayInfoParcel4.zzk;
                if (i == 1) {
                    ae(false);
                    return;
                }
                if (i == 2) {
                    this.p = new fkn(adOverlayInfoParcel4.zzd);
                    ae(false);
                    return;
                } else if (i == 3) {
                    ae(true);
                    return;
                } else {
                    if (i != 5) {
                        throw new bij("Could not determine ad overlay type.");
                    }
                    ae(false);
                    return;
                }
            }
            if (adOverlayInfoParcel.zzk == 5) {
                this.i = true;
                if (adOverlayInfoParcel.zzk != 5) {
                    new bbu(2, this).zzb();
                }
                if (bundle == null) {
                }
                AdOverlayInfoParcel adOverlayInfoParcel32 = this.u;
                ats atsVar2 = new ats(activity, adOverlayInfoParcel32.zzn, adOverlayInfoParcel32.zzm.afmaVersion, adOverlayInfoParcel32.zzs);
                this.m = atsVar2;
                atsVar2.setId(1000);
                ti.f20033a.k.h(activity);
                AdOverlayInfoParcel adOverlayInfoParcel42 = this.u;
                i = adOverlayInfoParcel42.zzk;
                if (i == 1) {
                }
            } else {
                this.i = false;
                if (bundle == null) {
                }
                AdOverlayInfoParcel adOverlayInfoParcel322 = this.u;
                ats atsVar22 = new ats(activity, adOverlayInfoParcel322.zzn, adOverlayInfoParcel322.zzm.afmaVersion, adOverlayInfoParcel322.zzs);
                this.m = atsVar22;
                atsVar22.setId(1000);
                ti.f20033a.k.h(activity);
                AdOverlayInfoParcel adOverlayInfoParcel422 = this.u;
                i = adOverlayInfoParcel422.zzk;
                if (i == 1) {
                }
            }
        } catch (bij e2) {
            agd.b(e2.getMessage());
            this.f13627g = 4;
            activity.finish();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbtg
    public final void zzm() {
        zzcfk zzcfkVar = this.j;
        if (zzcfkVar != null) {
            try {
                this.m.removeView(zzcfkVar.zzF());
            } catch (NullPointerException unused) {
            }
        }
        zzF();
    }

    @Override // com.google.android.gms.internal.ads.zzbtg
    public final void zzo() {
        fim fimVar;
        zzg();
        AdOverlayInfoParcel adOverlayInfoParcel = this.u;
        if (adOverlayInfoParcel != null && (fimVar = adOverlayInfoParcel.zzc) != null) {
            fimVar.zzdk();
        }
        if (!((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzeR)).booleanValue() && this.j != null && (!this.s.isFinishing() || this.p == null)) {
            this.j.onPause();
        }
        zzF();
    }

    @Override // com.google.android.gms.internal.ads.zzbtg
    public final void zzp(int i, String[] strArr, int[] iArr) {
        if (i == 12345) {
            zzeeb zze = zzeec.zze();
            zze.zza(this.s);
            zze.zzb(this.u.zzk == 5 ? this : null);
            try {
                this.u.zzv.zzf(strArr, iArr, new bpp(zze.zze()));
            } catch (RemoteException unused) {
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbtg
    public final void zzq() {
    }

    @Override // com.google.android.gms.internal.ads.zzbtg
    public final void zzr() {
        fim fimVar;
        AdOverlayInfoParcel adOverlayInfoParcel = this.u;
        if (adOverlayInfoParcel != null && (fimVar = adOverlayInfoParcel.zzc) != null) {
            fimVar.zzdH();
        }
        aa(this.s.getResources().getConfiguration());
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzeR)).booleanValue()) {
            return;
        }
        zzcfk zzcfkVar = this.j;
        if (zzcfkVar == null || zzcfkVar.zzaE()) {
            agd.b("The webview does not exist. Ignoring action.");
        } else {
            this.j.onResume();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbtg
    public final void zzs(Bundle bundle) {
        bundle.putBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", this.t);
    }

    @Override // com.google.android.gms.internal.ads.zzbtg
    public final void zzt() {
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzeR)).booleanValue()) {
            zzcfk zzcfkVar = this.j;
            if (zzcfkVar == null || zzcfkVar.zzaE()) {
                agd.b("The webview does not exist. Ignoring action.");
            } else {
                this.j.onResume();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbtg
    public final void zzu() {
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzeR)).booleanValue() && this.j != null && (!this.s.isFinishing() || this.p == null)) {
            this.j.onPause();
        }
        zzF();
    }

    @Override // com.google.android.gms.internal.ads.zzbtg
    public final void zzv() {
        fim fimVar;
        AdOverlayInfoParcel adOverlayInfoParcel = this.u;
        if (adOverlayInfoParcel == null || (fimVar = adOverlayInfoParcel.zzc) == null) {
            return;
        }
        fimVar.zzdt();
    }

    @Override // com.google.android.gms.internal.ads.zzbtg
    public final void zzx() {
        this.w = true;
    }
}
