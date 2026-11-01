package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import g.edt;
import g.egh;
import g.exk;

/* loaded from: classes3.dex */
public final class zzfhj extends exk {
    public static final Parcelable.Creator<zzfhj> CREATOR = new zzfhk();
    public final Context zza;
    public final zzfhg zzb;
    public final int zzc;
    public final int zzd;
    public final int zze;
    public final String zzf;
    public final int zzg;
    private final zzfhg[] zzh;
    private final int zzi;
    private final int zzj;
    private final int zzk;
    private final int[] zzl;
    private final int[] zzm;

    public zzfhj(int i, int i2, int i3, int i4, String str, int i5, int i6) {
        zzfhg[] values = zzfhg.values();
        this.zzh = values;
        int[] zza = zzfhh.zza();
        this.zzl = zza;
        int[] zza2 = zzfhi.zza();
        this.zzm = zza2;
        this.zza = null;
        this.zzi = i;
        this.zzb = values[i];
        this.zzc = i2;
        this.zzd = i3;
        this.zze = i4;
        this.zzf = str;
        this.zzj = i5;
        this.zzg = zza[i5];
        this.zzk = i6;
        int i7 = zza2[i6];
    }

    private zzfhj(Context context, zzfhg zzfhgVar, int i, int i2, int i3, String str, String str2, String str3) {
        this.zzh = zzfhg.values();
        this.zzl = zzfhh.zza();
        this.zzm = zzfhi.zza();
        this.zza = context;
        this.zzi = zzfhgVar.ordinal();
        this.zzb = zzfhgVar;
        this.zzc = i;
        this.zzd = i2;
        this.zze = i3;
        this.zzf = str;
        int i4 = "oldest".equals(str2) ? 1 : (!"lru".equals(str2) && "lfu".equals(str2)) ? 3 : 2;
        this.zzg = i4;
        this.zzj = i4 - 1;
        "onAdClosed".equals(str3);
        this.zzk = 0;
    }

    public static zzfhj zza(zzfhg zzfhgVar, Context context) {
        if (zzfhgVar == zzfhg.zza) {
            zzbce zzbceVar = zzbcn.zzgj;
            edt edtVar = edt.f15376a;
            return new zzfhj(context, zzfhgVar, ((Integer) edtVar.f15379d.zza(zzbceVar)).intValue(), ((Integer) edtVar.f15379d.zza(zzbcn.zzgp)).intValue(), ((Integer) edtVar.f15379d.zza(zzbcn.zzgr)).intValue(), (String) edtVar.f15379d.zza(zzbcn.zzgt), (String) edtVar.f15379d.zza(zzbcn.zzgl), (String) edtVar.f15379d.zza(zzbcn.zzgn));
        }
        if (zzfhgVar == zzfhg.zzb) {
            zzbce zzbceVar2 = zzbcn.zzgk;
            edt edtVar2 = edt.f15376a;
            return new zzfhj(context, zzfhgVar, ((Integer) edtVar2.f15379d.zza(zzbceVar2)).intValue(), ((Integer) edtVar2.f15379d.zza(zzbcn.zzgq)).intValue(), ((Integer) edtVar2.f15379d.zza(zzbcn.zzgs)).intValue(), (String) edtVar2.f15379d.zza(zzbcn.zzgu), (String) edtVar2.f15379d.zza(zzbcn.zzgm), (String) edtVar2.f15379d.zza(zzbcn.zzgo));
        }
        if (zzfhgVar != zzfhg.zzc) {
            return null;
        }
        zzbce zzbceVar3 = zzbcn.zzgx;
        edt edtVar3 = edt.f15376a;
        return new zzfhj(context, zzfhgVar, ((Integer) edtVar3.f15379d.zza(zzbceVar3)).intValue(), ((Integer) edtVar3.f15379d.zza(zzbcn.zzgz)).intValue(), ((Integer) edtVar3.f15379d.zza(zzbcn.zzgA)).intValue(), (String) edtVar3.f15379d.zza(zzbcn.zzgv), (String) edtVar3.f15379d.zza(zzbcn.zzgw), (String) edtVar3.f15379d.zza(zzbcn.zzgy));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int i2 = this.zzi;
        int af = egh.af(parcel, 20293);
        egh.aq(parcel, 1, 4);
        parcel.writeInt(i2);
        int i3 = this.zzc;
        egh.aq(parcel, 2, 4);
        parcel.writeInt(i3);
        int i4 = this.zzd;
        egh.aq(parcel, 3, 4);
        parcel.writeInt(i4);
        int i5 = this.zze;
        egh.aq(parcel, 4, 4);
        parcel.writeInt(i5);
        egh.p(parcel, 5, this.zzf);
        int i6 = this.zzj;
        egh.aq(parcel, 6, 4);
        parcel.writeInt(i6);
        int i7 = this.zzk;
        egh.aq(parcel, 7, 4);
        parcel.writeInt(i7);
        egh.s(parcel, af);
    }
}
