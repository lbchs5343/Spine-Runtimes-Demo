package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import g.bkx;
import g.cpm;
import g.cxt;
import g.egh;
import g.exk;
import g.gyv;
import g.ov;

/* loaded from: classes3.dex */
public final class zzbfn extends exk {
    public static final Parcelable.Creator<zzbfn> CREATOR = new zzbfo();
    public final int zza;
    public final boolean zzb;
    public final int zzc;
    public final boolean zzd;
    public final int zze;
    public final cpm zzf;
    public final boolean zzg;
    public final int zzh;
    public final int zzi;
    public final boolean zzj;
    public final int zzk;

    public zzbfn(int i, boolean z, int i2, boolean z2, int i3, cpm cpmVar, boolean z3, int i4, int i5, boolean z4, int i6) {
        this.zza = i;
        this.zzb = z;
        this.zzc = i2;
        this.zzd = z2;
        this.zze = i3;
        this.zzf = cpmVar;
        this.zzg = z3;
        this.zzh = i4;
        this.zzj = z4;
        this.zzi = i5;
        this.zzk = i6;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    @Deprecated
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public zzbfn(gyv gyvVar) {
        this(4, r2, r3, r4, r5, r0 != null ? new cpm(r0) : null, gyvVar.f19031g, gyvVar.f19030f, 0, false, 0);
        boolean z = gyvVar.f19027c;
        int i = gyvVar.f19029e;
        boolean z2 = gyvVar.f19025a;
        int i2 = gyvVar.f19026b;
        cxt cxtVar = gyvVar.f19028d;
    }

    public static ov zza(zzbfn zzbfnVar) {
        bkx bkxVar = new bkx();
        bkxVar.f11770d = false;
        bkxVar.f11773g = 0;
        bkxVar.h = false;
        int i = 1;
        bkxVar.f11769c = 1;
        bkxVar.f11771e = false;
        bkxVar.i = false;
        bkxVar.f11767a = 0;
        bkxVar.f11772f = 1;
        if (zzbfnVar == null) {
            return new ov(bkxVar);
        }
        int i2 = zzbfnVar.zza;
        if (i2 != 2) {
            if (i2 != 3) {
                if (i2 == 4) {
                    bkxVar.f11771e = zzbfnVar.zzg;
                    bkxVar.f11773g = zzbfnVar.zzh;
                    int i3 = zzbfnVar.zzi;
                    bkxVar.i = zzbfnVar.zzj;
                    bkxVar.f11767a = i3;
                    int i4 = zzbfnVar.zzk;
                    if (i4 != 0) {
                        if (i4 == 2) {
                            i = 3;
                        } else if (i4 == 1) {
                            i = 2;
                        }
                    }
                    bkxVar.f11772f = i;
                }
                bkxVar.f11770d = zzbfnVar.zzb;
                bkxVar.h = zzbfnVar.zzd;
                return new ov(bkxVar);
            }
            cpm cpmVar = zzbfnVar.zzf;
            if (cpmVar != null) {
                bkxVar.f11768b = new cxt(cpmVar);
            }
        }
        bkxVar.f11769c = zzbfnVar.zze;
        bkxVar.f11770d = zzbfnVar.zzb;
        bkxVar.h = zzbfnVar.zzd;
        return new ov(bkxVar);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int i2 = this.zza;
        int af = egh.af(parcel, 20293);
        egh.aq(parcel, 1, 4);
        parcel.writeInt(i2);
        boolean z = this.zzb;
        egh.aq(parcel, 2, 4);
        parcel.writeInt(z ? 1 : 0);
        int i3 = this.zzc;
        egh.aq(parcel, 3, 4);
        parcel.writeInt(i3);
        boolean z2 = this.zzd;
        egh.aq(parcel, 4, 4);
        parcel.writeInt(z2 ? 1 : 0);
        int i4 = this.zze;
        egh.aq(parcel, 5, 4);
        parcel.writeInt(i4);
        egh.u(parcel, 6, this.zzf, i);
        boolean z3 = this.zzg;
        egh.aq(parcel, 7, 4);
        parcel.writeInt(z3 ? 1 : 0);
        int i5 = this.zzh;
        egh.aq(parcel, 8, 4);
        parcel.writeInt(i5);
        int i6 = this.zzi;
        egh.aq(parcel, 9, 4);
        parcel.writeInt(i6);
        boolean z4 = this.zzj;
        egh.aq(parcel, 10, 4);
        parcel.writeInt(z4 ? 1 : 0);
        int i7 = this.zzk;
        egh.aq(parcel, 11, 4);
        parcel.writeInt(i7);
        egh.s(parcel, af);
    }
}
