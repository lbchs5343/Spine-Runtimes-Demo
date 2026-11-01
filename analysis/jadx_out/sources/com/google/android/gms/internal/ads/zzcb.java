package com.google.android.gms.internal.ads;

import g.he;

/* loaded from: classes3.dex */
public class zzcb {
    public final zzfzr zzA;
    public final zzfzt zzB;
    public final int zzi;
    public final int zzj;
    public final boolean zzk;
    public final zzfzo zzl;
    public final zzfzo zzn;
    public final zzfzo zzr;
    public final zzbz zzs;
    public final zzfzo zzt;
    public final int zzu;
    public final int zza = he.UNDEFINED_ITEM_ID;
    public final int zzb = he.UNDEFINED_ITEM_ID;
    public final int zzc = he.UNDEFINED_ITEM_ID;
    public final int zzd = he.UNDEFINED_ITEM_ID;
    public final int zze = 0;
    public final int zzf = 0;
    public final int zzg = 0;
    public final int zzh = 0;
    public final int zzm = 0;
    public final int zzo = 0;
    public final int zzp = he.UNDEFINED_ITEM_ID;
    public final int zzq = he.UNDEFINED_ITEM_ID;
    public final int zzv = 0;
    public final boolean zzw = false;
    public final boolean zzx = false;
    public final boolean zzy = false;
    public final boolean zzz = false;

    static {
        new zzcb(new zzca());
        Integer.toString(1, 36);
        Integer.toString(2, 36);
        Integer.toString(3, 36);
        Integer.toString(4, 36);
        Integer.toString(5, 36);
        Integer.toString(6, 36);
        Integer.toString(7, 36);
        Integer.toString(8, 36);
        Integer.toString(9, 36);
        Integer.toString(10, 36);
        Integer.toString(11, 36);
        Integer.toString(12, 36);
        Integer.toString(13, 36);
        Integer.toString(14, 36);
        Integer.toString(15, 36);
        Integer.toString(16, 36);
        Integer.toString(17, 36);
        Integer.toString(18, 36);
        Integer.toString(19, 36);
        Integer.toString(20, 36);
        Integer.toString(21, 36);
        Integer.toString(22, 36);
        Integer.toString(23, 36);
        Integer.toString(24, 36);
        Integer.toString(25, 36);
        Integer.toString(26, 36);
        Integer.toString(27, 36);
        Integer.toString(28, 36);
        Integer.toString(29, 36);
        Integer.toString(30, 36);
        Integer.toString(31, 36);
    }

    public zzcb(zzca zzcaVar) {
        this.zzi = zzcaVar.f5116e;
        this.zzj = zzcaVar.h;
        this.zzk = zzcaVar.j;
        this.zzl = zzcaVar.f5114c;
        this.zzn = zzcaVar.f5115d;
        this.zzr = zzcaVar.f5117f;
        this.zzs = zzcaVar.k;
        this.zzt = zzcaVar.f5112a;
        this.zzu = zzcaVar.f5118g;
        this.zzA = zzfzr.zzc(zzcaVar.i);
        this.zzB = zzfzt.zzl(zzcaVar.f5113b);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            zzcb zzcbVar = (zzcb) obj;
            if (this.zzk == zzcbVar.zzk && this.zzi == zzcbVar.zzi && this.zzj == zzcbVar.zzj && this.zzl.equals(zzcbVar.zzl) && this.zzn.equals(zzcbVar.zzn) && this.zzr.equals(zzcbVar.zzr) && this.zzs.equals(zzcbVar.zzs) && this.zzt.equals(zzcbVar.zzt) && this.zzu == zzcbVar.zzu && this.zzA.equals(zzcbVar.zzA) && this.zzB.equals(zzcbVar.zzB)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int i = (this.zzk ? 1 : 0) - 1048002209;
        int hashCode = (this.zzn.hashCode() + ((this.zzl.hashCode() + (((((i * 31) + this.zzi) * 31) + this.zzj) * 31)) * 961)) * 961;
        return this.zzB.hashCode() + ((this.zzA.hashCode() + ((((this.zzt.hashCode() + ((((this.zzr.hashCode() + ((((hashCode + he.UNDEFINED_ITEM_ID) * 31) + he.UNDEFINED_ITEM_ID) * 31)) * 31) + 29791) * 31)) * 31) + this.zzu) * 887503681)) * 31);
    }
}
