package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import android.text.TextUtils;
import g.agd;
import g.edt;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class zzbcf {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f4723a = new ArrayList();

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f4724b = new ArrayList();

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f4725c = new ArrayList();

    public final List zza() {
        ArrayList arrayList = new ArrayList();
        Iterator it = this.f4724b.iterator();
        while (it.hasNext()) {
            String str = (String) edt.f15376a.f15379d.zza((zzbce) it.next());
            if (!TextUtils.isEmpty(str)) {
                arrayList.add(str);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        zzbco.a(arrayList2, zzbdx.zzc("gad:dynamite_module:experiment_id", ""));
        zzbco.a(arrayList2, zzbek.zza);
        zzbco.a(arrayList2, zzbek.zzb);
        zzbco.a(arrayList2, zzbek.zzc);
        zzbco.a(arrayList2, zzbek.zzd);
        zzbco.a(arrayList2, zzbek.zze);
        zzbco.a(arrayList2, zzbek.zzu);
        zzbco.a(arrayList2, zzbek.zzf);
        zzbco.a(arrayList2, zzbek.zzm);
        zzbco.a(arrayList2, zzbek.zzn);
        zzbco.a(arrayList2, zzbek.zzo);
        zzbco.a(arrayList2, zzbek.zzp);
        zzbco.a(arrayList2, zzbek.zzq);
        zzbco.a(arrayList2, zzbek.zzr);
        zzbco.a(arrayList2, zzbek.zzs);
        zzbco.a(arrayList2, zzbek.zzt);
        zzbco.a(arrayList2, zzbek.zzg);
        zzbco.a(arrayList2, zzbek.zzh);
        zzbco.a(arrayList2, zzbek.zzi);
        zzbco.a(arrayList2, zzbek.zzj);
        zzbco.a(arrayList2, zzbek.zzk);
        zzbco.a(arrayList2, zzbek.zzl);
        arrayList.addAll(arrayList2);
        return arrayList;
    }

    public final List zzb() {
        List zza = zza();
        Iterator it = this.f4725c.iterator();
        while (it.hasNext()) {
            String str = (String) edt.f15376a.f15379d.zza((zzbce) it.next());
            if (!TextUtils.isEmpty(str)) {
                zza.add(str);
            }
        }
        ArrayList arrayList = new ArrayList();
        zzbco.a(arrayList, zzbey.zza);
        zza.addAll(arrayList);
        return zza;
    }

    public final void zzc(zzbce zzbceVar) {
        this.f4724b.add(zzbceVar);
    }

    public final void zzd(zzbce zzbceVar) {
        this.f4723a.add(zzbceVar);
    }

    public final void zze(SharedPreferences.Editor editor, int i, JSONObject jSONObject) {
        Iterator it = this.f4723a.iterator();
        while (it.hasNext()) {
            zzbce zzbceVar = (zzbce) it.next();
            if (zzbceVar.zze() == 1) {
                zzbceVar.zzd(editor, zzbceVar.e(jSONObject));
            }
        }
        if (jSONObject != null) {
            editor.putString("flag_configuration", jSONObject.toString());
        } else {
            agd.d("Flag Json is null.");
        }
    }
}
