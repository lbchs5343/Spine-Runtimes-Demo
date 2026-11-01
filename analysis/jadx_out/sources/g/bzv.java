package g;

import android.app.ActivityManager;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.RemoteException;
import android.os.SystemClock;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.LiveConfigKey;
import com.google.android.gms.internal.ads.zzbcn;
import com.google.android.gms.internal.ads.zzcao;
import com.google.android.gms.internal.ads.zzcfk;
import com.google.android.gms.internal.ads.zzcox;
import com.google.android.gms.internal.ads.zzcoy;
import com.google.android.gms.internal.ads.zzcpd;
import com.google.android.gms.internal.ads.zzdit;
import com.google.android.gms.internal.ads.zzeew;
import com.google.android.gms.internal.ads.zzegv;
import com.google.android.gms.internal.ads.zzenh;
import com.google.android.gms.internal.ads.zzfaz;
import com.google.android.gms.internal.ads.zzfgl;
import com.google.android.gms.internal.ads.zzflt;
import com.google.android.gms.internal.ads.zzfmi;
import com.google.android.gms.internal.ads.zzfmj;
import com.google.android.gms.internal.ads.zzfmo;
import com.google.android.gms.internal.ads.zzgee;
import com.google.android.gms.internal.ads.zzgwc;
import com.google.android.gms.internal.ads.zzgwk;
import g.agd;
import java.security.Provider;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public final class bzv implements zzgee, zzenh, bjz {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f12529a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f12530b;

    public /* synthetic */ bzv(int i, Object obj) {
        this.f12529a = i;
        this.f12530b = obj;
    }

    private final /* bridge */ /* synthetic */ void i(Object obj) {
        zzcox zzcoxVar = (zzcox) obj;
        synchronized (((zzfaz) this.f12530b)) {
            try {
                zzcox zzcoxVar2 = ((zzfaz) this.f12530b).f7749e;
                if (zzcoxVar2 != null) {
                    zzcoxVar2.zzb();
                }
                zzfaz zzfazVar = (zzfaz) this.f12530b;
                zzfazVar.f7749e = zzcoxVar;
                zzcoxVar.zzc(zzfazVar);
                zzfaz zzfazVar2 = (zzfaz) this.f12530b;
                zzfazVar2.k.zzk(new zzcoy(zzcoxVar, zzfazVar2, zzfazVar2.k, zzfazVar2.f7745a));
                zzcoxVar.zzk();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void c(long j, boolean z) {
        cjv cjvVar = (cjv) this.f12530b;
        cjvVar._e();
        cyg cygVar = (cyg) cjvVar.z;
        if (cygVar.as()) {
            gmr gmrVar = cygVar.f13744b;
            cyg.ai(gmrVar);
            gmrVar.k.g(j);
            cygVar.f13743ab.getClass();
            long elapsedRealtime = SystemClock.elapsedRealtime();
            bgm bgmVar = cygVar.z;
            cyg.ak(bgmVar);
            bgmVar.f11519c.i(Long.valueOf(elapsedRealtime), "Session started, time");
            long j2 = j / 1000;
            Long valueOf = Long.valueOf(j2);
            csp cspVar = cygVar.f13745c;
            cyg.aj(cspVar);
            cspVar.ax(LiveConfigKey.AUTO, j, valueOf, "_sid");
            gmr gmrVar2 = cygVar.f13744b;
            cyg.ai(gmrVar2);
            gmrVar2.m.f(false);
            Bundle bundle = new Bundle();
            bundle.putLong("_sid", j2);
            if (cygVar.f13747e.g(null, gad.bo) && z) {
                bundle.putLong("_aib", 1L);
            }
            csp cspVar2 = cygVar.f13745c;
            cyg.aj(cspVar2);
            cspVar2.ba(j, bundle, LiveConfigKey.AUTO, "_s");
            ((gbh) ear.f15205a.f15206b.zza()).getClass();
            if (cygVar.f13747e.g(null, gad.q)) {
                gmr gmrVar3 = cygVar.f13744b;
                cyg.ai(gmrVar3);
                String i = gmrVar3.f18414g.i();
                if (TextUtils.isEmpty(i)) {
                    return;
                }
                Bundle bundle2 = new Bundle();
                bundle2.putString("_ffr", i);
                csp cspVar3 = cygVar.f13745c;
                cyg.aj(cspVar3);
                cspVar3.ba(j, bundle2, LiveConfigKey.AUTO, "_ssr");
            }
        }
    }

    public Object d() {
        fod fodVar = (fod) this.f12530b;
        Cursor query = fodVar.f17134e.query(fodVar.f17136g, fod.f17131b, null, null, null);
        if (query == null) {
            return Collections.EMPTY_MAP;
        }
        try {
            int count = query.getCount();
            if (count == 0) {
                return Collections.EMPTY_MAP;
            }
            Map tlVar = count <= 256 ? new tl(count) : new HashMap(count, 1.0f);
            while (query.moveToNext()) {
                tlVar.put(query.getString(0), query.getString(1));
            }
            return tlVar;
        } finally {
            query.close();
        }
    }

    public boolean e() {
        gmr gmrVar = ((cyg) this.f12530b).f13744b;
        cyg.ai(gmrVar);
        return gmrVar.j.f() > 0;
    }

    public void f(String str, Bundle bundle) {
        String uri;
        cyg cygVar = (cyg) this.f12530b;
        gmr gmrVar = cygVar.f13744b;
        fth fthVar = cygVar.j;
        cyg.ak(fthVar);
        fthVar._e();
        if (cygVar.as()) {
            return;
        }
        if (bundle.isEmpty()) {
            uri = null;
        } else {
            if (true == str.isEmpty()) {
                str = LiveConfigKey.AUTO;
            }
            Uri.Builder builder = new Uri.Builder();
            builder.path(str);
            for (String str2 : bundle.keySet()) {
                builder.appendQueryParameter(str2, bundle.getString(str2));
            }
            uri = builder.build().toString();
        }
        if (TextUtils.isEmpty(uri)) {
            return;
        }
        cyg.ai(gmrVar);
        gmrVar.p.l(uri);
        cyg.ai(gmrVar);
        fou fouVar = gmrVar.j;
        cygVar.f13743ab.getClass();
        fouVar.g(System.currentTimeMillis());
    }

    public void g(long j, boolean z) {
        cjv cjvVar = (cjv) this.f12530b;
        cjvVar._e();
        cjvVar.l();
        cyg cygVar = (cyg) cjvVar.z;
        gmr gmrVar = cygVar.f13744b;
        cyg.ai(gmrVar);
        if (gmrVar.au(j)) {
            gmr gmrVar2 = cygVar.f13744b;
            cyg.ai(gmrVar2);
            gmrVar2.m.f(true);
            eur.c();
            if (cygVar.f13747e.g(null, gad.az)) {
                cygVar.at().w();
            }
        }
        gmr gmrVar3 = cygVar.f13744b;
        cyg.ai(gmrVar3);
        gmrVar3.k.g(j);
        gmr gmrVar4 = cygVar.f13744b;
        cyg.ai(gmrVar4);
        if (gmrVar4.m.g()) {
            c(j, z);
        }
    }

    public boolean h() {
        cyg cygVar = (cyg) this.f12530b;
        if (!e()) {
            return false;
        }
        cygVar.f13743ab.getClass();
        long currentTimeMillis = System.currentTimeMillis();
        gmr gmrVar = cygVar.f13744b;
        cyg.ai(gmrVar);
        return currentTimeMillis - gmrVar.j.f() > cygVar.f13747e.o(null, gad.as);
    }

    @Override // g.bjz
    public Object zza(String str) {
        zzgwk zzgwkVar = (zzgwk) this.f12530b;
        Iterator it = zzgwc.zzb("GmsCore_OpenSSL", "AndroidOpenSSL").iterator();
        while (it.hasNext()) {
            try {
                return zzgwkVar.zza(str, (Provider) it.next());
            } catch (Exception unused) {
            }
        }
        return zzgwkVar.zza(str, null);
    }

    @Override // com.google.android.gms.internal.ads.zzenh
    public void zza() {
        switch (this.f12529a) {
            case 2:
                synchronized (((zzfaz) this.f12530b)) {
                    ((zzfaz) this.f12530b).f7749e = null;
                }
                return;
            default:
                cjv cjvVar = (cjv) this.f12530b;
                cjvVar._e();
                cyg cygVar = (cyg) cjvVar.z;
                gmr gmrVar = cygVar.f13744b;
                cyg.ai(gmrVar);
                cygVar.f13743ab.getClass();
                if (gmrVar.au(System.currentTimeMillis())) {
                    gmr gmrVar2 = cygVar.f13744b;
                    cyg.ai(gmrVar2);
                    gmrVar2.m.f(true);
                    ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
                    ActivityManager.getMyMemoryState(runningAppProcessInfo);
                    if (runningAppProcessInfo.importance == 100) {
                        bgm bgmVar = cygVar.z;
                        cyg.ak(bgmVar);
                        bgmVar.f11519c.h("Detected application was in foreground");
                        cygVar.f13743ab.getClass();
                        c(System.currentTimeMillis(), false);
                        return;
                    }
                    return;
                }
                return;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgee
    public void zza(Throwable th) {
        switch (this.f12529a) {
            case 0:
                if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzfl)).booleanValue()) {
                    ti.f20033a.f20034ab.zzv(th, "omid native display exp");
                    return;
                }
                return;
            case 1:
                zzegv zzegvVar = (zzegv) this.f12530b;
                abz zza = zzegvVar.f6945c.zzd().zza(th);
                zzegvVar.f6943a.zzdB(zza);
                zzfgl.zzb(zza.zza, th, "DelayedBannerAd.onFailure");
                return;
            default:
                zzfmo zzfmoVar = (zzfmo) this.f12530b;
                zzfmoVar.l.set(false);
                if ((th instanceof zzflt) && ((zzflt) th).zza() == 0) {
                    throw null;
                }
                zzfmo.o(zzfmoVar, true);
                return;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgee
    public void zzb(Object obj) {
        switch (this.f12529a) {
            case 0:
                zzdit zzditVar = (zzdit) this.f12530b;
                zzditVar.f6040b.zzT((zzcfk) obj);
                zzcao zzp = zzditVar.f6040b.zzp();
                zzeew zzf = zzditVar.zzf("Google", true);
                if (zzf != null && zzp != null) {
                    zzp.zzc(zzf);
                    return;
                } else {
                    if (zzp != null) {
                        zzp.cancel(false);
                        return;
                    }
                    return;
                }
            case 1:
                ((zzcpd) obj).zzk();
                return;
            case 2:
                i(obj);
                return;
            default:
                ((zzfmo) this.f12530b).l.set(false);
                if (obj == null) {
                    zzfmo.o((zzfmo) this.f12530b, true);
                    return;
                }
                ((zzfmo) this.f12530b).j.zzc();
                final zzfmo zzfmoVar = (zzfmo) this.f12530b;
                synchronized (zzfmoVar) {
                    zzfmi zzfmiVar = new zzfmi(obj, zzfmoVar.i);
                    zzfmoVar.f8013b.add(zzfmiVar);
                    esy.f16117a.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfmk
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzfmo zzfmoVar2 = zzfmo.this;
                            if (zzfmoVar2.f8016e.get()) {
                                try {
                                    zzfmoVar2.n.a(zzfmoVar2.f8017f);
                                } catch (RemoteException unused) {
                                    agd.b("Failed to call onAdsAvailable");
                                }
                            }
                        }
                    });
                    zzfmoVar.f8014c.schedule(new zzfmj(zzfmoVar), zzfmiVar.zza(), TimeUnit.MILLISECONDS);
                }
                zzfmo.o((zzfmo) this.f12530b, false);
                return;
        }
    }
}
