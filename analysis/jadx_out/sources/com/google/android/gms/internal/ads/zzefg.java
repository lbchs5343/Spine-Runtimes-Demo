package com.google.android.gms.internal.ads;

import android.os.Bundle;
import g.abz;
import g.awf;
import g.edt;
import g.ti;
import g.uf;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONException;

/* loaded from: classes3.dex */
public final class zzefg {

    /* renamed from: f, reason: collision with root package name */
    public final String f6885f;

    /* renamed from: a, reason: collision with root package name */
    public zzfew f6880a = null;

    /* renamed from: b, reason: collision with root package name */
    public zzfet f6881b = null;

    /* renamed from: d, reason: collision with root package name */
    public uf f6883d = null;

    /* renamed from: e, reason: collision with root package name */
    public final Map f6884e = awf.ab();

    /* renamed from: c, reason: collision with root package name */
    public final List f6882c = Collections.synchronizedList(new ArrayList());

    public zzefg(String str) {
        this.f6885f = str;
    }

    public static String g(zzfet zzfetVar) {
        return ((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzdG)).booleanValue() ? zzfetVar.zzap : zzfetVar.zzw;
    }

    public final synchronized void h(zzfet zzfetVar, int i) {
        String str;
        String str2;
        String str3;
        String str4;
        Map map = this.f6884e;
        String g2 = g(zzfetVar);
        if (map.containsKey(g2)) {
            return;
        }
        Bundle bundle = new Bundle();
        Iterator<String> keys = zzfetVar.zzv.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            try {
                bundle.putString(next, zzfetVar.zzv.getString(next));
            } catch (JSONException unused) {
            }
        }
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzgE)).booleanValue()) {
            str = zzfetVar.zzF;
            str2 = zzfetVar.zzG;
            str3 = zzfetVar.zzH;
            str4 = zzfetVar.zzI;
        } else {
            str = "";
            str2 = "";
            str3 = "";
            str4 = "";
        }
        uf ufVar = new uf(zzfetVar.zzE, 0L, null, bundle, str, str2, str3, str4);
        try {
            this.f6882c.add(i, ufVar);
        } catch (IndexOutOfBoundsException e2) {
            ti.f20033a.f20034ab.zzw(e2, "AdapterResponseInfoCollector.addAdapterResponseInfoEntryAtLocation");
        }
        this.f6884e.put(g2, ufVar);
    }

    public final void i(zzfet zzfetVar, long j, abz abzVar, boolean z) {
        String g2 = g(zzfetVar);
        Map map = this.f6884e;
        if (map.containsKey(g2)) {
            if (this.f6881b == null) {
                this.f6881b = zzfetVar;
            }
            uf ufVar = (uf) map.get(g2);
            ufVar.zzb = j;
            ufVar.zzc = abzVar;
            if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzgF)).booleanValue() && z) {
                this.f6883d = ufVar;
            }
        }
    }

    public final uf zza() {
        return this.f6883d;
    }

    public final zzcwf zzb() {
        return new zzcwf(this.f6881b, "", this, this.f6880a, this.f6885f);
    }

    public final List zzc() {
        return this.f6882c;
    }

    public final void zzd(zzfet zzfetVar) {
        h(zzfetVar, this.f6882c.size());
    }

    public final void zze(zzfet zzfetVar) {
        String g2 = g(zzfetVar);
        Map map = this.f6884e;
        Object obj = map.get(g2);
        List list = this.f6882c;
        int indexOf = list.indexOf(obj);
        if (indexOf < 0 || indexOf >= map.size()) {
            indexOf = list.indexOf(this.f6883d);
        }
        if (indexOf < 0 || indexOf >= map.size()) {
            return;
        }
        this.f6883d = (uf) list.get(indexOf);
        while (true) {
            indexOf++;
            if (indexOf >= list.size()) {
                return;
            }
            uf ufVar = (uf) list.get(indexOf);
            ufVar.zzb = 0L;
            ufVar.zzc = null;
        }
    }

    public final void zzf(zzfet zzfetVar, long j, abz abzVar) {
        i(zzfetVar, j, abzVar, false);
    }

    public final void zzg(zzfet zzfetVar, long j, abz abzVar) {
        i(zzfetVar, j, null, true);
    }

    public final synchronized void zzh(String str, List list) {
        if (this.f6884e.containsKey(str)) {
            int indexOf = this.f6882c.indexOf((uf) this.f6884e.get(str));
            try {
                this.f6882c.remove(indexOf);
            } catch (IndexOutOfBoundsException e2) {
                ti.f20033a.f20034ab.zzw(e2, "AdapterResponseInfoCollector.replaceAdapterResponseInfoEntry");
            }
            this.f6884e.remove(str);
            Iterator it = list.iterator();
            while (it.hasNext()) {
                h((zzfet) it.next(), indexOf);
                indexOf++;
            }
        }
    }

    public final void zzi(zzfew zzfewVar) {
        this.f6880a = zzfewVar;
    }
}
