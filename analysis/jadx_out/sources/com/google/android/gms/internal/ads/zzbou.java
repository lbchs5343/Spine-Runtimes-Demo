package com.google.android.gms.internal.ads;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import g.dcy;
import g.esy;
import g.evz;
import g.ti;
import java.util.UUID;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class zzbou implements zzgdp {

    /* renamed from: a, reason: collision with root package name */
    public final dcy f4910a;

    public zzbou(dcy dcyVar) {
        this.f4910a = dcyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgdp
    public final dcy zza(Object obj) throws Exception {
        return zzb(obj);
    }

    public final dcy zzb(final Object obj) {
        return zzgei.zzn(this.f4910a, new zzgdp() { // from class: com.google.android.gms.internal.ads.zzbos
            @Override // com.google.android.gms.internal.ads.zzgdp
            public final dcy zza(Object obj2) {
                zzbou zzbouVar = zzbou.this;
                Object obj3 = obj;
                zzbouVar.getClass();
                zzcao zzcaoVar = new zzcao();
                esy esyVar = ti.f20033a.z;
                String uuid = UUID.randomUUID().toString();
                zzbjq.zzo.zzc(uuid, new evz(zzcaoVar, 1));
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(TTDownloadField.TT_ID, uuid);
                jSONObject.put("args", (JSONObject) obj3);
                ((zzbnv) obj2).zzl("google.afma.activeView.handleUpdate", jSONObject);
                return zzcaoVar;
            }
        }, zzcaj.zzf);
    }
}
