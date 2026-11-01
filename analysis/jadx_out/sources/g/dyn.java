package g;

import a.v.SlidableViewPager;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.net.ConnectivityManager;
import android.os.Build;
import android.os.Handler;
import android.view.Menu;
import android.view.View;
import android.view.Window;
import androidx.appcompat.widget.Toolbar;
import cn.trinea.android.developertools.R;
import com.google.android.gms.internal.ads.zzauu;
import com.google.android.gms.internal.ads.zzauw;
import com.google.android.gms.internal.ads.zzavj;
import com.google.android.gms.internal.ads.zzawf;
import com.google.android.gms.internal.ads.zzawm;
import com.google.android.gms.internal.ads.zzaxs;
import com.google.android.gms.internal.ads.zzazf;
import com.google.android.gms.internal.ads.zzbat;
import com.google.android.gms.internal.ads.zzbcn;
import com.google.android.gms.internal.ads.zzfrr;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.textfield.TextInputLayout;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class dyn implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15092a;

    /* renamed from: b, reason: collision with root package name */
    public Object f15093b;

    public /* synthetic */ dyn() {
        this.f15092a = 17;
    }

    public /* synthetic */ dyn(int i, Object obj) {
        this.f15092a = i;
        this.f15093b = obj;
    }

    public dyn(cqj cqjVar, gqc gqcVar) {
        this.f15092a = 21;
        this.f15093b = gqcVar;
    }

    private final void c() {
        synchronized (((zzauu) this.f15093b).o) {
            if (((zzauu) this.f15093b).f4503e) {
                return;
            }
            ((zzauu) this.f15093b).f4503e = true;
            try {
                zzauu.s((zzauu) this.f15093b);
            } catch (Exception e2) {
                ((zzauu) this.f15093b).r.zzc(2023, -1L, e2);
            }
            synchronized (((zzauu) this.f15093b).o) {
                ((zzauu) this.f15093b).f4503e = false;
            }
        }
    }

    private final void d() {
        boolean z;
        if (((zzauw) this.f15093b).f4510e != null) {
            return;
        }
        synchronized (zzauw.f4508c) {
            if (((zzauw) this.f15093b).f4510e != null) {
                return;
            }
            boolean z2 = false;
            try {
                z = ((Boolean) zzbcn.zzcE.zze()).booleanValue();
            } catch (IllegalStateException unused) {
                z = false;
            }
            if (z) {
                try {
                    zzauw.f4506a = zzfrr.zzb(((zzauw) this.f15093b).f4509d.h, "ADSHIELD", null);
                } catch (Throwable unused2) {
                }
            }
            z2 = z;
            ((zzauw) this.f15093b).f4510e = Boolean.valueOf(z2);
            zzauw.f4508c.open();
        }
    }

    private final void e() {
        synchronized (((fes) this.f15093b).f16678d) {
            fes fesVar = (fes) this.f15093b;
            if (fesVar.f16679e && fesVar.f16680f) {
                fesVar.f16679e = false;
                agd.c("App went background");
                Iterator it = ((fes) this.f15093b).j.iterator();
                while (it.hasNext()) {
                    try {
                        ((zzazf) it.next()).zza(false);
                    } catch (Exception e2) {
                        agd.f("", e2);
                    }
                }
            } else {
                agd.c("App is still foreground");
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:51:0x00f1, code lost:
    
        if (r0.isAvailable() != false) goto L44;
     */
    /* JADX WARN: Removed duplicated region for block: B:152:0x02b3  */
    /* JADX WARN: Removed duplicated region for block: B:154:? A[RETURN, SYNTHETIC] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void run() {
        View view;
        cyl cylVar;
        boolean z = true;
        switch (this.f15092a) {
            case 0:
                CheckableImageButton checkableImageButton = ((TextInputLayout) this.f15093b).x.f20409d;
                checkableImageButton.performClick();
                checkableImageButton.jumpDrawablesToCurrentState();
                return;
            case 1:
                ((Toolbar) this.f15093b).bd();
                return;
            case 2:
                bbp bbpVar = (bbp) this.f15093b;
                Window.Callback callback = bbpVar.f11237f;
                Menu n = bbpVar.n();
                ftn ftnVar = n instanceof ftn ? (ftn) n : null;
                if (ftnVar != null) {
                    ftnVar.aj();
                }
                try {
                    n.clear();
                    if (callback.onCreatePanelMenu(0, n)) {
                        if (!callback.onPreparePanel(0, null, n)) {
                        }
                        if (ftnVar == null) {
                            ftnVar.ai();
                            return;
                        }
                        return;
                    }
                    n.clear();
                    if (ftnVar == null) {
                    }
                } catch (Throwable th) {
                    if (ftnVar != null) {
                        ftnVar.ai();
                    }
                    throw th;
                }
            case 3:
                ((dfv) this.f15093b).z(0);
                return;
            case 4:
                bfa bfaVar = (bfa) this.f15093b;
                bfaVar.setScrollState(0);
                bfaVar.bm();
                return;
            case 5:
                SlidableViewPager slidableViewPager = (SlidableViewPager) this.f15093b;
                slidableViewPager.setScrollState(0);
                slidableViewPager.populate();
                return;
            case 6:
                ddp ddpVar = (ddp) ((cc) this.f15093b).f12621b;
                c.a.a aVar = ddpVar.f14027b;
                String str = c.a.a.f374d;
                if (!bfc.ac(aVar.bc)) {
                    fyt.d(ddpVar.f14027b.bc, "android.permission.SYSTEM_ALERT_WINDOW");
                    ddpVar.f14027b.z();
                    return;
                } else {
                    c.a.a aVar2 = ddpVar.f14027b;
                    if (aVar2.r != null) {
                        aVar2.y();
                        return;
                    }
                    return;
                }
            case 7:
                c.a.a aVar3 = (c.a.a) this.f15093b;
                View findViewById = aVar3.findViewById(R.id.snackbar_layout);
                aVar3.i = afo.ar(findViewById, findViewById.getResources().getText(R.string.window_viewer_window_tips2), -2, R.string.know_it, new dij());
                return;
            case 8:
                com.tencent.bugly.proguard.ag.c((List) this.f15093b);
                return;
            case 9:
                com.tencent.bugly.proguard.au.a((com.tencent.bugly.proguard.au) this.f15093b);
                return;
            case 10:
                view = ((fde) this.f15093b).ia;
                Drawable drawable = ((cdf) view).getDrawable();
                if (Build.VERSION.SDK_INT < 28 || !agk.a(drawable)) {
                    return;
                }
                agk.w(drawable).start();
                return;
            case 11:
                JSONObject jSONObject = (JSONObject) this.f15093b;
                eca.f15280e.ag();
                try {
                    jSONObject.put("upload_scene", "direct");
                } catch (JSONException e2) {
                    e2.printStackTrace();
                }
                eg.y("https://apmplus.volces.com/apm/collect/crash", jSONObject.toString(), true);
                return;
            case 12:
                gjp gjpVar = (gjp) this.f15093b;
                gjpVar.f18262f.setPivotX(r1.getWidth() / 2.0f);
                gjpVar.f18262f.setPivotY(r0.getHeight());
                return;
            case 13:
                aqi aqiVar = (aqi) this.f15093b;
                Map ag = eca.f15280e.ag();
                try {
                    try {
                        cylVar = eg.j("https://apmplus.volces.com/monitor/collect/c/session?device_platform=android&version_code=137&iid=iid&aid=" + ag.get("aid"), cro.y(ag).toString().getBytes("UTF-8"), gxc.GZIP, true);
                    } catch (Throwable th2) {
                        Context context = eca.f15278c;
                        cylVar = new cyl(th2);
                    }
                    if (cylVar.f13765e != 0) {
                        z = false;
                    }
                    aqiVar.dq(z);
                    return;
                } catch (Throwable unused) {
                    return;
                }
            case 14:
                caa caaVar = ((cyh) this.f15093b).f13751b;
                if (caaVar == null) {
                    return;
                }
                Object obj = caaVar.f12534a;
                if (obj == null) {
                    cyh.f((cyh) this.f15093b, caaVar.f12535b);
                    return;
                }
                cyh cyhVar = (cyh) this.f15093b;
                synchronized (cyhVar) {
                    Iterator it = new ArrayList(cyhVar.f13752c).iterator();
                    while (it.hasNext()) {
                        ((gao) it.next()).dq(obj);
                    }
                }
                return;
            case 15:
                ((cpx) this.f15093b).invalidateSelf();
                return;
            case 16:
                ((aah) this.f15093b).f9848b = false;
                return;
            case 17:
                Context context2 = (Context) this.f15093b;
                try {
                    try {
                        emr emrVar = new emr(22);
                        emrVar.n = context2;
                        try {
                            ConnectivityManager connectivityManager = (ConnectivityManager) context2.getSystemService("connectivity");
                            if (connectivityManager != null && (r0 = connectivityManager.getActiveNetworkInfo()) != null) {
                                break;
                            }
                        } catch (Exception unused2) {
                        }
                        z = false;
                        emrVar.af(z);
                    } catch (Throwable unused3) {
                        Context context3 = eca.f15278c;
                    }
                    return;
                } finally {
                    emk.b(gs.af()).c();
                }
            case 18:
                ((fbd) this.f15093b).t();
                return;
            case 19:
                cqh cqhVar = ((fbd) ((evf) this.f15093b).f16224f).l;
                cqhVar.disconnect(cqhVar.getClass().getName().concat(" disconnecting because it was signed out."));
                return;
            case 20:
                ((aan) this.f15093b).f9858b.l(new nk(4));
                return;
            case 21:
                throw null;
            case 22:
                bgf bgfVar = (bgf) this.f15093b;
                Thread.currentThread();
                bgfVar.zza();
                return;
            case 23:
                c();
                return;
            case 24:
                d();
                return;
            case 25:
                zzawm zzawmVar = (zzawm) this.f15093b;
                Handler handler = zzawm.f4546a;
                zzawmVar.r();
                return;
            case 26:
                zzaxs zzaxsVar = (zzaxs) this.f15093b;
                try {
                    zzawf zzawfVar = zzaxsVar.f4596c;
                    Class<?> loadClass = zzawfVar.zzi().loadClass(new String(zzaxsVar.f4596c.zze().zzb(zzawfVar.zzu(), zzaxsVar.f4598e), "UTF-8"));
                    if (loadClass != null) {
                        zzaxsVar.f4594a = loadClass.getMethod(new String(zzaxsVar.f4596c.zze().zzb(zzaxsVar.f4596c.zzu(), zzaxsVar.f4599f), "UTF-8"), zzaxsVar.f4595b);
                    }
                } catch (zzavj | UnsupportedEncodingException | ClassNotFoundException | NoSuchMethodException | NullPointerException unused4) {
                } catch (Throwable th3) {
                    zzaxsVar.f4597d.countDown();
                    throw th3;
                }
                zzaxsVar.f4597d.countDown();
                return;
            case 27:
                e();
                return;
            case 28:
                zzbat.g((zzbat) this.f15093b);
                return;
            default:
                aaa aaaVar = (aaa) this.f15093b;
                tq tqVar = aaaVar.f9833b;
                tqVar.ai(0);
                hm hmVar = hm.EXECUTE_ASYNC_TIMEOUT;
                ejd ejdVar = edc.f15338b;
                tqVar.bc(ejdVar, hmVar);
                aaaVar.g(ejdVar);
                return;
        }
    }
}
