package g;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import androidx.appcompat.widget.Toolbar;
import cn.trinea.android.developertools.R;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.google.android.gms.internal.ads.zzarh;
import com.google.android.gms.internal.ads.zzarj;
import com.google.android.gms.internal.ads.zzauu;
import g.fxe;

/* loaded from: classes.dex */
public final class asy implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Object f10785a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f10786b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f10787c;

    public /* synthetic */ asy(Object obj, int i, boolean z) {
        this.f10786b = i;
        this.f10785a = obj;
        this.f10787c = z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x00c9, code lost:
    
        if (r3 != r1) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0139, code lost:
    
        if (g.acw.av().equals(r0.getPackageName()) == false) goto L46;
     */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void run() {
        Context context;
        boolean z = true;
        switch (this.f10786b) {
            case 0:
                elf elfVar = (elf) this.f10785a;
                elfVar.bannerAdHide();
                elf elfVar2 = elfVar.aa;
                byz byzVar = new byz("app", R.string.tool_group_app);
                byzVar.e(bys.b(elfVar2, "codekk_op", "op_source_tool_app"));
                ert ertVar = new ert("apps", R.string.aab, R.drawable.caec);
                ertVar.p = true;
                ertVar.v = "c.e.ac";
                ertVar.r = new gdm(3);
                byzVar.e(ertVar);
                ert ertVar2 = new ert("manifest", R.string.abb, R.drawable.baec, 1);
                ertVar2.p = true;
                ertVar2.f16057f = true;
                ertVar2.v = "c.e.ab";
                ertVar2.r = new gdm(4);
                byzVar.e(ertVar2);
                ert ertVar3 = new ert("top_activity", cyz.f13786c ? R.string.aacc : R.string.aaec, R.drawable.aaec, 2);
                ertVar3.p = true;
                ertVar3.v = "c.e.aa";
                ertVar3.r = new gdm(5);
                byzVar.e(ertVar3);
                ert ertVar4 = new ert("layout_inspector", R.string.cac, R.drawable.fbec, 4);
                ertVar4.p = true;
                ertVar4.v = "c.e.ag";
                ertVar4.r = new gdm(6);
                byzVar.e(ertVar4);
                ert ertVar5 = new ert("decompile", R.string.bbb, R.drawable.faec, 8);
                ertVar5.p = true;
                ertVar5.f16057f = true;
                ertVar5.v = "c.e.af";
                int i = 7;
                ertVar5.r = new gdm(i);
                byzVar.e(ertVar5);
                ert ertVar6 = new ert("apk_puller", R.string.bcc, R.drawable.daec, 16);
                ertVar6.p = true;
                ertVar6.v = "c.e.ad";
                ertVar6.r = new gdm(8);
                byzVar.e(ertVar6);
                ert ertVar7 = new ert("so_puller", R.string.cbb, R.drawable.eaec, 32);
                ertVar7.p = true;
                ertVar7.v = "c.e.ae";
                ertVar7.r = new gdm(9);
                byzVar.e(ertVar7);
                atf g2 = atf.g(elfVar2);
                fxe.e m = g2.m();
                if (m != null) {
                    int i2 = m.adPosition;
                    boolean h = g2.h(m);
                    if ((i2 & 1) != 0 && h) {
                        byzVar.e(enx.b(elfVar2));
                    }
                }
                ert ertVar8 = new ert("permissions", R.string.adc, R.drawable.eaec);
                ertVar8.p = true;
                ertVar8.l = true;
                ertVar8.v = "c.e.PermissionActivity";
                ertVar8.r = new gdm(10);
                byzVar.e(ertVar8);
                acr.ai(elfVar2, "app_locked", byzVar);
                byz byzVar2 = new byz("design", R.string.tool_group_design);
                byzVar2.f12477b = 23;
                ert ertVar9 = new ert("color_picker", R.string.dab, R.drawable.dab, 64);
                ertVar9.p = true;
                ertVar9.h = 23;
                ertVar9.v = "c.e.ada";
                ertVar9.r = new gdm(11);
                byzVar2.e(ertVar9);
                ert ertVar10 = new ert("text_copy", R.string.cc, R.drawable.cc, TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME);
                ertVar10.p = true;
                ertVar10.v = "c.e.adb";
                ertVar10.r = new gdm(12);
                byzVar2.e(ertVar10);
                acr.ai(elfVar2, "locked_design", byzVar2);
                gk.f18292d = true;
                cwq.f(elfVar2).i();
                elf elfVar3 = elfVar.aa;
                int i3 = c.b.b.f378d;
                byh.ad(elfVar3, "op_updatable_default", false);
                cro.af(elfVar.aa, "setting_sns", false);
                fzn.l(elfVar.aa).q(new Intent("cacu"));
                try {
                    ((Toolbar) elfVar.findViewById(R.id.toolbar)).setTitle(R.string.donation_app_name);
                } catch (Exception unused) {
                }
                if (this.f10787c) {
                    gm.i(elfVar.aa, R.string.p_success, 1);
                }
                cwz.b(elfVar).ad(new fbc(i), null, null);
                return;
            case 1:
                akj j = akj.j();
                Context context2 = (Context) this.f10785a;
                j.getClass();
                try {
                    j.f10384f = new vh(new com.bytedance.sdk.openadsdk.api.plugin.dq(context2), "npth_log.db", null, 1, 2).getWritableDatabase();
                } catch (Throwable unused2) {
                    Context context3 = eca.f15278c;
                }
                j.h = new fdc();
                context = (Context) this.f10785a;
                try {
                    Object obj = eca.f15280e.i;
                    break;
                } catch (Exception unused3) {
                    break;
                }
            case 2:
                ((sq) this.f10785a).g(this.f10787c, false);
                return;
            case 3:
                boolean as = ((cyg) ((csp) this.f10785a).z).as();
                cyg cygVar = (cyg) ((csp) this.f10785a).z;
                boolean z2 = cygVar.ad != null && cygVar.ad.booleanValue();
                ((cyg) ((csp) this.f10785a).z).ad = Boolean.valueOf(this.f10787c);
                if (z2 == this.f10787c) {
                    bgm bgmVar = ((cyg) ((csp) this.f10785a).z).z;
                    cyg.ak(bgmVar);
                    bgmVar.f11519c.i(Boolean.valueOf(this.f10787c), "Default data collection state already set to");
                }
                if (((cyg) ((csp) this.f10785a).z).as() != as) {
                    boolean as2 = ((cyg) ((csp) this.f10785a).z).as();
                    cyg cygVar2 = (cyg) ((csp) this.f10785a).z;
                    if (cygVar2.ad == null || !cygVar2.ad.booleanValue()) {
                        z = false;
                        break;
                    }
                }
                bgm bgmVar2 = ((cyg) ((csp) this.f10785a).z).z;
                cyg.ak(bgmVar2);
                bgmVar2.h.e(Boolean.valueOf(this.f10787c), "Default data collection is different than actual status", Boolean.valueOf(as));
                ((csp) this.f10785a).al();
                return;
            default:
                gvq gvqVar = (gvq) this.f10785a;
                boolean z3 = this.f10787c;
                long currentTimeMillis = System.currentTimeMillis();
                try {
                    Context context4 = gvqVar.f18829d;
                    akx akxVar = gvqVar.f18831f;
                    boolean z4 = gvqVar.n;
                    zzarh zza = zzarj.zza();
                    zza.zza(z3);
                    zza.zzb(akxVar.afmaVersion);
                    zzarj zzarjVar = (zzarj) zza.zzbr();
                    Context applicationContext = context4.getApplicationContext();
                    if (applicationContext != null) {
                        context4 = applicationContext;
                    }
                    zzauu.zza(context4, zzarjVar, z4).zzp();
                    return;
                } catch (NullPointerException e2) {
                    gvqVar.f18826a.zzc(2027, System.currentTimeMillis() - currentTimeMillis, e2);
                    return;
                }
        }
        Handler af = gs.af();
        dyn dynVar = new dyn();
        dynVar.f15093b = context;
        af.postDelayed(dynVar, 0);
        if (this.f10787c) {
            Context context5 = (Context) this.f10785a;
            if (emr.f15810b == null) {
                synchronized (emr.class) {
                    try {
                        if (emr.f15810b == null) {
                            emr.f15810b = new emr(context5);
                        }
                    } finally {
                    }
                }
            }
            cei ceiVar = (cei) emr.f15810b.n;
            if (ceiVar.f12739d) {
                return;
            }
            new aah(ceiVar);
            ceiVar.f12739d = true;
        }
    }
}
