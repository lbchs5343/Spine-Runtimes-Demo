package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import g.rj;

@Deprecated
/* loaded from: classes3.dex */
public class zzaft implements zzbc {
    public static final Parcelable.Creator<zzaft> CREATOR = new rj(17);
    public final String zza;
    public final String zzb;

    public zzaft(Parcel parcel) {
        String readString = parcel.readString();
        int i = zzen.zza;
        this.zza = readString;
        this.zzb = parcel.readString();
    }

    public zzaft(String str, String str2) {
        this.zza = zzfwa.zzb(str);
        this.zzb = str2;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            zzaft zzaftVar = (zzaft) obj;
            if (this.zza.equals(zzaftVar.zza) && this.zzb.equals(zzaftVar.zzb)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = this.zza.hashCode() + 527;
        return this.zzb.hashCode() + (hashCode * 31);
    }

    public final String toString() {
        return "VC: " + this.zza + "=" + this.zzb;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.zza);
        parcel.writeString(this.zzb);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.android.gms.internal.ads.zzbc
    public final void zza(zzay zzayVar) {
        char c2;
        String str = this.zza;
        switch (str.hashCode()) {
            case 62359119:
                if (str.equals("ALBUM")) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            case 79833656:
                if (str.equals("TITLE")) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            case 428414940:
                if (str.equals("DESCRIPTION")) {
                    c2 = 4;
                    break;
                }
                c2 = 65535;
                break;
            case 1746739798:
                if (str.equals("ALBUMARTIST")) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            case 1939198791:
                if (str.equals("ARTIST")) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            default:
                c2 = 65535;
                break;
        }
        if (c2 == 0) {
            zzayVar.zzq(this.zzb);
            return;
        }
        if (c2 == 1) {
            zzayVar.zze(this.zzb);
            return;
        }
        if (c2 == 2) {
            zzayVar.zzd(this.zzb);
        } else if (c2 == 3) {
            zzayVar.zzc(this.zzb);
        } else {
            if (c2 != 4) {
                return;
            }
            zzayVar.zzh(this.zzb);
        }
    }
}
