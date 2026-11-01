package com.google.android.gms.internal.ads;

import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.Layout;
import android.text.Spanned;
import android.text.SpannedString;
import android.text.TextUtils;
import g.bxd;
import java.io.ByteArrayOutputStream;
import java.util.ArrayList;
import java.util.Arrays;

/* loaded from: classes3.dex */
public final class zzct {

    /* renamed from: a, reason: collision with root package name */
    public static final String f5627a;

    /* renamed from: b, reason: collision with root package name */
    public static final String f5628b;

    /* renamed from: c, reason: collision with root package name */
    public static final String f5629c;

    /* renamed from: d, reason: collision with root package name */
    public static final String f5630d;

    /* renamed from: e, reason: collision with root package name */
    public static final String f5631e;

    /* renamed from: f, reason: collision with root package name */
    public static final String f5632f;

    /* renamed from: g, reason: collision with root package name */
    public static final String f5633g;
    public static final String h;
    public static final String i;
    public static final String j;
    public static final String k;
    public static final String l;
    public static final String m;
    public static final String n;
    public static final String o;
    public static final String p;
    public static final String q;
    public static final String r;
    public final CharSequence zza;
    public final Layout.Alignment zzb;
    public final Layout.Alignment zzc;
    public final Bitmap zzd;
    public final float zze;
    public final int zzf;
    public final int zzg;
    public final float zzh;
    public final int zzi;
    public final float zzj;
    public final float zzk;
    public final int zzl;
    public final float zzm;
    public final int zzn;
    public final float zzo;

    static {
        zzcr zzcrVar = new zzcr();
        zzcrVar.zzl("");
        zzcrVar.zzp();
        h = Integer.toString(0, 36);
        m = Integer.toString(17, 36);
        p = Integer.toString(1, 36);
        f5631e = Integer.toString(2, 36);
        Integer.toString(3, 36);
        f5633g = Integer.toString(18, 36);
        i = Integer.toString(4, 36);
        q = Integer.toString(5, 36);
        f5627a = Integer.toString(6, 36);
        l = Integer.toString(7, 36);
        n = Integer.toString(8, 36);
        f5628b = Integer.toString(9, 36);
        f5632f = Integer.toString(10, 36);
        k = Integer.toString(11, 36);
        f5630d = Integer.toString(12, 36);
        f5629c = Integer.toString(13, 36);
        j = Integer.toString(14, 36);
        o = Integer.toString(15, 36);
        r = Integer.toString(16, 36);
    }

    public /* synthetic */ zzct(CharSequence charSequence, Layout.Alignment alignment, Layout.Alignment alignment2, Bitmap bitmap, float f2, int i2, int i3, float f3, int i4, int i5, float f4, float f5, float f6, int i6, float f7) {
        if (charSequence == null) {
            bitmap.getClass();
        } else {
            zzdb.zzd(bitmap == null);
        }
        if (charSequence instanceof Spanned) {
            this.zza = SpannedString.valueOf(charSequence);
        } else {
            this.zza = charSequence != null ? charSequence.toString() : null;
        }
        this.zzb = alignment;
        this.zzc = alignment2;
        this.zzd = bitmap;
        this.zze = f2;
        this.zzf = i2;
        this.zzg = i3;
        this.zzh = f3;
        this.zzi = i4;
        this.zzj = f5;
        this.zzk = f6;
        this.zzl = i5;
        this.zzm = f4;
        this.zzn = i6;
        this.zzo = f7;
    }

    public final boolean equals(Object obj) {
        Bitmap bitmap;
        Bitmap bitmap2;
        if (this == obj) {
            return true;
        }
        if (obj != null && zzct.class == obj.getClass()) {
            zzct zzctVar = (zzct) obj;
            if (TextUtils.equals(this.zza, zzctVar.zza) && this.zzb == zzctVar.zzb && this.zzc == zzctVar.zzc && ((bitmap = this.zzd) != null ? !((bitmap2 = zzctVar.zzd) == null || !bitmap.sameAs(bitmap2)) : zzctVar.zzd == null) && this.zze == zzctVar.zze && this.zzf == zzctVar.zzf && this.zzg == zzctVar.zzg && this.zzh == zzctVar.zzh && this.zzi == zzctVar.zzi && this.zzj == zzctVar.zzj && this.zzk == zzctVar.zzk && this.zzl == zzctVar.zzl && this.zzm == zzctVar.zzm && this.zzn == zzctVar.zzn && this.zzo == zzctVar.zzo) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.zza, this.zzb, this.zzc, this.zzd, Float.valueOf(this.zze), Integer.valueOf(this.zzf), Integer.valueOf(this.zzg), Float.valueOf(this.zzh), Integer.valueOf(this.zzi), Float.valueOf(this.zzj), Float.valueOf(this.zzk), Boolean.FALSE, -16777216, Integer.valueOf(this.zzl), Float.valueOf(this.zzm), Integer.valueOf(this.zzn), Float.valueOf(this.zzo)});
    }

    public final Bundle zza() {
        Bundle bundle = new Bundle();
        CharSequence charSequence = this.zza;
        if (charSequence != null) {
            bundle.putCharSequence(h, charSequence);
            CharSequence charSequence2 = this.zza;
            if (charSequence2 instanceof Spanned) {
                Spanned spanned = (Spanned) charSequence2;
                String str = bxd.f12368c;
                ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
                for (zzcx zzcxVar : (zzcx[]) spanned.getSpans(0, spanned.length(), zzcx.class)) {
                    arrayList.add(bxd.f(spanned, zzcxVar, 1, zzcxVar.zza()));
                }
                for (zzcz zzczVar : (zzcz[]) spanned.getSpans(0, spanned.length(), zzcz.class)) {
                    arrayList.add(bxd.f(spanned, zzczVar, 2, zzczVar.zza()));
                }
                for (zzcw zzcwVar : (zzcw[]) spanned.getSpans(0, spanned.length(), zzcw.class)) {
                    arrayList.add(bxd.f(spanned, zzcwVar, 3, null));
                }
                for (zzda zzdaVar : (zzda[]) spanned.getSpans(0, spanned.length(), zzda.class)) {
                    arrayList.add(bxd.f(spanned, zzdaVar, 4, zzdaVar.zza()));
                }
                if (!arrayList.isEmpty()) {
                    bundle.putParcelableArrayList(m, arrayList);
                }
            }
        }
        bundle.putSerializable(p, this.zzb);
        bundle.putSerializable(f5631e, this.zzc);
        bundle.putFloat(i, this.zze);
        bundle.putInt(q, this.zzf);
        bundle.putInt(f5627a, this.zzg);
        bundle.putFloat(l, this.zzh);
        bundle.putInt(n, this.zzi);
        bundle.putInt(f5628b, this.zzl);
        bundle.putFloat(f5632f, this.zzm);
        bundle.putFloat(k, this.zzj);
        bundle.putFloat(f5630d, this.zzk);
        bundle.putBoolean(j, false);
        bundle.putInt(f5629c, -16777216);
        bundle.putInt(o, this.zzn);
        bundle.putFloat(r, this.zzo);
        if (this.zzd != null) {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            zzdb.zzf(this.zzd.compress(Bitmap.CompressFormat.PNG, 0, byteArrayOutputStream));
            bundle.putByteArray(f5633g, byteArrayOutputStream.toByteArray());
        }
        return bundle;
    }

    public final zzcr zzb() {
        zzcr zzcrVar = new zzcr();
        zzcrVar.h = this.zza;
        zzcrVar.l = this.zzd;
        zzcrVar.n = this.zzb;
        zzcrVar.f5550e = this.zzc;
        zzcrVar.f5552g = this.zze;
        zzcrVar.i = this.zzf;
        zzcrVar.o = this.zzg;
        zzcrVar.f5546a = this.zzh;
        zzcrVar.k = this.zzi;
        zzcrVar.m = this.zzl;
        zzcrVar.f5547b = this.zzm;
        zzcrVar.f5551f = this.zzj;
        zzcrVar.j = this.zzk;
        zzcrVar.f5549d = this.zzn;
        zzcrVar.f5548c = this.zzo;
        return zzcrVar;
    }
}
