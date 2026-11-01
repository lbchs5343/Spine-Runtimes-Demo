package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import g.abz;
import g.bme;
import g.dzm;
import g.edt;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public final class zzfkl implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public ScheduledFuture f7954a;

    /* renamed from: b, reason: collision with root package name */
    public abz f7955b;

    /* renamed from: c, reason: collision with root package name */
    public String f7956c;

    /* renamed from: e, reason: collision with root package name */
    public String f7958e;
    public final zzfko h;
    public zzffe i;

    /* renamed from: f, reason: collision with root package name */
    public final ArrayList f7959f = new ArrayList();

    /* renamed from: g, reason: collision with root package name */
    public int f7960g = 2;

    /* renamed from: d, reason: collision with root package name */
    public zzfkq f7957d = zzfkq.SCAR_REQUEST_TYPE_UNSPECIFIED;

    public zzfkl(zzfko zzfkoVar) {
        this.h = zzfkoVar;
    }

    @Override // java.lang.Runnable
    public final synchronized void run() {
        zzh();
    }

    public final synchronized zzfkl zza(zzfka zzfkaVar) {
        try {
            if (((Boolean) zzbeg.zzc.zze()).booleanValue()) {
                ArrayList arrayList = this.f7959f;
                zzfkaVar.zzj();
                arrayList.add(zzfkaVar);
                ScheduledFuture scheduledFuture = this.f7954a;
                if (scheduledFuture != null) {
                    scheduledFuture.cancel(false);
                }
                this.f7954a = zzcaj.zzd.schedule(this, ((Integer) edt.f15376a.f15379d.zza(zzbcn.zzis)).intValue(), TimeUnit.MILLISECONDS);
            }
        } catch (Throwable th) {
            throw th;
        }
        return this;
    }

    public final synchronized zzfkl zzb(String str) {
        if (((Boolean) zzbeg.zzc.zze()).booleanValue() && zzfkk.zze(str)) {
            this.f7956c = str;
        }
        return this;
    }

    public final synchronized zzfkl zzc(abz abzVar) {
        if (((Boolean) zzbeg.zzc.zze()).booleanValue()) {
            this.f7955b = abzVar;
        }
        return this;
    }

    public final synchronized zzfkl zzd(ArrayList arrayList) {
        try {
            if (((Boolean) zzbeg.zzc.zze()).booleanValue()) {
                if (!arrayList.contains(MediationConstant.RIT_TYPE_BANNER) && !arrayList.contains(bme.BANNER.name())) {
                    if (!arrayList.contains(MediationConstant.RIT_TYPE_INTERSTITIAL) && !arrayList.contains(bme.INTERSTITIAL.name())) {
                        if (!arrayList.contains("native") && !arrayList.contains(bme.NATIVE.name())) {
                            if (!arrayList.contains("rewarded") && !arrayList.contains(bme.REWARDED.name())) {
                                if (arrayList.contains("app_open_ad")) {
                                    this.f7960g = 7;
                                } else if (arrayList.contains("rewarded_interstitial") || arrayList.contains(bme.REWARDED_INTERSTITIAL.name())) {
                                    this.f7960g = 6;
                                }
                            }
                            this.f7960g = 5;
                        }
                        this.f7960g = 8;
                    }
                    this.f7960g = 4;
                }
                this.f7960g = 3;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this;
    }

    public final synchronized zzfkl zze(String str) {
        if (((Boolean) zzbeg.zzc.zze()).booleanValue()) {
            this.f7958e = str;
        }
        return this;
    }

    public final synchronized zzfkl zzf(Bundle bundle) {
        if (((Boolean) zzbeg.zzc.zze()).booleanValue()) {
            this.f7957d = dzm.aa(bundle);
        }
        return this;
    }

    public final synchronized zzfkl zzg(zzffe zzffeVar) {
        if (((Boolean) zzbeg.zzc.zze()).booleanValue()) {
            this.i = zzffeVar;
        }
        return this;
    }

    public final synchronized void zzh() {
        try {
            if (((Boolean) zzbeg.zzc.zze()).booleanValue()) {
                ScheduledFuture scheduledFuture = this.f7954a;
                if (scheduledFuture != null) {
                    scheduledFuture.cancel(false);
                }
                Iterator it = this.f7959f.iterator();
                while (it.hasNext()) {
                    zzfka zzfkaVar = (zzfka) it.next();
                    int i = this.f7960g;
                    if (i != 2) {
                        zzfkaVar.zzn(i);
                    }
                    if (!TextUtils.isEmpty(this.f7956c)) {
                        zzfkaVar.zze(this.f7956c);
                    }
                    if (!TextUtils.isEmpty(this.f7958e) && !zzfkaVar.zzl()) {
                        zzfkaVar.zzd(this.f7958e);
                    }
                    zzffe zzffeVar = this.i;
                    if (zzffeVar != null) {
                        zzfkaVar.zzb(zzffeVar);
                    } else {
                        abz abzVar = this.f7955b;
                        if (abzVar != null) {
                            zzfkaVar.zza(abzVar);
                        }
                    }
                    zzfkaVar.zzf(this.f7957d);
                    this.h.zzb(zzfkaVar.zzm());
                }
                this.f7959f.clear();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized zzfkl zzi(int i) {
        if (((Boolean) zzbeg.zzc.zze()).booleanValue()) {
            this.f7960g = i;
        }
        return this;
    }
}
