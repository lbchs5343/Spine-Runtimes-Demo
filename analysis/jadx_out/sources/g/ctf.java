package g;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes3.dex */
public final class ctf extends exk {
    public static final Parcelable.Creator<ctf> CREATOR = new fbe(7);
    public final String zza;
    public final cde zzb;
    public final String zzc;
    public final long zzd;

    public ctf(ctf ctfVar, long j) {
        ckd.k(ctfVar);
        this.zza = ctfVar.zza;
        this.zzb = ctfVar.zzb;
        this.zzc = ctfVar.zzc;
        this.zzd = j;
    }

    public ctf(String str, cde cdeVar, String str2, long j) {
        this.zza = str;
        this.zzb = cdeVar;
        this.zzc = str2;
        this.zzd = j;
    }

    public final String toString() {
        String str = this.zzc;
        String str2 = this.zza;
        String valueOf = String.valueOf(this.zzb);
        StringBuilder o = tn.o("origin=", str, ",name=", str2, ",params=");
        o.append(valueOf);
        return o.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        fbe.b(this, parcel, i);
    }
}
