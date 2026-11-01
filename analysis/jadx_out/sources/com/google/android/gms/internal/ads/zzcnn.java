package com.google.android.gms.internal.ads;

import android.content.Context;
import android.hardware.display.DisplayManager;
import android.net.Uri;
import android.view.View;
import g.abz;
import g.akj;
import g.edt;
import g.esy;
import g.evo;
import g.fc;
import g.ti;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes3.dex */
public final class zzcnn implements zzcwm, zzcya, zzcxg, evo, zzcxc, zzdec {

    /* renamed from: a, reason: collision with root package name */
    public final zzfga f5381a;

    /* renamed from: b, reason: collision with root package name */
    public final zzfln f5382b;

    /* renamed from: c, reason: collision with root package name */
    public final AtomicBoolean f5383c = new AtomicBoolean();

    /* renamed from: d, reason: collision with root package name */
    public final zzbdu f5384d;

    /* renamed from: e, reason: collision with root package name */
    public final Executor f5385e;

    /* renamed from: f, reason: collision with root package name */
    public final WeakReference f5386f;

    /* renamed from: g, reason: collision with root package name */
    public final WeakReference f5387g;
    public final ScheduledExecutorService h;
    public final zzfff i;
    public final Context j;
    public final zzavc k;
    public final Executor l;
    public boolean m;
    public final zzcvo n;
    public final zzfet o;

    public zzcnn(Context context, zzges zzgesVar, Executor executor, ScheduledExecutorService scheduledExecutorService, zzfff zzfffVar, zzfet zzfetVar, zzfln zzflnVar, zzfga zzfgaVar, View view, zzcfk zzcfkVar, zzavc zzavcVar, zzbdu zzbduVar, zzcvo zzcvoVar) {
        this.j = context;
        this.l = zzgesVar;
        this.f5385e = executor;
        this.h = scheduledExecutorService;
        this.i = zzfffVar;
        this.o = zzfetVar;
        this.f5382b = zzflnVar;
        this.f5381a = zzfgaVar;
        this.k = zzavcVar;
        this.f5387g = new WeakReference(view);
        this.f5386f = new WeakReference(zzcfkVar);
        this.f5384d = zzbduVar;
        this.n = zzcvoVar;
    }

    @Override // g.evo
    public final void onAdClicked() {
        boolean booleanValue = ((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzay)).booleanValue();
        zzfff zzfffVar = this.i;
        if (!(booleanValue && zzfffVar.zzb.zzb.zzh) && ((Boolean) zzbem.zzd.zze()).booleanValue()) {
            zzgei.zzr((zzgdz) zzgei.zze(zzgdz.zzu(this.f5384d.zza()), Throwable.class, new zzfwh() { // from class: com.google.android.gms.internal.ads.zzcnh
                @Override // com.google.android.gms.internal.ads.zzfwh
                public final Object apply(Object obj) {
                    return "failure_click_attok";
                }
            }, zzcaj.zzf), new fc(29, this), this.l);
        } else {
            zzfet zzfetVar = this.o;
            this.f5381a.zzc(this.f5382b.zzc(zzfffVar, zzfetVar, zzfetVar.zzc), true == ti.f20033a.f20034ab.zzA(this.j) ? 2 : 1);
        }
    }

    public final List p() {
        boolean booleanValue = ((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzla)).booleanValue();
        zzfet zzfetVar = this.o;
        if (booleanValue) {
            esy esyVar = ti.f20033a.z;
            Context context = this.j;
            if (esy.ag(context)) {
                Object systemService = context.getSystemService("display");
                Integer valueOf = systemService instanceof DisplayManager ? Integer.valueOf(((DisplayManager) systemService).getDisplays().length) : null;
                if (valueOf != null) {
                    int min = Math.min(valueOf.intValue(), 20);
                    ArrayList arrayList = new ArrayList();
                    Iterator it = zzfetVar.zzd.iterator();
                    while (it.hasNext()) {
                        arrayList.add(Uri.parse((String) it.next()).buildUpon().appendQueryParameter("dspct", Integer.toString(min)).toString());
                    }
                    return arrayList;
                }
            }
        }
        return zzfetVar.zzd;
    }

    public final void q() {
        int i;
        zzfet zzfetVar = this.o;
        List list = zzfetVar.zzd;
        if (list == null || list.isEmpty()) {
            return;
        }
        zzbce zzbceVar = zzbcn.zzdD;
        edt edtVar = edt.f15376a;
        zzbcl zzbclVar = edtVar.f15379d;
        zzbcl zzbclVar2 = edtVar.f15379d;
        String zzh = ((Boolean) zzbclVar.zza(zzbceVar)).booleanValue() ? this.k.zzc().zzh(this.j, (View) this.f5387g.get(), null) : null;
        if ((((Boolean) zzbclVar2.zza(zzbcn.zzay)).booleanValue() && this.i.zzb.zzb.zzh) || !((Boolean) zzbem.zzh.zze()).booleanValue()) {
            this.f5381a.zza(this.f5382b.zzd(this.i, this.o, false, zzh, null, p()));
            return;
        }
        if (((Boolean) zzbem.zzg.zze()).booleanValue() && ((i = zzfetVar.zzb) == 1 || i == 2 || i == 5)) {
        }
        zzgei.zzr((zzgdz) zzgei.zzo(zzgdz.zzu(zzgei.zzh(null)), ((Long) zzbclVar2.zza(zzbcn.zzbc)).longValue(), TimeUnit.MILLISECONDS, this.h), new akj(27, this, zzh, false), this.l);
    }

    public final void r(final int i, final int i2) {
        View view;
        if (i <= 0 || !((view = (View) this.f5387g.get()) == null || view.getHeight() == 0 || view.getWidth() == 0)) {
            q();
        } else {
            this.h.schedule(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcnk
                @Override // java.lang.Runnable
                public final void run() {
                    final zzcnn zzcnnVar = zzcnn.this;
                    final int i3 = i;
                    final int i4 = i2;
                    zzcnnVar.getClass();
                    zzcnnVar.l.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcni
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzcnn.this.r(i3 - 1, i4);
                        }
                    });
                }
            }, i2, TimeUnit.MILLISECONDS);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcwm
    public final void zza() {
    }

    @Override // com.google.android.gms.internal.ads.zzcwm
    public final void zzb() {
    }

    @Override // com.google.android.gms.internal.ads.zzcwm
    public final void zzc() {
    }

    @Override // com.google.android.gms.internal.ads.zzcwm
    public final void zzds(zzbwj zzbwjVar, String str, String str2) {
        zzfet zzfetVar = this.o;
        this.f5381a.zza(this.f5382b.zze(zzfetVar, zzfetVar.zzh, zzbwjVar));
    }

    @Override // com.google.android.gms.internal.ads.zzcwm
    public final void zze() {
        zzfet zzfetVar = this.o;
        this.f5381a.zza(this.f5382b.zzc(this.i, zzfetVar, zzfetVar.zzi));
    }

    @Override // com.google.android.gms.internal.ads.zzcwm
    public final void zzf() {
        zzfet zzfetVar = this.o;
        this.f5381a.zza(this.f5382b.zzc(this.i, zzfetVar, zzfetVar.zzg));
    }

    @Override // com.google.android.gms.internal.ads.zzcxc
    public final void zzq(abz abzVar) {
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzbB)).booleanValue()) {
            int i = abzVar.zza;
            zzfet zzfetVar = this.o;
            this.f5381a.zza(this.f5382b.zzc(this.i, zzfetVar, zzfln.zzf(2, i, zzfetVar.zzo)));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcxg
    public final void zzr() {
        if (this.f5383c.compareAndSet(false, true)) {
            zzbce zzbceVar = zzbcn.zzdM;
            edt edtVar = edt.f15376a;
            int intValue = ((Integer) edtVar.f15379d.zza(zzbceVar)).intValue();
            if (intValue > 0) {
                r(intValue, ((Integer) edtVar.f15379d.zza(zzbcn.zzdN)).intValue());
                return;
            }
            if (!((Boolean) edtVar.f15379d.zza(zzbcn.zzdL)).booleanValue()) {
                q();
            } else {
                this.f5385e.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcng
                    @Override // java.lang.Runnable
                    public final void run() {
                        final zzcnn zzcnnVar = zzcnn.this;
                        zzcnnVar.getClass();
                        zzcnnVar.l.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcnj
                            @Override // java.lang.Runnable
                            public final void run() {
                                zzcnn.this.q();
                            }
                        });
                    }
                });
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcya
    public final synchronized void zzs() {
        zzcvo zzcvoVar;
        try {
            if (this.m) {
                ArrayList arrayList = new ArrayList(p());
                arrayList.addAll(this.o.zzf);
                this.f5381a.zza(this.f5382b.zzd(this.i, this.o, true, null, null, arrayList));
            } else {
                zzfga zzfgaVar = this.f5381a;
                zzfln zzflnVar = this.f5382b;
                zzfff zzfffVar = this.i;
                zzfet zzfetVar = this.o;
                zzfgaVar.zza(zzflnVar.zzc(zzfffVar, zzfetVar, zzfetVar.zzm));
                if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzdI)).booleanValue() && (zzcvoVar = this.n) != null) {
                    List zzh = zzfln.zzh(zzfln.zzg(zzcvoVar.zzb().zzm, zzcvoVar.zza().zzg()), this.n.zza().zza());
                    zzfga zzfgaVar2 = this.f5381a;
                    zzfln zzflnVar2 = this.f5382b;
                    zzcvo zzcvoVar2 = this.n;
                    zzfgaVar2.zza(zzflnVar2.zzc(zzcvoVar2.zzc(), zzcvoVar2.zzb(), zzh));
                }
                zzfga zzfgaVar3 = this.f5381a;
                zzfln zzflnVar3 = this.f5382b;
                zzfff zzfffVar2 = this.i;
                zzfet zzfetVar2 = this.o;
                zzfgaVar3.zza(zzflnVar3.zzc(zzfffVar2, zzfetVar2, zzfetVar2.zzf));
            }
            this.m = true;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdec
    public final void zzt() {
        zzfet zzfetVar = this.o;
        this.f5381a.zza(this.f5382b.zzc(this.i, zzfetVar, zzfetVar.zzau));
    }
}
