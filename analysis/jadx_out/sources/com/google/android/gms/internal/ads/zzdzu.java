package com.google.android.gms.internal.ads;

import g.dcy;
import g.edt;
import g.esy;
import g.ti;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.concurrent.ExecutionException;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class zzdzu {

    /* renamed from: a, reason: collision with root package name */
    public final zzges f6717a;

    /* renamed from: b, reason: collision with root package name */
    public final zzges f6718b;

    /* renamed from: c, reason: collision with root package name */
    public final zzeam f6719c;

    public zzdzu(zzges zzgesVar, zzges zzgesVar2, zzeam zzeamVar) {
        this.f6717a = zzgesVar;
        this.f6718b = zzgesVar2;
        this.f6719c = zzeamVar;
    }

    public final dcy zzb(final zzbuv zzbuvVar) {
        String str = zzbuvVar.zzb;
        esy esyVar = ti.f20033a.z;
        boolean am = esy.am(str);
        zzges zzgesVar = this.f6718b;
        return (zzgdz) zzgei.zzn((zzgdz) zzgei.zzf(zzgdz.zzu(am ? zzgei.zzg(new zzdyw(1, "Ads signal service force local")) : zzgei.zzf(zzgei.zzk(new zzgdo() { // from class: com.google.android.gms.internal.ads.zzdzq
            @Override // com.google.android.gms.internal.ads.zzgdo
            public final dcy zza() {
                zzdzu zzdzuVar = zzdzu.this;
                zzbuv zzbuvVar2 = zzbuvVar;
                zzdzuVar.getClass();
                return zzdzuVar.f6719c.zza(zzbuvVar2, ((Long) edt.f15376a.f15379d.zza(zzbcn.zzlj)).longValue());
            }
        }, this.f6717a), ExecutionException.class, new zzgdp() { // from class: com.google.android.gms.internal.ads.zzdzr
            @Override // com.google.android.gms.internal.ads.zzgdp
            public final dcy zza(Object obj) {
                Throwable th = (ExecutionException) obj;
                if (th.getCause() != null) {
                    th = th.getCause();
                }
                return zzgei.zzg(th);
            }
        }, zzgesVar)), zzdyw.class, new zzgdp() { // from class: com.google.android.gms.internal.ads.zzdzs
            @Override // com.google.android.gms.internal.ads.zzgdp
            public final dcy zza(Object obj) {
                return zzgei.zzh(null);
            }
        }, zzgesVar), new zzgdp() { // from class: com.google.android.gms.internal.ads.zzdzt
            @Override // com.google.android.gms.internal.ads.zzgdp
            public final dcy zza(Object obj) {
                InputStream inputStream = (InputStream) obj;
                JSONObject jSONObject = new JSONObject();
                if (inputStream == null) {
                    return zzgei.zzh(jSONObject);
                }
                try {
                    esy esyVar2 = ti.f20033a.z;
                    InputStreamReader inputStreamReader = new InputStreamReader(inputStream);
                    StringBuilder sb = new StringBuilder(8192);
                    char[] cArr = new char[2048];
                    while (true) {
                        int read = inputStreamReader.read(cArr);
                        if (read == -1) {
                            break;
                        }
                        sb.append(cArr, 0, read);
                    }
                    jSONObject = new JSONObject(sb.toString());
                } catch (IOException | JSONException e2) {
                    ti.f20033a.f20034ab.zzw(e2, "AdsServiceSignalTask.startAdsServiceSignalTask");
                }
                return zzgei.zzh(jSONObject);
            }
        }, zzgesVar);
    }
}
