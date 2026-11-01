package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import g.awf;
import j$.util.Objects;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public final class zzad {
    public static final /* synthetic */ int zzK = 0;

    /* renamed from: a, reason: collision with root package name */
    public int f4096a;
    public final int zzA;
    public final zzm zzB;
    public final int zzC;
    public final int zzD;
    public final int zzE;
    public final int zzF;
    public final int zzG;
    public final int zzH;
    public final int zzI;
    public final int zzJ;
    public final String zza;
    public final String zzb;
    public final List zzc;
    public final String zzd;
    public final int zze;
    public final int zzf;
    public final int zzg;
    public final int zzh;
    public final int zzi;
    public final int zzj;
    public final String zzk;
    public final zzbd zzl;
    public final Object zzm;
    public final String zzn;
    public final String zzo;
    public final int zzp;
    public final int zzq;
    public final List zzr;
    public final zzw zzs;
    public final long zzt;
    public final int zzu;
    public final int zzv;
    public final float zzw;
    public final int zzx;
    public final float zzy;
    public final byte[] zzz;

    static {
        new zzad(new zzab());
        Integer.toString(0, 36);
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
        Integer.toString(32, 36);
        Integer.toString(33, 36);
    }

    public zzad(zzab zzabVar) {
        boolean z;
        String str;
        this.zza = zzabVar.l;
        String zzE = zzen.zzE(zzabVar.h);
        this.zzd = zzE;
        if (zzabVar.ac.isEmpty() && zzabVar.w != null) {
            this.zzc = zzfzo.zzo(new zzai(zzE, zzabVar.w));
            this.zzb = zzabVar.w;
        } else if (zzabVar.ac.isEmpty() || zzabVar.w != null) {
            if (!zzabVar.ac.isEmpty() || zzabVar.w != null) {
                for (int i = 0; i < zzabVar.ac.size(); i++) {
                    if (!((zzai) zzabVar.ac.get(i)).zzb.equals(zzabVar.w)) {
                    }
                }
                z = false;
                zzdb.zzf(z);
                this.zzc = zzabVar.ac;
                this.zzb = zzabVar.w;
            }
            z = true;
            zzdb.zzf(z);
            this.zzc = zzabVar.ac;
            this.zzb = zzabVar.w;
        } else {
            List list = zzabVar.ac;
            this.zzc = list;
            Iterator it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    str = ((zzai) list.get(0)).zzb;
                    break;
                }
                zzai zzaiVar = (zzai) it.next();
                if (TextUtils.equals(zzaiVar.zza, zzE)) {
                    str = zzaiVar.zzb;
                    break;
                }
            }
            this.zzb = str;
        }
        this.zze = zzabVar.k;
        zzdb.zzg(true, "Auxiliary track type must only be set to a value other than AUXILIARY_TRACK_TYPE_UNDEFINED only when ROLE_FLAG_AUXILIARY is set");
        this.zzf = zzabVar.r;
        this.zzg = 0;
        int i2 = zzabVar.af;
        this.zzh = i2;
        int i3 = zzabVar.f4032b;
        this.zzi = i3;
        this.zzj = i3 != -1 ? i3 : i2;
        this.zzk = zzabVar.v;
        this.zzl = zzabVar.x;
        this.zzm = null;
        this.zzn = zzabVar.f4033c;
        this.zzo = zzabVar.j;
        this.zzp = zzabVar.u;
        this.zzq = zzabVar.f4037g;
        List list2 = zzabVar.f4034d;
        this.zzr = list2 == null ? Collections.EMPTY_LIST : list2;
        zzw zzwVar = zzabVar.t;
        this.zzs = zzwVar;
        this.zzt = zzabVar.y;
        this.zzu = zzabVar.ag;
        this.zzv = zzabVar.s;
        this.zzw = zzabVar.aa;
        int i4 = zzabVar.m;
        this.zzx = i4 == -1 ? 0 : i4;
        float f2 = zzabVar.p;
        this.zzy = f2 == -1.0f ? 1.0f : f2;
        this.zzz = zzabVar.q;
        this.zzA = zzabVar.ae;
        this.zzB = zzabVar.f4035e;
        this.zzC = zzabVar.f4030a;
        this.zzD = zzabVar.z;
        this.zzE = zzabVar.i;
        int i5 = zzabVar.o;
        this.zzF = i5 == -1 ? 0 : i5;
        int i6 = zzabVar.n;
        this.zzG = i6 != -1 ? i6 : 0;
        this.zzH = zzabVar.ad;
        this.zzI = zzabVar.f4031ab;
        int i7 = zzabVar.f4036f;
        if (i7 != 0 || zzwVar == null) {
            this.zzJ = i7;
        } else {
            this.zzJ = 1;
        }
    }

    public final boolean equals(Object obj) {
        int i;
        if (this == obj) {
            return true;
        }
        if (obj != null && zzad.class == obj.getClass()) {
            zzad zzadVar = (zzad) obj;
            int i2 = this.f4096a;
            if ((i2 == 0 || (i = zzadVar.f4096a) == 0 || i2 == i) && this.zze == zzadVar.zze && this.zzf == zzadVar.zzf && this.zzh == zzadVar.zzh && this.zzi == zzadVar.zzi && this.zzp == zzadVar.zzp && this.zzt == zzadVar.zzt && this.zzu == zzadVar.zzu && this.zzv == zzadVar.zzv && this.zzx == zzadVar.zzx && this.zzA == zzadVar.zzA && this.zzC == zzadVar.zzC && this.zzD == zzadVar.zzD && this.zzE == zzadVar.zzE && this.zzF == zzadVar.zzF && this.zzG == zzadVar.zzG && this.zzH == zzadVar.zzH && this.zzJ == zzadVar.zzJ && Float.compare(this.zzw, zzadVar.zzw) == 0 && Float.compare(this.zzy, zzadVar.zzy) == 0 && Objects.equals(this.zza, zzadVar.zza) && Objects.equals(this.zzb, zzadVar.zzb) && this.zzc.equals(zzadVar.zzc) && Objects.equals(this.zzk, zzadVar.zzk) && Objects.equals(this.zzn, zzadVar.zzn) && Objects.equals(this.zzo, zzadVar.zzo) && Objects.equals(this.zzd, zzadVar.zzd) && Arrays.equals(this.zzz, zzadVar.zzz) && Objects.equals(this.zzl, zzadVar.zzl) && Objects.equals(this.zzB, zzadVar.zzB) && Objects.equals(this.zzs, zzadVar.zzs) && zzd(zzadVar)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = this.f4096a;
        if (i != 0) {
            return i;
        }
        String str = this.zza;
        int hashCode = str == null ? 0 : str.hashCode();
        String str2 = this.zzb;
        int hashCode2 = this.zzc.hashCode() + ((((hashCode + 527) * 31) + (str2 == null ? 0 : str2.hashCode())) * 31);
        String str3 = this.zzd;
        int hashCode3 = ((((((((((hashCode2 * 31) + (str3 == null ? 0 : str3.hashCode())) * 31) + this.zze) * 31) + this.zzf) * 961) + this.zzh) * 31) + this.zzi) * 31;
        String str4 = this.zzk;
        int hashCode4 = (hashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        zzbd zzbdVar = this.zzl;
        int hashCode5 = (hashCode4 + (zzbdVar == null ? 0 : zzbdVar.hashCode())) * 961;
        String str5 = this.zzn;
        int hashCode6 = (hashCode5 + (str5 == null ? 0 : str5.hashCode())) * 31;
        int floatToIntBits = ((((((((((((((((((((Float.floatToIntBits(this.zzy) + ((((Float.floatToIntBits(this.zzw) + ((((((((((hashCode6 + (this.zzo != null ? r0.hashCode() : 0)) * 31) + this.zzp) * 31) + ((int) this.zzt)) * 31) + this.zzu) * 31) + this.zzv) * 31)) * 31) + this.zzx) * 31)) * 31) + this.zzA) * 31) + this.zzC) * 31) + this.zzD) * 31) + this.zzE) * 31) + this.zzF) * 31) + this.zzG) * 31) + this.zzH) * 31) - 1) * 31) - 1) * 31) + this.zzJ;
        this.f4096a = floatToIntBits;
        return floatToIntBits;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.zzB);
        StringBuilder sb = new StringBuilder("Format(");
        sb.append(this.zza);
        sb.append(", ");
        sb.append(this.zzb);
        sb.append(", ");
        sb.append(this.zzn);
        sb.append(", ");
        sb.append(this.zzo);
        sb.append(", ");
        sb.append(this.zzk);
        sb.append(", ");
        sb.append(this.zzj);
        sb.append(", ");
        sb.append(this.zzd);
        sb.append(", [");
        sb.append(this.zzu);
        sb.append(", ");
        sb.append(this.zzv);
        sb.append(", ");
        sb.append(this.zzw);
        sb.append(", ");
        sb.append(valueOf);
        sb.append("], [");
        sb.append(this.zzC);
        sb.append(", ");
        return awf.x(sb, this.zzD, "])");
    }

    public final int zza() {
        int i;
        int i2 = this.zzu;
        if (i2 == -1 || (i = this.zzv) == -1) {
            return -1;
        }
        return i2 * i;
    }

    public final zzab zzb() {
        return new zzab(this);
    }

    public final zzad zzc(int i) {
        zzab zzabVar = new zzab(this);
        zzabVar.zzD(i);
        return new zzad(zzabVar);
    }

    public final boolean zzd(zzad zzadVar) {
        if (this.zzr.size() != zzadVar.zzr.size()) {
            return false;
        }
        for (int i = 0; i < this.zzr.size(); i++) {
            if (!Arrays.equals((byte[]) this.zzr.get(i), (byte[]) zzadVar.zzr.get(i))) {
                return false;
            }
        }
        return true;
    }
}
