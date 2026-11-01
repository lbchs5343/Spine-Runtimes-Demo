package com.google.android.gms.internal.ads;

import g.agd;
import java.util.AbstractMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class zzbnw implements zzbmo, zzbnv {

    /* renamed from: a, reason: collision with root package name */
    public final zzbnv f4894a;

    /* renamed from: b, reason: collision with root package name */
    public final HashSet f4895b = new HashSet();

    public zzbnw(zzbnv zzbnvVar) {
        this.f4894a = zzbnvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbmo, com.google.android.gms.internal.ads.zzbmy
    public final void zza(String str) {
        this.f4894a.zza(str);
    }

    @Override // com.google.android.gms.internal.ads.zzbmo, com.google.android.gms.internal.ads.zzbmy
    public final /* synthetic */ void zzb(String str, String str2) {
        zzbmn.zzc(this, str, str2);
    }

    public final void zzc() {
        HashSet hashSet = this.f4895b;
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            AbstractMap.SimpleEntry simpleEntry = (AbstractMap.SimpleEntry) it.next();
            agd.e("Unregistering eventhandler: ".concat(String.valueOf(((zzbjr) simpleEntry.getValue()).toString())));
            this.f4894a.zzr((String) simpleEntry.getKey(), (zzbjr) simpleEntry.getValue());
        }
        hashSet.clear();
    }

    @Override // com.google.android.gms.internal.ads.zzbmm
    public final /* synthetic */ void zzd(String str, Map map) {
        zzbmn.zza(this, str, map);
    }

    @Override // com.google.android.gms.internal.ads.zzbmo, com.google.android.gms.internal.ads.zzbmm
    public final /* synthetic */ void zze(String str, JSONObject jSONObject) {
        zzbmn.zzb(this, str, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.zzbmy
    public final /* synthetic */ void zzl(String str, JSONObject jSONObject) {
        zzbmn.zzd(this, str, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.zzbnv
    public final void zzq(String str, zzbjr zzbjrVar) {
        this.f4894a.zzq(str, zzbjrVar);
        this.f4895b.add(new AbstractMap.SimpleEntry(str, zzbjrVar));
    }

    @Override // com.google.android.gms.internal.ads.zzbnv
    public final void zzr(String str, zzbjr zzbjrVar) {
        this.f4894a.zzr(str, zzbjrVar);
        this.f4895b.remove(new AbstractMap.SimpleEntry(str, zzbjrVar));
    }
}
