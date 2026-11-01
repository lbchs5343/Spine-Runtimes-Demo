package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import g.agd;
import g.dcy;
import g.fnq;
import j$.util.Objects;
import java.io.ByteArrayInputStream;
import java.nio.charset.StandardCharsets;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class zzebq extends zzbvi {

    /* renamed from: a, reason: collision with root package name */
    public final zzexq f6770a;

    /* renamed from: b, reason: collision with root package name */
    public final zzeby f6771b;

    /* renamed from: c, reason: collision with root package name */
    public final zzges f6772c;

    /* renamed from: d, reason: collision with root package name */
    public final Context f6773d;

    /* renamed from: e, reason: collision with root package name */
    public final zzexs f6774e;

    /* renamed from: f, reason: collision with root package name */
    public final zzbwf f6775f;

    public zzebq(Context context, zzexs zzexsVar, zzexq zzexqVar, zzeby zzebyVar, zzges zzgesVar, zzbwf zzbwfVar) {
        this.f6773d = context;
        this.f6774e = zzexsVar;
        this.f6770a = zzexqVar;
        this.f6771b = zzebyVar;
        this.f6772c = zzgesVar;
        this.f6775f = zzbwfVar;
    }

    public final dcy zzb(zzbvb zzbvbVar, int i) {
        dcy zzh;
        HashMap hashMap = new HashMap();
        Bundle bundle = zzbvbVar.zzc;
        if (bundle != null) {
            for (String str : bundle.keySet()) {
                String string = bundle.getString(str);
                if (string != null) {
                    hashMap.put(str, string);
                }
            }
        }
        final zzebs zzebsVar = new zzebs(zzbvbVar.zza, zzbvbVar.zzb, hashMap, zzbvbVar.zzd, "", zzbvbVar.zze);
        zzexr zzb = this.f6770a.zza(new zzeyo(zzbvbVar)).zzb();
        boolean z = zzebsVar.zzf;
        zzges zzgesVar = this.f6772c;
        if (z) {
            String str2 = zzbvbVar.zza;
            String str3 = (String) zzbeu.zzb.zze();
            if (!TextUtils.isEmpty(str3)) {
                String host = Uri.parse(str2).getHost();
                if (!TextUtils.isEmpty(host)) {
                    Iterator it = zzfxd.zzb(zzfwf.zzc(';')).zzc(str3).iterator();
                    while (it.hasNext()) {
                        if (host.endsWith((String) it.next())) {
                            zzh = zzgei.zzm(zzb.zza().zza(new JSONObject(), new Bundle()), new zzfwh() { // from class: com.google.android.gms.internal.ads.zzebi
                                @Override // com.google.android.gms.internal.ads.zzfwh
                                public final Object apply(Object obj) {
                                    zzebs zzebsVar2 = zzebs.this;
                                    zzeby.zza(zzebsVar2.zzc, (JSONObject) obj);
                                    return zzebsVar2;
                                }
                            }, zzgesVar);
                            break;
                        }
                    }
                }
            }
        }
        zzh = zzgei.zzh(zzebsVar);
        zzfjr zzb2 = zzb.zzb();
        return zzgei.zzn(zzb2.zzb(zzfjl.HTTP, zzh).zze(new zzebu(this.f6773d, "", this.f6775f, i)).zza(), new zzgdp() { // from class: com.google.android.gms.internal.ads.zzebj
            @Override // com.google.android.gms.internal.ads.zzgdp
            public final dcy zza(Object obj) {
                zzebt zzebtVar = (zzebt) obj;
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("response", zzebtVar.zza);
                    JSONObject jSONObject2 = new JSONObject();
                    for (String str4 : zzebtVar.zzb.keySet()) {
                        if (str4 != null) {
                            List<String> list = (List) zzebtVar.zzb.get(str4);
                            JSONArray jSONArray = new JSONArray();
                            for (String str5 : list) {
                                if (str5 != null) {
                                    jSONArray.put(str5);
                                }
                            }
                            jSONObject2.put(str4, jSONArray);
                        }
                    }
                    jSONObject.put(TTDownloadField.TT_HEADERS, jSONObject2);
                    Object obj2 = zzebtVar.zzc;
                    if (obj2 != null) {
                        jSONObject.put("body", obj2);
                    }
                    jSONObject.put("latency", zzebtVar.zzd);
                    return zzgei.zzh(new ByteArrayInputStream(jSONObject.toString().getBytes(StandardCharsets.UTF_8)));
                } catch (JSONException e2) {
                    agd.b("Error converting response to JSONObject: ".concat(String.valueOf(e2.getMessage())));
                    throw new JSONException("Parsing HTTP Response: ".concat(String.valueOf(e2.getCause())));
                }
            }
        }, zzgesVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbvj
    public final void zze(zzbvb zzbvbVar, zzbvm zzbvmVar) {
        zzgei.zzr((zzgdz) zzgei.zzn(zzgdz.zzu(zzb(zzbvbVar, Binder.getCallingUid())), new zzebn(this), zzcaj.zza), new fnq(27, zzbvmVar), zzcaj.zzf);
    }

    @Override // com.google.android.gms.internal.ads.zzbvj
    public final void zzf(zzbuv zzbuvVar, zzbvm zzbvmVar) {
        final zzext zzb = this.f6774e.zza(new zzexh(zzbuvVar, Binder.getCallingUid())).zzb();
        zzfjr zzb2 = zzb.zzb();
        zzfix zza = zzb2.zzb(zzfjl.GMS_SIGNALS, zzgei.zzi()).zzf(new zzgdp() { // from class: com.google.android.gms.internal.ads.zzebm
            @Override // com.google.android.gms.internal.ads.zzgdp
            public final dcy zza(Object obj) {
                return zzext.this.zza().zza(new JSONObject(), new Bundle());
            }
        }).zze(new zzfiv() { // from class: com.google.android.gms.internal.ads.zzebl
            @Override // com.google.android.gms.internal.ads.zzfiv
            public final Object zza(Object obj) {
                JSONObject jSONObject = (JSONObject) obj;
                agd.e("GMS AdRequest Signals: ");
                agd.e(jSONObject.toString(2));
                return jSONObject;
            }
        }).zzf(new zzgdp() { // from class: com.google.android.gms.internal.ads.zzebk
            @Override // com.google.android.gms.internal.ads.zzgdp
            public final dcy zza(Object obj) {
                return zzgei.zzh(new ByteArrayInputStream(((JSONObject) obj).toString().getBytes(StandardCharsets.UTF_8)));
            }
        }).zza();
        zzgei.zzr((zzgdz) zzgei.zzn(zzgdz.zzu(zza), new zzebn(this), zzcaj.zza), new fnq(27, zzbvmVar), zzcaj.zzf);
        if (((Boolean) zzben.zzf.zze()).booleanValue()) {
            final zzeby zzebyVar = this.f6771b;
            Objects.requireNonNull(zzebyVar);
            zza.addListener(new Runnable() { // from class: com.google.android.gms.internal.ads.zzebo
                @Override // java.lang.Runnable
                public final void run() {
                    zzeby.this.zzb();
                }
            }, this.f6772c);
        }
    }
}
