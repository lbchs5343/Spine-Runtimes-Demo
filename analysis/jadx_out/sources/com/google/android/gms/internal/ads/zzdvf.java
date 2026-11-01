package com.google.android.gms.internal.ads;

import g.amg;
import g.dnt;
import g.edt;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;

/* loaded from: classes3.dex */
public final class zzdvf {

    /* renamed from: b, reason: collision with root package name */
    public boolean f6564b;

    /* renamed from: c, reason: collision with root package name */
    public final zzdup f6565c;

    /* renamed from: d, reason: collision with root package name */
    public final zzdqa f6566d;

    /* renamed from: e, reason: collision with root package name */
    public final Object f6567e = new Object();

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f6563a = new ArrayList();

    public zzdvf(zzdup zzdupVar, zzdqa zzdqaVar) {
        this.f6565c = zzdupVar;
        this.f6566d = zzdqaVar;
    }

    public final void f(List list) {
        String str;
        zzdpz zza;
        zzbru zzbruVar;
        synchronized (this.f6567e) {
            try {
                if (this.f6564b) {
                    return;
                }
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    zzblp zzblpVar = (zzblp) it.next();
                    zzbce zzbceVar = zzbcn.zziV;
                    edt edtVar = edt.f15376a;
                    if (((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue()) {
                        zzdpz zza2 = this.f6566d.zza(zzblpVar.zza);
                        if (zza2 != null && (zzbruVar = zza2.zzc) != null) {
                            str = zzbruVar.toString();
                        }
                        str = "";
                    } else {
                        str = "";
                    }
                    String str2 = str;
                    boolean z = ((Boolean) edtVar.f15379d.zza(zzbcn.zziW)).booleanValue() && (zza = this.f6566d.zza(zzblpVar.zza)) != null && zza.zzd;
                    ArrayList arrayList = this.f6563a;
                    String str3 = zzblpVar.zza;
                    arrayList.add(new dnt(str3, str2, this.f6566d.zzb(str3), zzblpVar.zzb ? 1 : 0, zzblpVar.zzd, zzblpVar.zzc, z));
                }
                this.f6564b = true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final JSONArray zza() throws JSONException {
        JSONArray jSONArray = new JSONArray();
        synchronized (this.f6567e) {
            try {
                if (!this.f6564b) {
                    if (!this.f6565c.zzt()) {
                        zzc();
                        return jSONArray;
                    }
                    f(this.f6565c.zzg());
                }
                Iterator it = this.f6563a.iterator();
                while (it.hasNext()) {
                    jSONArray.put(((dnt) it.next()).h());
                }
                return jSONArray;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zzc() {
        this.f6565c.zzs(new amg(0, this));
    }
}
