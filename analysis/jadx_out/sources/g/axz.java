package g;

import android.os.Bundle;
import android.os.SystemClock;
import com.bytedance.android.live.base.api.push.model.PushUIConfig;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class axz extends bcy {

    /* renamed from: a, reason: collision with root package name */
    public final cyg f11046a;

    /* renamed from: g, reason: collision with root package name */
    public final csp f11047g;

    public axz(cyg cygVar) {
        ckd.k(cygVar);
        this.f11046a = cygVar;
        csp cspVar = cygVar.f13745c;
        cyg.aj(cspVar);
        this.f11047g = cspVar;
    }

    @Override // g.frp
    public final void b(String str, String str2, Bundle bundle) {
        csp cspVar = this.f11047g;
        ((cyg) cspVar.z).f13743ab.getClass();
        cspVar.at(str, str2, bundle, true, true, System.currentTimeMillis());
    }

    @Override // g.frp
    public final void c(String str, String str2, Bundle bundle) {
        csp cspVar = this.f11046a.f13745c;
        cyg.aj(cspVar);
        cspVar.aw(str, str2, bundle);
    }

    @Override // g.frp
    public final List d(String str, String str2) {
        csp cspVar = this.f11047g;
        cyg cygVar = (cyg) cspVar.z;
        fth fthVar = cygVar.j;
        bgm bgmVar = cygVar.z;
        cyg.ak(fthVar);
        if (fthVar.u()) {
            cyg.ak(bgmVar);
            bgmVar.f11518b.h("Cannot get conditional user properties from analytics worker thread");
            return new ArrayList(0);
        }
        if (fbc.o()) {
            cyg.ak(bgmVar);
            bgmVar.f11518b.h("Cannot get conditional user properties from main thread");
            return new ArrayList(0);
        }
        AtomicReference atomicReference = new AtomicReference();
        fth fthVar2 = cygVar.j;
        cyg.ak(fthVar2);
        fthVar2.s(atomicReference, PushUIConfig.dismissTime, "get conditional user properties", new chq(cspVar, atomicReference, str, str2, 6));
        List list = (List) atomicReference.get();
        if (list != null) {
            return dkq.k(list);
        }
        cyg.ak(bgmVar);
        bgmVar.f11518b.i(null, "Timed out waiting for get conditional user properties");
        return new ArrayList();
    }

    @Override // g.frp
    public final Map e(String str, String str2, boolean z) {
        csp cspVar = this.f11047g;
        cyg cygVar = (cyg) cspVar.z;
        fth fthVar = cygVar.j;
        bgm bgmVar = cygVar.z;
        cyg.ak(fthVar);
        if (fthVar.u()) {
            cyg.ak(bgmVar);
            bgmVar.f11518b.h("Cannot get user properties from analytics worker thread");
            return Collections.EMPTY_MAP;
        }
        if (fbc.o()) {
            cyg.ak(bgmVar);
            bgmVar.f11518b.h("Cannot get user properties from main thread");
            return Collections.EMPTY_MAP;
        }
        AtomicReference atomicReference = new AtomicReference();
        fth fthVar2 = cygVar.j;
        cyg.ak(fthVar2);
        fthVar2.s(atomicReference, PushUIConfig.dismissTime, "get user properties", new gf(cspVar, atomicReference, str, str2, z, 0));
        List<cmd> list = (List) atomicReference.get();
        if (list == null) {
            cyg.ak(bgmVar);
            bgmVar.f11518b.i(Boolean.valueOf(z), "Timed out waiting for handle get user properties, includeInternal");
            return Collections.EMPTY_MAP;
        }
        tl tlVar = new tl(list.size());
        for (cmd cmdVar : list) {
            Object zza = cmdVar.zza();
            if (zza != null) {
                tlVar.put(cmdVar.zzb, zza);
            }
        }
        return tlVar;
    }

    @Override // g.frp
    public final void f(Bundle bundle) {
        csp cspVar = this.f11047g;
        ((cyg) cspVar.z).f13743ab.getClass();
        cspVar.av(bundle, System.currentTimeMillis());
    }

    @Override // g.frp
    public final int zza(String str) {
        csp cspVar = this.f11047g;
        cspVar.getClass();
        ckd.bf(str);
        ((cyg) cspVar.z).getClass();
        return 25;
    }

    @Override // g.frp
    public final long zzb() {
        dkq dkqVar = this.f11046a.m;
        cyg.ai(dkqVar);
        return dkqVar.by();
    }

    @Override // g.frp
    public final String zzh() {
        return this.f11047g.ay();
    }

    @Override // g.frp
    public final String zzi() {
        bcm bcmVar = ((cyg) this.f11047g.z).h;
        cyg.aj(bcmVar);
        ein einVar = bcmVar.m;
        if (einVar != null) {
            return einVar.f15599e;
        }
        return null;
    }

    @Override // g.frp
    public final String zzj() {
        bcm bcmVar = ((cyg) this.f11047g.z).h;
        cyg.aj(bcmVar);
        ein einVar = bcmVar.m;
        if (einVar != null) {
            return einVar.f15597c;
        }
        return null;
    }

    @Override // g.frp
    public final String zzk() {
        return this.f11047g.ay();
    }

    @Override // g.frp
    public final void zzp(String str) {
        cyg cygVar = this.f11046a;
        fqm am = cygVar.am();
        cygVar.f13743ab.getClass();
        am.m(str, SystemClock.elapsedRealtime());
    }

    @Override // g.frp
    public final void zzr(String str) {
        cyg cygVar = this.f11046a;
        fqm am = cygVar.am();
        cygVar.f13743ab.getClass();
        am.k(str, SystemClock.elapsedRealtime());
    }
}
