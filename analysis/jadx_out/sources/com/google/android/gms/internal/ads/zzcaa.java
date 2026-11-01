package com.google.android.gms.internal.ads;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import g.aeh;
import g.agd;
import g.cmo;
import g.edt;
import g.gil;
import g.ti;

/* loaded from: classes3.dex */
public final class zzcaa {

    /* renamed from: a, reason: collision with root package name */
    public final gil f5119a;
    public final String k;

    /* renamed from: e, reason: collision with root package name */
    public long f5123e = -1;
    public long h = -1;
    public int j = -1;

    /* renamed from: c, reason: collision with root package name */
    public int f5121c = -1;

    /* renamed from: d, reason: collision with root package name */
    public long f5122d = 0;

    /* renamed from: f, reason: collision with root package name */
    public final Object f5124f = new Object();

    /* renamed from: g, reason: collision with root package name */
    public int f5125g = 0;
    public int i = 0;

    /* renamed from: b, reason: collision with root package name */
    public int f5120b = 0;

    public zzcaa(String str, gil gilVar) {
        this.k = str;
        this.f5119a = gilVar;
    }

    public final void l() {
        if (((Boolean) zzbeu.zza.zze()).booleanValue()) {
            synchronized (this.f5124f) {
                this.j--;
                this.f5121c--;
            }
        }
    }

    public final int zza() {
        int i;
        synchronized (this.f5124f) {
            i = this.f5120b;
        }
        return i;
    }

    public final Bundle zzb(Context context, String str) {
        Bundle bundle;
        synchronized (this.f5124f) {
            try {
                bundle = new Bundle();
                if (!((cmo) this.f5119a).ax()) {
                    bundle.putString("session_id", this.k);
                }
                bundle.putLong("basets", this.h);
                bundle.putLong("currts", this.f5123e);
                bundle.putString("seq_num", str);
                bundle.putInt("preqs", this.j);
                bundle.putInt("preqs_in_session", this.f5121c);
                bundle.putLong("time_in_session", this.f5122d);
                bundle.putInt("pclick", this.f5125g);
                bundle.putInt("pimp", this.i);
                Context zza = zzbwh.zza(context);
                int identifier = zza.getResources().getIdentifier("Theme.Translucent", "style", "android");
                boolean z = false;
                if (identifier == 0) {
                    agd.k("Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad.");
                } else {
                    try {
                        if (identifier == zza.getPackageManager().getActivityInfo(new ComponentName(zza.getPackageName(), "com.google.android.gms.ads.AdActivity"), 0).theme) {
                            z = true;
                        } else {
                            agd.k("Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad.");
                        }
                    } catch (PackageManager.NameNotFoundException unused) {
                        agd.b("Fail to fetch AdActivity theme");
                        agd.k("Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad.");
                    }
                }
                bundle.putBoolean("support_transparent_background", z);
                bundle.putInt("consent_form_action_identifier", zza());
            } catch (Throwable th) {
                throw th;
            }
        }
        return bundle;
    }

    public final void zzc() {
        synchronized (this.f5124f) {
            this.f5125g++;
        }
    }

    public final void zzd() {
        synchronized (this.f5124f) {
            this.i++;
        }
    }

    public final void zze() {
        l();
    }

    public final void zzf() {
        l();
    }

    public final void zzg(aeh aehVar, long j) {
        Bundle bundle;
        synchronized (this.f5124f) {
            try {
                long bb = ((cmo) this.f5119a).bb();
                ti.f20033a.v.getClass();
                long currentTimeMillis = System.currentTimeMillis();
                if (this.h == -1) {
                    if (currentTimeMillis - bb > ((Long) edt.f15376a.f15379d.zza(zzbcn.zzba)).longValue()) {
                        this.f5121c = -1;
                    } else {
                        this.f5121c = ((cmo) this.f5119a).aw();
                    }
                    this.h = j;
                    this.f5123e = j;
                } else {
                    this.f5123e = j;
                }
                if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzdH)).booleanValue() || (bundle = aehVar.zzc) == null || bundle.getInt("gw", 2) != 1) {
                    this.j++;
                    int i = this.f5121c + 1;
                    this.f5121c = i;
                    if (i == 0) {
                        this.f5122d = 0L;
                        ((cmo) this.f5119a).aq(currentTimeMillis);
                    } else {
                        this.f5122d = currentTimeMillis - ((cmo) this.f5119a).bh();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zzh() {
        synchronized (this.f5124f) {
            this.f5120b++;
        }
    }
}
