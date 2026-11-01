package com.google.android.gms.measurement.internal;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.common.util.DynamiteApi;
import g.aad;
import g.ada;
import g.aiy;
import g.apu;
import g.asy;
import g.bba;
import g.bcm;
import g.bgm;
import g.bjq;
import g.bpp;
import g.brv;
import g.bxb;
import g.cde;
import g.chq;
import g.ckd;
import g.csp;
import g.ctf;
import g.cux;
import g.cyg;
import g.ddj;
import g.did;
import g.dkq;
import g.ebc;
import g.ein;
import g.eoa;
import g.etv;
import g.ffb;
import g.ffm;
import g.fth;
import g.fuy;
import g.fxg;
import g.gf;
import g.grg;
import g.tl;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;

@DynamiteApi
/* loaded from: classes3.dex */
public class AppMeasurementDynamiteService extends ddj {

    /* renamed from: a, reason: collision with root package name */
    public cyg f8992a;

    /* renamed from: b, reason: collision with root package name */
    public final tl f8993b;

    public AppMeasurementDynamiteService() {
        super("com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService");
        this.f8992a = null;
        this.f8993b = new tl(0);
    }

    @Override // g.ees
    public void beginAdUnitExposure(String str, long j) throws RemoteException {
        zzb();
        this.f8992a.am().m(str, j);
    }

    public final void c(String str, brv brvVar) {
        zzb();
        dkq dkqVar = this.f8992a.m;
        cyg.ai(dkqVar);
        dkqVar.ax(str, brvVar);
    }

    @Override // g.ees
    public void clearConditionalUserProperty(String str, String str2, Bundle bundle) throws RemoteException {
        zzb();
        csp cspVar = this.f8992a.f13745c;
        cyg.aj(cspVar);
        cspVar.aw(str, str2, bundle);
    }

    @Override // g.ees
    public void clearMeasurementEnabled(long j) throws RemoteException {
        zzb();
        csp cspVar = this.f8992a.f13745c;
        cyg.aj(cspVar);
        cspVar.zza();
        fth fthVar = ((cyg) cspVar.z).j;
        cyg.ak(fthVar);
        fthVar.p(new fuy(8, cspVar, null, false));
    }

    @Override // g.ees
    public void endAdUnitExposure(String str, long j) throws RemoteException {
        zzb();
        this.f8992a.am().k(str, j);
    }

    @Override // g.ees
    public void generateEventId(brv brvVar) throws RemoteException {
        zzb();
        dkq dkqVar = this.f8992a.m;
        cyg.ai(dkqVar);
        long by = dkqVar.by();
        zzb();
        dkq dkqVar2 = this.f8992a.m;
        cyg.ai(dkqVar2);
        dkqVar2.bg(brvVar, by);
    }

    @Override // g.ees
    public void getAppInstanceId(brv brvVar) throws RemoteException {
        zzb();
        fth fthVar = this.f8992a.j;
        cyg.ak(fthVar);
        fthVar.p(new bba(this, brvVar, 0));
    }

    @Override // g.ees
    public void getCachedAppInstanceId(brv brvVar) throws RemoteException {
        zzb();
        csp cspVar = this.f8992a.f13745c;
        cyg.aj(cspVar);
        c(cspVar.ay(), brvVar);
    }

    @Override // g.ees
    public void getConditionalUserProperties(String str, String str2, brv brvVar) throws RemoteException {
        zzb();
        fth fthVar = this.f8992a.j;
        cyg.ak(fthVar);
        fthVar.p(new chq(this, brvVar, str, str2, 9));
    }

    @Override // g.ees
    public void getCurrentScreenClass(brv brvVar) throws RemoteException {
        zzb();
        csp cspVar = this.f8992a.f13745c;
        cyg.aj(cspVar);
        bcm bcmVar = ((cyg) cspVar.z).h;
        cyg.aj(bcmVar);
        ein einVar = bcmVar.m;
        c(einVar != null ? einVar.f15599e : null, brvVar);
    }

    @Override // g.ees
    public void getCurrentScreenName(brv brvVar) throws RemoteException {
        zzb();
        csp cspVar = this.f8992a.f13745c;
        cyg.aj(cspVar);
        bcm bcmVar = ((cyg) cspVar.z).h;
        cyg.aj(bcmVar);
        ein einVar = bcmVar.m;
        c(einVar != null ? einVar.f15597c : null, brvVar);
    }

    @Override // g.ees
    public void getGmpAppId(brv brvVar) throws RemoteException {
        zzb();
        csp cspVar = this.f8992a.f13745c;
        cyg.aj(cspVar);
        cyg cygVar = (cyg) cspVar.z;
        String str = cygVar.aa;
        if (str == null) {
            try {
                str = cux.av(cygVar.v, cygVar.q);
            } catch (IllegalStateException e2) {
                bgm bgmVar = cygVar.z;
                cyg.ak(bgmVar);
                bgmVar.f11518b.i(e2, "getGoogleAppId failed with exception");
                str = null;
            }
        }
        c(str, brvVar);
    }

    @Override // g.ees
    public void getMaxUserProperties(String str, brv brvVar) throws RemoteException {
        zzb();
        csp cspVar = this.f8992a.f13745c;
        cyg.aj(cspVar);
        ckd.bf(str);
        ((cyg) cspVar.z).getClass();
        zzb();
        dkq dkqVar = this.f8992a.m;
        cyg.ai(dkqVar);
        dkqVar.at(brvVar, 25);
    }

    @Override // g.ees
    public void getTestFlag(brv brvVar, int i) throws RemoteException {
        zzb();
        if (i == 0) {
            dkq dkqVar = this.f8992a.m;
            cyg.ai(dkqVar);
            csp cspVar = this.f8992a.f13745c;
            cyg.aj(cspVar);
            AtomicReference atomicReference = new AtomicReference();
            fth fthVar = ((cyg) cspVar.z).j;
            cyg.ak(fthVar);
            dkqVar.ax((String) fthVar.s(atomicReference, 15000L, "String test flag value", new fxg(cspVar, atomicReference, 1)), brvVar);
            return;
        }
        if (i == 1) {
            dkq dkqVar2 = this.f8992a.m;
            cyg.ai(dkqVar2);
            csp cspVar2 = this.f8992a.f13745c;
            cyg.aj(cspVar2);
            AtomicReference atomicReference2 = new AtomicReference();
            fth fthVar2 = ((cyg) cspVar2.z).j;
            cyg.ak(fthVar2);
            dkqVar2.bg(brvVar, ((Long) fthVar2.s(atomicReference2, 15000L, "long test flag value", new fxg(cspVar2, atomicReference2, 2))).longValue());
            return;
        }
        if (i == 2) {
            dkq dkqVar3 = this.f8992a.m;
            cyg.ai(dkqVar3);
            csp cspVar3 = this.f8992a.f13745c;
            cyg.aj(cspVar3);
            AtomicReference atomicReference3 = new AtomicReference();
            fth fthVar3 = ((cyg) cspVar3.z).j;
            cyg.ak(fthVar3);
            double doubleValue = ((Double) fthVar3.s(atomicReference3, 15000L, "double test flag value", new fxg(cspVar3, atomicReference3, 4))).doubleValue();
            Bundle bundle = new Bundle();
            bundle.putDouble("r", doubleValue);
            try {
                brvVar.zzd(bundle);
                return;
            } catch (RemoteException e2) {
                bgm bgmVar = ((cyg) dkqVar3.z).z;
                cyg.ak(bgmVar);
                bgmVar.f11520g.i(e2, "Error returning double value to wrapper");
                return;
            }
        }
        if (i == 3) {
            dkq dkqVar4 = this.f8992a.m;
            cyg.ai(dkqVar4);
            csp cspVar4 = this.f8992a.f13745c;
            cyg.aj(cspVar4);
            AtomicReference atomicReference4 = new AtomicReference();
            fth fthVar4 = ((cyg) cspVar4.z).j;
            cyg.ak(fthVar4);
            dkqVar4.at(brvVar, ((Integer) fthVar4.s(atomicReference4, 15000L, "int test flag value", new fxg(cspVar4, atomicReference4, 3))).intValue());
            return;
        }
        if (i != 4) {
            return;
        }
        dkq dkqVar5 = this.f8992a.m;
        cyg.ai(dkqVar5);
        csp cspVar5 = this.f8992a.f13745c;
        cyg.aj(cspVar5);
        AtomicReference atomicReference5 = new AtomicReference();
        fth fthVar5 = ((cyg) cspVar5.z).j;
        cyg.ak(fthVar5);
        dkqVar5.as(brvVar, ((Boolean) fthVar5.s(atomicReference5, 15000L, "boolean test flag value", new fxg(cspVar5, atomicReference5, 0))).booleanValue());
    }

    @Override // g.ees
    public void getUserProperties(String str, String str2, boolean z, brv brvVar) throws RemoteException {
        zzb();
        fth fthVar = this.f8992a.j;
        cyg.ak(fthVar);
        fthVar.p(new gf(this, brvVar, str, str2, z, 2));
    }

    @Override // g.ees
    public void initForTests(Map map) throws RemoteException {
        zzb();
    }

    @Override // g.ees
    public void initialize(bjq bjqVar, apu apuVar, long j) throws RemoteException {
        cyg cygVar = this.f8992a;
        if (cygVar == null) {
            Context context = (Context) bpp.b(bjqVar);
            ckd.k(context);
            this.f8992a = cyg.al(context, apuVar, Long.valueOf(j));
        } else {
            bgm bgmVar = cygVar.z;
            cyg.ak(bgmVar);
            bgmVar.f11520g.h("Attempting to initialize multiple times");
        }
    }

    @Override // g.ees
    public void isDataCollectionEnabled(brv brvVar) throws RemoteException {
        zzb();
        fth fthVar = this.f8992a.j;
        cyg.ak(fthVar);
        fthVar.p(new bba(this, brvVar, 1));
    }

    @Override // g.ees
    public void logEvent(String str, String str2, Bundle bundle, boolean z, boolean z2, long j) throws RemoteException {
        zzb();
        csp cspVar = this.f8992a.f13745c;
        cyg.aj(cspVar);
        cspVar.at(str, str2, bundle, z, z2, j);
    }

    @Override // g.ees
    public void logEventAndBundle(String str, String str2, Bundle bundle, brv brvVar, long j) throws RemoteException {
        zzb();
        ckd.bf(str2);
        (bundle != null ? new Bundle(bundle) : new Bundle()).putString("_o", "app");
        ctf ctfVar = new ctf(str2, new cde(bundle), "app", j);
        fth fthVar = this.f8992a.j;
        cyg.ak(fthVar);
        fthVar.p(new chq(this, brvVar, ctfVar, str, 7));
    }

    @Override // g.ees
    public void logHealthData(int i, String str, bjq bjqVar, bjq bjqVar2, bjq bjqVar3) throws RemoteException {
        zzb();
        Object b2 = bjqVar == null ? null : bpp.b(bjqVar);
        Object b3 = bjqVar2 == null ? null : bpp.b(bjqVar2);
        Object b4 = bjqVar3 != null ? bpp.b(bjqVar3) : null;
        bgm bgmVar = this.f8992a.z;
        cyg.ak(bgmVar);
        bgmVar.u(i, true, false, str, b2, b3, b4);
    }

    @Override // g.ees
    public void onActivityCreated(bjq bjqVar, Bundle bundle, long j) throws RemoteException {
        zzb();
        csp cspVar = this.f8992a.f13745c;
        cyg.aj(cspVar);
        eoa eoaVar = cspVar.o;
        if (eoaVar != null) {
            csp cspVar2 = this.f8992a.f13745c;
            cyg.aj(cspVar2);
            cspVar2.aq();
            eoaVar.onActivityCreated((Activity) bpp.b(bjqVar), bundle);
        }
    }

    @Override // g.ees
    public void onActivityDestroyed(bjq bjqVar, long j) throws RemoteException {
        zzb();
        csp cspVar = this.f8992a.f13745c;
        cyg.aj(cspVar);
        eoa eoaVar = cspVar.o;
        if (eoaVar != null) {
            csp cspVar2 = this.f8992a.f13745c;
            cyg.aj(cspVar2);
            cspVar2.aq();
            eoaVar.onActivityDestroyed((Activity) bpp.b(bjqVar));
        }
    }

    @Override // g.ees
    public void onActivityPaused(bjq bjqVar, long j) throws RemoteException {
        zzb();
        csp cspVar = this.f8992a.f13745c;
        cyg.aj(cspVar);
        eoa eoaVar = cspVar.o;
        if (eoaVar != null) {
            csp cspVar2 = this.f8992a.f13745c;
            cyg.aj(cspVar2);
            cspVar2.aq();
            eoaVar.onActivityPaused((Activity) bpp.b(bjqVar));
        }
    }

    @Override // g.ees
    public void onActivityResumed(bjq bjqVar, long j) throws RemoteException {
        zzb();
        csp cspVar = this.f8992a.f13745c;
        cyg.aj(cspVar);
        eoa eoaVar = cspVar.o;
        if (eoaVar != null) {
            csp cspVar2 = this.f8992a.f13745c;
            cyg.aj(cspVar2);
            cspVar2.aq();
            eoaVar.onActivityResumed((Activity) bpp.b(bjqVar));
        }
    }

    @Override // g.ees
    public void onActivitySaveInstanceState(bjq bjqVar, brv brvVar, long j) throws RemoteException {
        zzb();
        csp cspVar = this.f8992a.f13745c;
        cyg.aj(cspVar);
        eoa eoaVar = cspVar.o;
        Bundle bundle = new Bundle();
        if (eoaVar != null) {
            csp cspVar2 = this.f8992a.f13745c;
            cyg.aj(cspVar2);
            cspVar2.aq();
            eoaVar.onActivitySaveInstanceState((Activity) bpp.b(bjqVar), bundle);
        }
        try {
            brvVar.zzd(bundle);
        } catch (RemoteException e2) {
            bgm bgmVar = this.f8992a.z;
            cyg.ak(bgmVar);
            bgmVar.f11520g.i(e2, "Error returning bundle value to wrapper");
        }
    }

    @Override // g.ees
    public void onActivityStarted(bjq bjqVar, long j) throws RemoteException {
        zzb();
        csp cspVar = this.f8992a.f13745c;
        cyg.aj(cspVar);
        if (cspVar.o != null) {
            csp cspVar2 = this.f8992a.f13745c;
            cyg.aj(cspVar2);
            cspVar2.aq();
        }
    }

    @Override // g.ees
    public void onActivityStopped(bjq bjqVar, long j) throws RemoteException {
        zzb();
        csp cspVar = this.f8992a.f13745c;
        cyg.aj(cspVar);
        if (cspVar.o != null) {
            csp cspVar2 = this.f8992a.f13745c;
            cyg.aj(cspVar2);
            cspVar2.aq();
        }
    }

    @Override // g.ees
    public void performAction(Bundle bundle, brv brvVar, long j) throws RemoteException {
        zzb();
        brvVar.zzd(null);
    }

    @Override // g.ees
    public void registerOnMeasurementEventListener(aad aadVar) throws RemoteException {
        ebc ebcVar;
        zzb();
        synchronized (this.f8993b) {
            try {
                tl tlVar = this.f8993b;
                etv etvVar = (etv) aadVar;
                Parcel _cf = etvVar._cf(etvVar._cd(), 2);
                int readInt = _cf.readInt();
                _cf.recycle();
                ebcVar = (ebc) tlVar.get(Integer.valueOf(readInt));
                if (ebcVar == null) {
                    ebcVar = new ebc(this, etvVar);
                    tl tlVar2 = this.f8993b;
                    Parcel _cf2 = etvVar._cf(etvVar._cd(), 2);
                    int readInt2 = _cf2.readInt();
                    _cf2.recycle();
                    tlVar2.put(Integer.valueOf(readInt2), ebcVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        csp cspVar = this.f8992a.f13745c;
        cyg.aj(cspVar);
        cspVar.zza();
        if (cspVar.u.add(ebcVar)) {
            return;
        }
        bgm bgmVar = ((cyg) cspVar.z).z;
        cyg.ak(bgmVar);
        bgmVar.f11520g.h("OnEventListener already registered");
    }

    @Override // g.ees
    public void resetAnalyticsData(long j) throws RemoteException {
        zzb();
        csp cspVar = this.f8992a.f13745c;
        cyg.aj(cspVar);
        cspVar.f13446g.set(null);
        fth fthVar = ((cyg) cspVar.z).j;
        cyg.ak(fthVar);
        fthVar.p(new bxb(cspVar, j, 1));
    }

    @Override // g.ees
    public void setConditionalUserProperty(Bundle bundle, long j) throws RemoteException {
        zzb();
        if (bundle == null) {
            bgm bgmVar = this.f8992a.z;
            cyg.ak(bgmVar);
            bgmVar.f11518b.h("Conditional user property must not be null");
        } else {
            csp cspVar = this.f8992a.f13745c;
            cyg.aj(cspVar);
            cspVar.av(bundle, j);
        }
    }

    @Override // g.ees
    public void setConsent(Bundle bundle, long j) throws RemoteException {
        zzb();
        csp cspVar = this.f8992a.f13745c;
        cyg.aj(cspVar);
        fth fthVar = ((cyg) cspVar.z).j;
        cyg.ak(fthVar);
        fthVar.o(new did(cspVar, bundle, j));
    }

    @Override // g.ees
    public void setConsentThirdParty(Bundle bundle, long j) throws RemoteException {
        zzb();
        csp cspVar = this.f8992a.f13745c;
        cyg.aj(cspVar);
        cspVar.ap(bundle, -20, j);
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x009c, code lost:
    
        if (r4.length() <= 100) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00cb, code lost:
    
        if (r5.length() <= 100) goto L39;
     */
    @Override // g.ees
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void setCurrentScreen(bjq bjqVar, String str, String str2, long j) throws RemoteException {
        zzb();
        bcm bcmVar = this.f8992a.h;
        cyg.aj(bcmVar);
        Activity activity = (Activity) bpp.b(bjqVar);
        if (!((cyg) bcmVar.z).f13747e.j()) {
            bgm bgmVar = ((cyg) bcmVar.z).z;
            cyg.ak(bgmVar);
            bgmVar.h.h("setCurrentScreen cannot be called while screen reporting is disabled.");
            return;
        }
        ein einVar = bcmVar.m;
        if (einVar == null) {
            bgm bgmVar2 = ((cyg) bcmVar.z).z;
            cyg.ak(bgmVar2);
            bgmVar2.h.h("setCurrentScreen cannot be called while no activity active");
            return;
        }
        if (bcmVar.h.get(activity) == null) {
            bgm bgmVar3 = ((cyg) bcmVar.z).z;
            cyg.ak(bgmVar3);
            bgmVar3.h.h("setCurrentScreen must be called with an activity in the activity lifecycle");
            return;
        }
        if (str2 == null) {
            str2 = bcmVar.v(activity.getClass());
        }
        boolean cg = ffb.cg(einVar.f15599e, str2);
        boolean cg2 = ffb.cg(einVar.f15597c, str);
        if (cg && cg2) {
            bgm bgmVar4 = ((cyg) bcmVar.z).z;
            cyg.ak(bgmVar4);
            bgmVar4.h.h("setCurrentScreen cannot be called with the same class and name");
            return;
        }
        if (str != null) {
            if (str.length() > 0) {
                ((cyg) bcmVar.z).getClass();
            }
            bgm bgmVar5 = ((cyg) bcmVar.z).z;
            cyg.ak(bgmVar5);
            bgmVar5.h.i(Integer.valueOf(str.length()), "Invalid screen name length in setCurrentScreen. Length");
            return;
        }
        if (str2 != null) {
            if (str2.length() > 0) {
                ((cyg) bcmVar.z).getClass();
            }
            bgm bgmVar6 = ((cyg) bcmVar.z).z;
            cyg.ak(bgmVar6);
            bgmVar6.h.i(Integer.valueOf(str2.length()), "Invalid class name length in setCurrentScreen. Length");
            return;
        }
        bgm bgmVar7 = ((cyg) bcmVar.z).z;
        cyg.ak(bgmVar7);
        bgmVar7.f11519c.e(str == null ? "null" : str, "Setting current screen to name, class", str2);
        dkq dkqVar = ((cyg) bcmVar.z).m;
        cyg.ai(dkqVar);
        ein einVar2 = new ein(str, str2, dkqVar.by());
        bcmVar.h.put(activity, einVar2);
        bcmVar.r(activity, einVar2, true);
    }

    @Override // g.ees
    public void setDataCollectionEnabled(boolean z) throws RemoteException {
        zzb();
        csp cspVar = this.f8992a.f13745c;
        cyg.aj(cspVar);
        cspVar.zza();
        fth fthVar = ((cyg) cspVar.z).j;
        cyg.ak(fthVar);
        fthVar.p(new asy(cspVar, 3, z));
    }

    @Override // g.ees
    public void setDefaultEventParameters(Bundle bundle) {
        zzb();
        csp cspVar = this.f8992a.f13745c;
        cyg.aj(cspVar);
        Bundle bundle2 = bundle == null ? null : new Bundle(bundle);
        fth fthVar = ((cyg) cspVar.z).j;
        cyg.ak(fthVar);
        fthVar.p(new aiy(cspVar, bundle2, 0));
    }

    @Override // g.ees
    public void setEventInterceptor(aad aadVar) throws RemoteException {
        zzb();
        ffm ffmVar = new ffm(this, aadVar);
        fth fthVar = this.f8992a.j;
        cyg.ak(fthVar);
        if (!fthVar.u()) {
            fth fthVar2 = this.f8992a.j;
            cyg.ak(fthVar2);
            fthVar2.p(new fuy(16, this, ffmVar, false));
            return;
        }
        csp cspVar = this.f8992a.f13745c;
        cyg.aj(cspVar);
        cspVar._e();
        cspVar.zza();
        ffm ffmVar2 = cspVar.p;
        if (ffmVar != ffmVar2) {
            ckd.an("EventInterceptor already set.", ffmVar2 == null);
        }
        cspVar.p = ffmVar;
    }

    @Override // g.ees
    public void setInstanceIdProvider(grg grgVar) throws RemoteException {
        zzb();
    }

    @Override // g.ees
    public void setMeasurementEnabled(boolean z, long j) throws RemoteException {
        zzb();
        csp cspVar = this.f8992a.f13745c;
        cyg.aj(cspVar);
        Boolean valueOf = Boolean.valueOf(z);
        cspVar.zza();
        fth fthVar = ((cyg) cspVar.z).j;
        cyg.ak(fthVar);
        fthVar.p(new fuy(8, cspVar, valueOf, false));
    }

    @Override // g.ees
    public void setMinimumSessionDuration(long j) throws RemoteException {
        zzb();
    }

    @Override // g.ees
    public void setSessionTimeoutDuration(long j) throws RemoteException {
        zzb();
        csp cspVar = this.f8992a.f13745c;
        cyg.aj(cspVar);
        fth fthVar = ((cyg) cspVar.z).j;
        cyg.ak(fthVar);
        fthVar.p(new bxb(cspVar, j, 0));
    }

    @Override // g.ees
    public void setUserId(String str, long j) throws RemoteException {
        zzb();
        csp cspVar = this.f8992a.f13745c;
        cyg.aj(cspVar);
        cyg cygVar = (cyg) cspVar.z;
        if (str != null && TextUtils.isEmpty(str)) {
            bgm bgmVar = cygVar.z;
            cyg.ak(bgmVar);
            bgmVar.f11520g.h("User ID must be non-empty or null");
        } else {
            fth fthVar = cygVar.j;
            cyg.ak(fthVar);
            fthVar.p(new fuy(cspVar, 7, str));
            cspVar.az(null, ada.COLUMN_ID, str, true, j);
        }
    }

    @Override // g.ees
    public void setUserProperty(String str, String str2, bjq bjqVar, boolean z, long j) throws RemoteException {
        zzb();
        Object b2 = bpp.b(bjqVar);
        csp cspVar = this.f8992a.f13745c;
        cyg.aj(cspVar);
        cspVar.az(str, str2, b2, z, j);
    }

    @Override // g.ees
    public void unregisterOnMeasurementEventListener(aad aadVar) throws RemoteException {
        etv etvVar;
        ebc ebcVar;
        zzb();
        synchronized (this.f8993b) {
            tl tlVar = this.f8993b;
            etvVar = (etv) aadVar;
            Parcel _cf = etvVar._cf(etvVar._cd(), 2);
            int readInt = _cf.readInt();
            _cf.recycle();
            ebcVar = (ebc) tlVar.remove(Integer.valueOf(readInt));
        }
        if (ebcVar == null) {
            ebcVar = new ebc(this, etvVar);
        }
        csp cspVar = this.f8992a.f13745c;
        cyg.aj(cspVar);
        cspVar.zza();
        if (cspVar.u.remove(ebcVar)) {
            return;
        }
        bgm bgmVar = ((cyg) cspVar.z).z;
        cyg.ak(bgmVar);
        bgmVar.f11520g.h("OnEventListener had not been registered");
    }

    public final void zzb() {
        if (this.f8992a == null) {
            throw new IllegalStateException("Attempting to perform action before initialize.");
        }
    }
}
