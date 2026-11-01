package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import g.awf;
import g.fbe;
import java.util.ArrayList;
import java.util.Arrays;

/* loaded from: classes3.dex */
public final class zzer implements zzbc {
    public static final Parcelable.Creator<zzer> CREATOR = new fbe(21);
    public final String zza;
    public final byte[] zzb;
    public final int zzc;
    public final int zzd;

    public /* synthetic */ zzer(Parcel parcel, zzeq zzeqVar) {
        String readString = parcel.readString();
        int i = zzen.zza;
        this.zza = readString;
        byte[] createByteArray = parcel.createByteArray();
        this.zzb = createByteArray;
        this.zzc = parcel.readInt();
        int readInt = parcel.readInt();
        this.zzd = readInt;
        zzb(readString, createByteArray, readInt);
    }

    public zzer(String str, byte[] bArr, int i, int i2) {
        zzb(str, bArr, i2);
        this.zza = str;
        this.zzb = bArr;
        this.zzc = i;
        this.zzd = i2;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private static void zzb(String str, byte[] bArr, int i) {
        char c2;
        byte b2;
        switch (str.hashCode()) {
            case -1949883051:
                if (str.equals("com.android.capture.fps")) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            case -1555642602:
                if (str.equals("editable.tracks.samples.location")) {
                    c2 = 4;
                    break;
                }
                c2 = 65535;
                break;
            case 101820674:
                if (str.equals("editable.tracks.length")) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            case 188404399:
                if (str.equals("editable.tracks.offset")) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            case 1805012160:
                if (str.equals("editable.tracks.map")) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            default:
                c2 = 65535;
                break;
        }
        if (c2 == 0) {
            zzdb.zzd(i == 23 && bArr.length == 4);
            return;
        }
        if (c2 == 1 || c2 == 2) {
            zzdb.zzd(i == 78 && bArr.length == 8);
            return;
        }
        if (c2 == 3) {
            zzdb.zzd(i == 0);
            return;
        }
        if (c2 != 4) {
            return;
        }
        if (i != 75 || bArr.length != 1 || ((b2 = bArr[0]) != 0 && b2 != 1)) {
            r4 = false;
        }
        zzdb.zzd(r4);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzer.class == obj.getClass()) {
            zzer zzerVar = (zzer) obj;
            if (this.zza.equals(zzerVar.zza) && Arrays.equals(this.zzb, zzerVar.zzb) && this.zzc == zzerVar.zzc && this.zzd == zzerVar.zzd) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = this.zza.hashCode() + 527;
        return ((((Arrays.hashCode(this.zzb) + (hashCode * 31)) * 31) + this.zzc) * 31) + this.zzd;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x00aa A[LOOP:0: B:17:0x00a7->B:19:0x00aa, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final String toString() {
        String sb;
        byte[] bArr;
        int i = this.zzd;
        int i2 = 0;
        if (i == 0) {
            if (this.zza.equals("editable.tracks.map")) {
                zzdb.zzg(this.zza.equals("editable.tracks.map"), "Metadata is not an editable tracks map");
                byte b2 = this.zzb[1];
                ArrayList arrayList = new ArrayList();
                while (i2 < b2) {
                    arrayList.add(Integer.valueOf(this.zzb[i2 + 2]));
                    i2++;
                }
                StringBuilder sb2 = new StringBuilder();
                sb2.append("track types = ");
                zzfwi.zzb(sb2, arrayList, ",");
                sb = sb2.toString();
            }
            bArr = this.zzb;
            int length = bArr.length;
            StringBuilder sb3 = new StringBuilder(length + length);
            while (i2 < bArr.length) {
            }
            sb = sb3.toString();
        } else if (i == 1) {
            sb = zzen.zzB(this.zzb);
        } else if (i == 23) {
            sb = String.valueOf(Float.intBitsToFloat(zzgcr.zzd(this.zzb)));
        } else if (i == 67) {
            sb = String.valueOf(zzgcr.zzd(this.zzb));
        } else if (i != 75) {
            if (i == 78) {
                sb = String.valueOf(new zzed(this.zzb).zzw());
            }
            bArr = this.zzb;
            int length2 = bArr.length;
            StringBuilder sb32 = new StringBuilder(length2 + length2);
            while (i2 < bArr.length) {
                sb32.append(Character.forDigit((bArr[i2] >> 4) & 15, 16));
                sb32.append(Character.forDigit(bArr[i2] & 15, 16));
                i2++;
            }
            sb = sb32.toString();
        } else {
            sb = String.valueOf(this.zzb[0] & 255);
        }
        return awf.t("mdta: key=", this.zza, ", value=", sb);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.zza);
        parcel.writeByteArray(this.zzb);
        parcel.writeInt(this.zzc);
        parcel.writeInt(this.zzd);
    }

    @Override // com.google.android.gms.internal.ads.zzbc
    public final /* synthetic */ void zza(zzay zzayVar) {
    }
}
