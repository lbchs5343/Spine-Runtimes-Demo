package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.LiveConfigKey;
import com.bykv.vk.component.ttvideo.player.MediaFormat;
import g.ckd;
import g.eno;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public final class zzeon implements zzevy {
    public final eno zza;
    public final String zzb;
    public final boolean zzc;
    public final String zzd;
    public final float zze;
    public final int zzf;
    public final int zzg;
    public final String zzh;
    public final boolean zzi;

    public zzeon(eno enoVar, String str, boolean z, String str2, float f2, int i, int i2, String str3, boolean z2) {
        ckd.w(enoVar, "the adSize must not be null");
        this.zza = enoVar;
        this.zzb = str;
        this.zzc = z;
        this.zzd = str2;
        this.zze = f2;
        this.zzf = i;
        this.zzg = i2;
        this.zzh = str3;
        this.zzi = z2;
    }

    @Override // com.google.android.gms.internal.ads.zzevy
    public final /* bridge */ /* synthetic */ void zzj(Object obj) {
        Bundle bundle = (Bundle) obj;
        zzfgc.zzf(bundle, "smart_w", "full", this.zza.zze == -1);
        zzfgc.zzf(bundle, "smart_h", LiveConfigKey.AUTO, this.zza.zzb == -2);
        zzfgc.zzg(bundle, "ene", true, this.zza.zzj);
        zzfgc.zzf(bundle, "rafmt", "102", this.zza.zzm);
        zzfgc.zzf(bundle, "rafmt", "103", this.zza.zzn);
        zzfgc.zzf(bundle, "rafmt", "105", this.zza.zzo);
        zzfgc.zzg(bundle, "inline_adaptive_slot", true, this.zzi);
        zzfgc.zzg(bundle, "interscroller_slot", true, this.zza.zzo);
        zzfgc.zzc(bundle, "format", this.zzb);
        zzfgc.zzf(bundle, "fluid", MediaFormat.KEY_HEIGHT, this.zzc);
        zzfgc.zzf(bundle, "sz", this.zzd, !TextUtils.isEmpty(this.zzd));
        bundle.putFloat("u_sd", this.zze);
        bundle.putInt("sw", this.zzf);
        bundle.putInt("sh", this.zzg);
        zzfgc.zzf(bundle, "sc", this.zzh, !TextUtils.isEmpty(this.zzh));
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
        eno[] enoVarArr = this.zza.zzg;
        if (enoVarArr == null) {
            Bundle bundle2 = new Bundle();
            bundle2.putInt(MediaFormat.KEY_HEIGHT, this.zza.zzb);
            bundle2.putInt(MediaFormat.KEY_WIDTH, this.zza.zze);
            bundle2.putBoolean("is_fluid_height", this.zza.zzi);
            arrayList.add(bundle2);
        } else {
            for (eno enoVar : enoVarArr) {
                Bundle bundle3 = new Bundle();
                bundle3.putBoolean("is_fluid_height", enoVar.zzi);
                bundle3.putInt(MediaFormat.KEY_HEIGHT, enoVar.zzb);
                bundle3.putInt(MediaFormat.KEY_WIDTH, enoVar.zze);
                arrayList.add(bundle3);
            }
        }
        bundle.putParcelableArrayList("valid_ad_sizes", arrayList);
    }
}
