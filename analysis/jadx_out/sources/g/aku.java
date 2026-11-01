package g;

import android.content.Context;
import android.os.Binder;
import android.os.Bundle;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import android.webkit.WebView;
import com.bykv.vk.component.ttvideo.LiveConfigKey;
import com.google.android.gms.internal.ads.zzazl;
import com.google.android.gms.internal.ads.zzbee;
import com.google.android.gms.internal.ads.zzblo;
import com.google.android.gms.internal.ads.zzblw;
import com.google.android.gms.internal.ads.zzbxj;
import com.google.android.gms.internal.ads.zzcdj;
import com.google.android.gms.internal.ads.zzfol;
import com.google.android.gms.internal.ads.zzfpb;
import com.google.android.gms.internal.ads.zzfxd;
import com.google.android.gms.internal.ads.zzzc;
import java.util.Collections;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public final class aku implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f10416a;

    /* renamed from: b, reason: collision with root package name */
    public Object f10417b;

    public /* synthetic */ aku(int i) {
        this.f10416a = i;
    }

    public /* synthetic */ aku(int i, Object obj) {
        this.f10416a = i;
        this.f10417b = obj;
    }

    public aku(zzfol zzfolVar) {
        this.f10416a = 9;
        this.f10417b = zzfolVar.f8103f;
    }

    public aku(bsz bszVar, gyf gyfVar) {
        this.f10416a = 17;
        this.f10417b = bszVar;
    }

    public aku(gwx gwxVar, boolean z) {
        this.f10416a = 5;
        this.f10417b = gwxVar;
    }

    private final void c() {
        cmo cmoVar = (cmo) this.f10417b;
        if (cmoVar.v) {
            if (!(cmoVar.ba() && cmoVar.ag()) && ((Boolean) zzbee.zzb.zze()).booleanValue()) {
                synchronized (cmoVar.k) {
                    try {
                        if (Looper.getMainLooper() == null) {
                            return;
                        }
                        if (cmoVar.j == null) {
                            cmoVar.j = new zzazl();
                        }
                        cmoVar.j.zzd();
                        agd.k("start fetching content...");
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        gew gewVar;
        fjg fjgVar;
        dcy dcyVar;
        boolean z = true;
        char c2 = 1;
        boolean z2 = true;
        switch (this.f10416a) {
            case 0:
                zzblo zzbloVar = (zzblo) this.f10417b;
                if (zzbloVar.f4867a == null) {
                    return;
                }
                zzbloVar.f4867a.disconnect();
                Binder.flushPendingCommands();
                return;
            case 1:
                ti.f20033a.x.zzc((zzcdj) this.f10417b);
                return;
            case 2:
                super/*android.webkit.WebView*/.destroy();
                return;
            case 3:
                ((cwg) this.f10417b).zzc();
                return;
            case 4:
                alw alwVar = (alw) this.f10417b;
                if (alwVar == null || (gewVar = alwVar.i) == null) {
                    return;
                }
                this.f10417b = null;
                if (gewVar.isDone()) {
                    Object obj = alwVar.f10267f;
                    if (obj == null) {
                        if (gewVar.isDone()) {
                            if (ail.f10262a.i(alwVar, null, alw.p(gewVar))) {
                                alw.n(alwVar);
                                return;
                            }
                            return;
                        }
                        ffj ffjVar = new ffj(alwVar, gewVar);
                        if (ail.f10262a.i(alwVar, null, ffjVar)) {
                            try {
                                gewVar.l(ffjVar, fyh.zza);
                                return;
                            } catch (Throwable th) {
                                try {
                                    fjgVar = new fjg(th);
                                } catch (Error | Exception unused) {
                                    fjgVar = fjg.f16885a;
                                }
                                ail.f10262a.i(alwVar, ffjVar, fjgVar);
                                return;
                            }
                        }
                        obj = alwVar.f10267f;
                    }
                    if (obj instanceof ahl) {
                        gewVar.cancel(((ahl) obj).f10230c);
                        return;
                    }
                    return;
                }
                try {
                    ScheduledFuture scheduledFuture = alwVar.j;
                    alwVar.j = null;
                    String str = "Timed out";
                    if (scheduledFuture != null) {
                        try {
                            long abs = Math.abs(scheduledFuture.getDelay(TimeUnit.MILLISECONDS));
                            if (abs > 10) {
                                str = "Timed out (timeout delayed by " + abs + " ms after scheduled time)";
                            }
                        } catch (Throwable th2) {
                            if (ail.f10262a.i(alwVar, null, new fjg(new cty(str, 0)))) {
                                alw.n(alwVar);
                            }
                            throw th2;
                        }
                    }
                    if (ail.f10262a.i(alwVar, null, new fjg(new cty(str + ": " + gewVar.toString(), 0)))) {
                        alw.n(alwVar);
                    }
                    return;
                } finally {
                    gewVar.cancel(true);
                }
            case 5:
                ((bsz) ((gwx) this.f10417b).f18912a).ar();
                return;
            case 6:
                ejp ejpVar = ((afs) this.f10417b).f10153a.f18307a;
                if (ejpVar != null) {
                    try {
                        ejpVar.zze(1);
                        return;
                    } catch (RemoteException unused2) {
                        zzfxd zzfxdVar = agd.f10175a;
                        return;
                    }
                }
                return;
            case 7:
                ejp ejpVar2 = ((drz) this.f10417b).f14690a;
                if (ejpVar2 != null) {
                    try {
                        ejpVar2.zze(1);
                        return;
                    } catch (RemoteException unused3) {
                        zzfxd zzfxdVar2 = agd.f10175a;
                        return;
                    }
                }
                return;
            case 8:
                zzblw zzblwVar = ((fip) this.f10417b).f16851a;
                if (zzblwVar != null) {
                    try {
                        zzblwVar.zzb(Collections.EMPTY_LIST);
                        return;
                    } catch (RemoteException unused4) {
                        zzfxd zzfxdVar3 = agd.f10175a;
                        return;
                    }
                }
                return;
            case 9:
                ((WebView) this.f10417b).destroy();
                return;
            case 10:
                ((zzfpb) this.f10417b).f8129g.zzb();
                return;
            case 11:
                zzbxj zzbxjVar = (zzbxj) this.f10417b;
                if (zzbxjVar != null) {
                    try {
                        zzbxjVar.zze(1);
                        return;
                    } catch (RemoteException e2) {
                        agd.g("#007 Could not call remote method.", e2);
                        return;
                    }
                }
                return;
            case 12:
                synchronized (((err) this.f10417b).f16049c) {
                    ((brm) ((err) this.f10417b).f16048b).a();
                }
                return;
            case 13:
                hz hzVar = (hz) this.f10417b;
                if (hzVar == null || (dcyVar = hzVar.f19401a) == null) {
                    return;
                }
                this.f10417b = null;
                if (dcyVar.isDone()) {
                    hzVar.af(dcyVar);
                    return;
                }
                try {
                    ScheduledFuture scheduledFuture2 = hzVar.f19402b;
                    hzVar.f19402b = null;
                    String str2 = "Timed out";
                    if (scheduledFuture2 != null) {
                        try {
                            long abs2 = Math.abs(scheduledFuture2.getDelay(TimeUnit.MILLISECONDS));
                            if (abs2 > 10) {
                                str2 = "Timed out (timeout delayed by " + abs2 + " ms after scheduled time)";
                            }
                        } catch (Throwable th3) {
                            hzVar.zzd(new cty(str2, 1));
                            throw th3;
                        }
                    }
                    hzVar.zzd(new cty(str2 + ": " + dcyVar.toString(), 1));
                    return;
                } finally {
                    dcyVar.cancel(true);
                }
            case 14:
                c();
                return;
            case 15:
                Context context = (Context) ((fpd) this.f10417b).f17190f;
                long j = fpd.m(context).getLong("app_set_id_last_used_time", -1L);
                long j2 = j != -1 ? j + 33696000000L : -1L;
                if (j2 == -1 || System.currentTimeMillis() <= j2) {
                    return;
                }
                if (!fpd.m(context).edit().remove("app_set_id").commit()) {
                    String valueOf = String.valueOf(context.getPackageName());
                    Log.e("AppSet", valueOf.length() != 0 ? "Failed to clear app set ID generated for App ".concat(valueOf) : new String("Failed to clear app set ID generated for App "));
                }
                if (context.getSharedPreferences("app_set_id_storage", 0).edit().remove("app_set_id_last_used_time").commit()) {
                    return;
                }
                String valueOf2 = String.valueOf(context.getPackageName());
                Log.e("AppSet", valueOf2.length() != 0 ? "Failed to clear app set ID last used time for App ".concat(valueOf2) : new String("Failed to clear app set ID last used time for App "));
                return;
            case 16:
                eod eodVar = (eod) this.f10417b;
                cis cisVar = eodVar.f15887a;
                long j3 = eodVar.f15888b;
                long j4 = eodVar.f15889c;
                ((cjv) cisVar.f12948b)._e();
                cjv cjvVar = (cjv) cisVar.f12948b;
                fcw fcwVar = cjvVar.k;
                cyg cygVar = (cyg) cjvVar.z;
                bgm bgmVar = cygVar.z;
                cyg.ak(bgmVar);
                bgmVar.o.h("Application going to the background");
                gmr gmrVar = cygVar.f13744b;
                cyg.ai(gmrVar);
                gmrVar.x.f(true);
                Bundle bundle = new Bundle();
                if (!cygVar.f13747e.j()) {
                    ((rd) fcwVar.f16580a).i();
                    fcwVar.f(j4, false, false);
                }
                csp cspVar = cygVar.f13745c;
                cyg.aj(cspVar);
                cspVar.ba(j3, bundle, LiveConfigKey.AUTO, "_ab");
                return;
            case 17:
                bsz bszVar = (bsz) this.f10417b;
                bszVar.zzaz()._e();
                bszVar.n = new yh(bszVar);
                ggz ggzVar = new ggz(bszVar);
                ggzVar.m();
                bszVar.l = ggzVar;
                dsd bm = bszVar.bm();
                dqu dquVar = bszVar.u;
                ckd.k(dquVar);
                bm.f14698b = dquVar;
                aaq aaqVar = new aaq(bszVar);
                aaqVar.m();
                bszVar.y = aaqVar;
                dqg dqgVar = new dqg(bszVar);
                dqgVar.m();
                bszVar.af = dqgVar;
                fit fitVar = new fit(bszVar, c2 == true ? 1 : 0);
                fitVar.m();
                bszVar.f12156b = fitVar;
                uk ukVar = new uk(bszVar);
                ukVar.m();
                bszVar.s = ukVar;
                bszVar.q = new gwx(bszVar);
                if (bszVar.ad != bszVar.t) {
                    bszVar.zzay().f11518b.e(Integer.valueOf(bszVar.ad), "Not all upload components initialized", Integer.valueOf(bszVar.t));
                }
                bszVar.ae = true;
                bszVar.zzaz()._e();
                ggz ggzVar2 = bszVar.l;
                bsz.ag(ggzVar2);
                ggzVar2.at();
                if (bszVar.y.f9870b.f() == 0) {
                    fou fouVar = bszVar.y.f9870b;
                    ((czz) bszVar.zzav()).getClass();
                    fouVar.g(System.currentTimeMillis());
                }
                bszVar.ar();
                return;
            default:
                ((zzzc) this.f10417b).zzL();
                return;
        }
    }
}
