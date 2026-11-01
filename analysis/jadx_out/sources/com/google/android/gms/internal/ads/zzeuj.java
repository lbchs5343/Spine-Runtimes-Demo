package com.google.android.gms.internal.ads;

import android.content.Context;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import g.dcy;
import g.edt;
import g.ti;
import java.util.Set;
import java.util.concurrent.Callable;

/* loaded from: classes3.dex */
public final class zzeuj implements zzevz {

    /* renamed from: a, reason: collision with root package name */
    public static String f7553a;

    /* renamed from: b, reason: collision with root package name */
    public final zzges f7554b;

    /* renamed from: c, reason: collision with root package name */
    public final Context f7555c;

    /* renamed from: d, reason: collision with root package name */
    public final Set f7556d;

    public zzeuj(zzges zzgesVar, Context context, Set set) {
        this.f7554b = zzgesVar;
        this.f7555c = context;
        this.f7556d = set;
    }

    @Override // com.google.android.gms.internal.ads.zzevz
    public final int zza() {
        return 27;
    }

    @Override // com.google.android.gms.internal.ads.zzevz
    public final dcy zzb() {
        return this.f7554b.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzeui
            /* JADX WARN: Code restructure failed: missing block: B:12:0x0044, code lost:
            
                if (r0.contains(com.bytedance.sdk.openadsdk.mediation.MediationConstant.RIT_TYPE_BANNER) == false) goto L23;
             */
            @Override // java.util.concurrent.Callable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public final Object call() {
                zzeuj zzeujVar = zzeuj.this;
                Context context = zzeujVar.f7555c;
                zzbce zzbceVar = zzbcn.zzfb;
                zzbcl zzbclVar = edt.f15376a.f15379d;
                if (((Boolean) zzbclVar.zza(zzbceVar)).booleanValue()) {
                    if (!((Boolean) zzbclVar.zza(zzbcn.zzfm)).booleanValue()) {
                        Set set = zzeujVar.f7556d;
                        if (!set.contains("rewarded")) {
                            if (!set.contains(MediationConstant.RIT_TYPE_INTERSTITIAL)) {
                                if (!set.contains("native")) {
                                }
                            }
                        }
                    }
                    if (!((Boolean) zzbclVar.zza(zzbcn.zzfn)).booleanValue()) {
                        return new zzeuk(ti.f20033a.aa.zzf(context));
                    }
                    if (zzeuj.f7553a == null) {
                        zzeuj.f7553a = ti.f20033a.aa.zzf(context);
                    }
                    return new zzeuk(zzeuj.f7553a);
                }
                return new zzeuk(null);
            }
        });
    }
}
