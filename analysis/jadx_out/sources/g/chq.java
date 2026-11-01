package g;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzban;
import com.google.android.gms.internal.ads.zzbml;
import com.google.android.gms.internal.ads.zzbtx;
import com.google.android.gms.internal.ads.zzbuj;
import com.google.android.gms.internal.ads.zzbxl;
import com.google.android.gms.internal.ads.zzbxw;
import com.google.android.gms.internal.ads.zzdsh;
import com.google.android.gms.measurement.internal.AppMeasurementDynamiteService;
import java.util.ArrayDeque;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class chq implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Object f12890a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f12891b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f12892c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f12893d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f12894e;

    public /* synthetic */ chq(Object obj, Object obj2, Object obj3, Object obj4, int i) {
        this.f12893d = i;
        this.f12892c = obj;
        this.f12894e = obj2;
        this.f12890a = obj3;
        this.f12891b = obj4;
    }

    public /* synthetic */ chq(Object obj, Object obj2, Object obj3, Object obj4, int i, boolean z) {
        this.f12893d = i;
        this.f12894e = obj;
        this.f12890a = obj2;
        this.f12891b = obj3;
        this.f12892c = obj4;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f12893d) {
            case 0:
                ezq ezqVar = (ezq) ((aoy) this.f12892c).h;
                far farVar = (far) this.f12890a;
                czb czbVar = (czb) this.f12894e;
                if (czbVar != null) {
                    ezqVar.y = true;
                    czbVar.f13801b.at(false);
                    ezqVar.y = false;
                }
                if (farVar.isEnabled() && farVar.hasSubMenu()) {
                    ((ftn) this.f12891b).ar(farVar, null, 4);
                    return;
                }
                return;
            case 1:
                Context context = (Context) this.f12894e;
                String str = (String) this.f12890a;
                awn awnVar = (awn) this.f12891b;
                try {
                    new zzbml(context, str).zza(awnVar.f10978a, (gsg) this.f12892c);
                    return;
                } catch (IllegalStateException e2) {
                    zzbuj.zza(context).zzh(e2, "InterstitialAd.load");
                    return;
                }
            case 2:
                qo qoVar = ((awn) this.f12891b).f10978a;
                new zzbtx((Context) this.f12894e, (bme) this.f12890a, qoVar, null).zzb((emg) this.f12892c);
                return;
            case 3:
                Context context2 = (Context) this.f12894e;
                String str2 = (String) this.f12890a;
                awn awnVar2 = (awn) this.f12891b;
                try {
                    new zzban(context2, str2, awnVar2.f10978a, 3, (fle) this.f12892c).zza();
                    return;
                } catch (IllegalStateException e3) {
                    zzbuj.zza(context2).zzh(e3, "AppOpenAd.load");
                    return;
                }
            case 4:
                Context context3 = (Context) this.f12894e;
                String str3 = (String) this.f12890a;
                awn awnVar3 = (awn) this.f12891b;
                try {
                    new zzbxw(context3, str3).zza(awnVar3.f10978a, (gsq) this.f12892c);
                    return;
                } catch (IllegalStateException e4) {
                    zzbuj.zza(context3).zzh(e4, "RewardedInterstitialAd.load");
                    return;
                }
            case 5:
                Context context4 = (Context) this.f12894e;
                String str4 = (String) this.f12890a;
                awn awnVar4 = (awn) this.f12891b;
                try {
                    new zzbxl(context4, str4).zzb(awnVar4.f10978a, (byk) this.f12892c);
                    return;
                } catch (IllegalStateException e5) {
                    zzbuj.zza(context4).zzh(e5, "RewardedAd.load");
                    return;
                }
            case 6:
                dbb ao = ((cyg) ((csp) this.f12892c).z).ao();
                AtomicReference atomicReference = (AtomicReference) this.f12894e;
                String str5 = (String) this.f12890a;
                String str6 = (String) this.f12891b;
                ao._e();
                ao.zza();
                ao.s(new fup(ao, atomicReference, str5, str6, ao.q(false)));
                return;
            case 7:
                dbb ao2 = ((AppMeasurementDynamiteService) this.f12892c).f8992a.ao();
                brv brvVar = (brv) this.f12894e;
                ctf ctfVar = (ctf) this.f12890a;
                String str7 = (String) this.f12891b;
                ao2._e();
                ao2.zza();
                cyg cygVar = (cyg) ao2.z;
                dkq dkqVar = cygVar.m;
                cyg.ai(dkqVar);
                if (gna.i.l(((cyg) dkqVar.z).v, 12451000) == 0) {
                    ao2.s(new chq(ao2, ctfVar, str7, brvVar, 8));
                    return;
                }
                bgm bgmVar = cygVar.z;
                cyg.ak(bgmVar);
                bgmVar.f11520g.h("Not bundling data. Service unavailable or out of date");
                dkq dkqVar2 = cygVar.m;
                cyg.ai(dkqVar2);
                dkqVar2.bh(brvVar, new byte[0]);
                return;
            case 8:
                brv brvVar2 = (brv) this.f12891b;
                dbb dbbVar = (dbb) this.f12892c;
                cyg cygVar2 = (cyg) dbbVar.z;
                byte[] bArr = null;
                try {
                    ake akeVar = dbbVar.l;
                    if (akeVar == null) {
                        bgm bgmVar2 = cygVar2.z;
                        cyg.ak(bgmVar2);
                        bgmVar2.f11518b.h("Discarding data. Failed to send event to service to bundle");
                    } else {
                        bArr = akeVar.w((ctf) this.f12894e, (String) this.f12890a);
                        dbbVar.x();
                        dkq dkqVar3 = cygVar2.m;
                        cyg.ai(dkqVar3);
                        dkqVar3.bh(brvVar2, bArr);
                    }
                    return;
                } catch (RemoteException e6) {
                    bgm bgmVar3 = cygVar2.z;
                    cyg.ak(bgmVar3);
                    bgmVar3.f11518b.i(e6, "Failed to send event to the service to bundle");
                    return;
                } finally {
                    dkq dkqVar4 = cygVar2.m;
                    cyg.ai(dkqVar4);
                    dkqVar4.bh(brvVar2, bArr);
                }
            case 9:
                dbb ao3 = ((AppMeasurementDynamiteService) this.f12892c).f8992a.ao();
                brv brvVar3 = (brv) this.f12894e;
                String str8 = (String) this.f12890a;
                String str9 = (String) this.f12891b;
                ao3._e();
                ao3.zza();
                ao3.s(new fup(ao3, str8, str9, ao3.q(false), brvVar3, 2));
                return;
            default:
                bgq bgqVar = (bgq) this.f12894e;
                zzdsh zzdshVar = (zzdsh) this.f12890a;
                ArrayDeque arrayDeque = (ArrayDeque) this.f12891b;
                ArrayDeque arrayDeque2 = (ArrayDeque) this.f12892c;
                bgqVar.m(zzdshVar, arrayDeque, "to");
                bgqVar.m(zzdshVar, arrayDeque2, "of");
                return;
        }
    }
}
