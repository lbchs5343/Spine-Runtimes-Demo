package g;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes3.dex */
public final class bou extends exk {
    public static final Parcelable.Creator<bou> CREATOR = new rj(14);
    public String zza;
    public String zzb;
    public cmd zzc;
    public long zzd;
    public boolean zze;
    public String zzf;
    public final ctf zzg;
    public long zzh;
    public ctf zzi;
    public final long zzj;
    public final ctf zzk;

    public bou(bou bouVar) {
        ckd.k(bouVar);
        this.zza = bouVar.zza;
        this.zzb = bouVar.zzb;
        this.zzc = bouVar.zzc;
        this.zzd = bouVar.zzd;
        this.zze = bouVar.zze;
        this.zzf = bouVar.zzf;
        this.zzg = bouVar.zzg;
        this.zzh = bouVar.zzh;
        this.zzi = bouVar.zzi;
        this.zzj = bouVar.zzj;
        this.zzk = bouVar.zzk;
    }

    public bou(String str, String str2, cmd cmdVar, long j, boolean z, String str3, ctf ctfVar, long j2, ctf ctfVar2, long j3, ctf ctfVar3) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = cmdVar;
        this.zzd = j;
        this.zze = z;
        this.zzf = str3;
        this.zzg = ctfVar;
        this.zzh = j2;
        this.zzi = ctfVar2;
        this.zzj = j3;
        this.zzk = ctfVar3;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int af = egh.af(parcel, 20293);
        egh.p(parcel, 2, this.zza);
        egh.p(parcel, 3, this.zzb);
        egh.u(parcel, 4, this.zzc, i);
        long j = this.zzd;
        egh.aq(parcel, 5, 8);
        parcel.writeLong(j);
        boolean z = this.zze;
        egh.aq(parcel, 6, 4);
        parcel.writeInt(z ? 1 : 0);
        egh.p(parcel, 7, this.zzf);
        egh.u(parcel, 8, this.zzg, i);
        long j2 = this.zzh;
        egh.aq(parcel, 9, 8);
        parcel.writeLong(j2);
        egh.u(parcel, 10, this.zzi, i);
        long j3 = this.zzj;
        egh.aq(parcel, 11, 8);
        parcel.writeLong(j3);
        egh.u(parcel, 12, this.zzk, i);
        egh.s(parcel, af);
    }
}
