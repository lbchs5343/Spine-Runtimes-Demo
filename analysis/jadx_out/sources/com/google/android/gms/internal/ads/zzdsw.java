package com.google.android.gms.internal.ads;

import android.os.SystemClock;
import g.cmo;
import g.edt;
import g.gil;
import g.ti;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes3.dex */
public final class zzdsw {

    /* renamed from: b, reason: collision with root package name */
    public final String f6479b;

    /* renamed from: d, reason: collision with root package name */
    public final zzdsr f6481d;

    /* renamed from: e, reason: collision with root package name */
    public final ArrayList f6482e = new ArrayList();

    /* renamed from: f, reason: collision with root package name */
    public boolean f6483f = false;

    /* renamed from: a, reason: collision with root package name */
    public boolean f6478a = false;

    /* renamed from: c, reason: collision with root package name */
    public final gil f6480c = ti.f20033a.f20034ab.zzi();

    public zzdsw(String str, zzdsr zzdsrVar) {
        this.f6479b = str;
        this.f6481d = zzdsrVar;
    }

    public final Map g() {
        Map zza = this.f6481d.zza();
        ti.f20033a.v.getClass();
        zza.put("tms", Long.toString(SystemClock.elapsedRealtime(), 10));
        zza.put("tid", ((cmo) this.f6480c).ax() ? "" : this.f6479b);
        return zza;
    }

    public final synchronized void zza(String str) {
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzcf)).booleanValue()) {
            Map g2 = g();
            g2.put("action", "aaia");
            g2.put("aair", "MalformedJson");
            this.f6482e.add(g2);
        }
    }

    public final synchronized void zzb(String str, String str2) {
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzcf)).booleanValue()) {
            Map g2 = g();
            g2.put("action", "adapter_init_finished");
            g2.put("ancn", str);
            g2.put("rqe", str2);
            this.f6482e.add(g2);
        }
    }

    public final synchronized void zzc(String str) {
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzcf)).booleanValue()) {
            Map g2 = g();
            g2.put("action", "adapter_init_started");
            g2.put("ancn", str);
            this.f6482e.add(g2);
        }
    }

    public final synchronized void zzd(String str) {
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzcf)).booleanValue()) {
            Map g2 = g();
            g2.put("action", "adapter_init_finished");
            g2.put("ancn", str);
            this.f6482e.add(g2);
        }
    }

    public final synchronized void zze() {
        try {
            if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzcf)).booleanValue() && !this.f6478a) {
                Map g2 = g();
                g2.put("action", "init_finished");
                this.f6482e.add(g2);
                Iterator it = this.f6482e.iterator();
                while (it.hasNext()) {
                    this.f6481d.zzf((Map) it.next());
                }
                this.f6478a = true;
            }
        } finally {
        }
    }

    public final synchronized void zzf() {
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzcf)).booleanValue() && !this.f6483f) {
            Map g2 = g();
            g2.put("action", "init_started");
            this.f6482e.add(g2);
            this.f6483f = true;
        }
    }
}
