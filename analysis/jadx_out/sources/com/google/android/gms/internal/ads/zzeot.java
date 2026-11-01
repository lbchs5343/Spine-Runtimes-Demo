package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import g.dcy;
import g.edt;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.Callable;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class zzeot implements zzevz {

    /* renamed from: a, reason: collision with root package name */
    public final zzeov f7326a;

    /* renamed from: b, reason: collision with root package name */
    public final zzges f7327b;

    /* renamed from: c, reason: collision with root package name */
    public final zzdqd f7328c;

    /* renamed from: d, reason: collision with root package name */
    public final zzdup f7329d;

    public zzeot(zzges zzgesVar, zzdqd zzdqdVar, zzdup zzdupVar, zzeov zzeovVar) {
        this.f7327b = zzgesVar;
        this.f7328c = zzdqdVar;
        this.f7329d = zzdupVar;
        this.f7326a = zzeovVar;
    }

    @Override // com.google.android.gms.internal.ads.zzevz
    public final int zza() {
        return 1;
    }

    @Override // com.google.android.gms.internal.ads.zzevz
    public final dcy zzb() {
        zzeou zzeouVar;
        zzbce zzbceVar = zzbcn.zzlo;
        edt edtVar = edt.f15376a;
        zzbcl zzbclVar = edtVar.f15379d;
        zzbcl zzbclVar2 = edtVar.f15379d;
        boolean booleanValue = ((Boolean) zzbclVar.zza(zzbceVar)).booleanValue();
        zzeov zzeovVar = this.f7326a;
        if (booleanValue && (zzeouVar = zzeovVar.f7332b) != null) {
            return zzgei.zzh(zzeouVar);
        }
        if (zzfxf.zzd((String) zzbclVar2.zza(zzbcn.zzbx)) || (!((Boolean) zzbclVar2.zza(zzbceVar)).booleanValue() && (zzeovVar.zzd() || !this.f7329d.zzt()))) {
            return zzgei.zzh(new zzeou(new Bundle()));
        }
        zzeovVar.zzc(true);
        return this.f7327b.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzeos
            @Override // java.util.concurrent.Callable
            public final Object call() {
                zzeot zzeotVar = zzeot.this;
                zzeotVar.getClass();
                List<String> asList = Arrays.asList(((String) edt.f15376a.f15379d.zza(zzbcn.zzbx)).split(";"));
                Bundle bundle = new Bundle();
                for (String str : asList) {
                    try {
                        zzfgm zzc = zzeotVar.f7328c.zzc(str, new JSONObject());
                        zzc.zzC();
                        boolean zzt = zzeotVar.f7329d.zzt();
                        Bundle bundle2 = new Bundle();
                        if (!((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzlo)).booleanValue() || zzt) {
                            try {
                                zzbru zzf = zzc.zzf();
                                if (zzf != null) {
                                    bundle2.putString(PluginConstants.KEY_SDK_VERSION, zzf.toString());
                                }
                            } catch (zzffv unused) {
                            }
                        }
                        try {
                            zzbru zze = zzc.zze();
                            if (zze != null) {
                                bundle2.putString("adapter_version", zze.toString());
                            }
                        } catch (zzffv unused2) {
                        }
                        bundle.putBundle(str, bundle2);
                    } catch (zzffv unused3) {
                    }
                }
                zzeou zzeouVar2 = new zzeou(bundle);
                if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzlo)).booleanValue()) {
                    zzeotVar.f7326a.f7332b = zzeouVar2;
                }
                return zzeouVar2;
            }
        });
    }
}
