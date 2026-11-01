package com.google.android.gms.internal.ads;

import android.os.SystemClock;
import android.text.TextUtils;
import g.cvb;
import g.czz;
import g.dcy;
import g.edt;
import g.fow;
import g.fzs;
import g.he;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
public final class zzeiv {

    /* renamed from: a, reason: collision with root package name */
    public long f7079a;

    /* renamed from: b, reason: collision with root package name */
    public final LinkedHashMap f7080b = new LinkedHashMap();

    /* renamed from: c, reason: collision with root package name */
    public final boolean f7081c = ((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzgI)).booleanValue();

    /* renamed from: d, reason: collision with root package name */
    public final cvb f7082d;

    /* renamed from: e, reason: collision with root package name */
    public final zzefg f7083e;

    /* renamed from: f, reason: collision with root package name */
    public long f7084f;

    /* renamed from: g, reason: collision with root package name */
    public final zzeix f7085g;
    public final zzflr h;
    public boolean i;

    public zzeiv(cvb cvbVar, zzeix zzeixVar, zzefg zzefgVar, zzflr zzflrVar) {
        this.f7082d = cvbVar;
        this.f7085g = zzeixVar;
        this.f7083e = zzefgVar;
        this.h = zzflrVar;
    }

    public static boolean j(zzeiv zzeivVar, zzfet zzfetVar) {
        synchronized (zzeivVar) {
            fow fowVar = (fow) zzeivVar.f7080b.get(zzfetVar);
            if (fowVar == null) {
                return false;
            }
            return fowVar.f17171e == 8;
        }
    }

    public final synchronized void k(zzfff zzfffVar, zzfet zzfetVar, dcy dcyVar, zzfln zzflnVar) {
        zzfew zzfewVar = zzfffVar.zzb.zzb;
        ((czz) this.f7082d).getClass();
        long elapsedRealtime = SystemClock.elapsedRealtime();
        String str = zzfetVar.zzw;
        if (str != null) {
            this.f7080b.put(zzfetVar, new fow(str, zzfetVar.zzaf, 9, 0L, null));
            zzgei.zzr(dcyVar, new fzs(this, elapsedRealtime, zzfewVar, zzfetVar, str, zzflnVar, zzfffVar), zzcaj.zzf);
        }
    }

    public final synchronized long zza() {
        return this.f7079a;
    }

    public final synchronized String zzg() {
        ArrayList arrayList;
        try {
            arrayList = new ArrayList();
            Iterator it = this.f7080b.entrySet().iterator();
            while (it.hasNext()) {
                fow fowVar = (fow) ((Map.Entry) it.next()).getValue();
                if (fowVar.f17171e != Integer.MAX_VALUE) {
                    arrayList.add(fowVar.toString());
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return TextUtils.join("_", arrayList);
    }

    public final synchronized void zzi(zzfet zzfetVar) {
        try {
            ((czz) this.f7082d).getClass();
            this.f7079a = SystemClock.elapsedRealtime() - this.f7084f;
            if (zzfetVar != null) {
                this.f7083e.zze(zzfetVar);
            }
            this.i = true;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void zzj() {
        ((czz) this.f7082d).getClass();
        this.f7079a = SystemClock.elapsedRealtime() - this.f7084f;
    }

    public final synchronized void zzk(List list) {
        ((czz) this.f7082d).getClass();
        this.f7084f = SystemClock.elapsedRealtime();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            zzfet zzfetVar = (zzfet) it.next();
            if (!TextUtils.isEmpty(zzfetVar.zzw)) {
                this.f7080b.put(zzfetVar, new fow(zzfetVar.zzw, zzfetVar.zzaf, he.UNDEFINED_ITEM_ID, 0L, null));
            }
        }
    }

    public final synchronized void zzl() {
        ((czz) this.f7082d).getClass();
        this.f7084f = SystemClock.elapsedRealtime();
    }

    public final synchronized void zzm(zzfet zzfetVar) {
        fow fowVar = (fow) this.f7080b.get(zzfetVar);
        if (fowVar == null || this.i) {
            return;
        }
        fowVar.f17171e = 8;
    }
}
