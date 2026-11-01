package com.google.android.gms.internal.ads;

import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.List;

/* loaded from: classes3.dex */
public final class zzaln implements zzaki {

    /* renamed from: a, reason: collision with root package name */
    public final int f4254a;

    /* renamed from: b, reason: collision with root package name */
    public final String f4255b;

    /* renamed from: c, reason: collision with root package name */
    public final zzed f4256c = new zzed();

    /* renamed from: d, reason: collision with root package name */
    public final float f4257d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f4258e;

    /* renamed from: f, reason: collision with root package name */
    public final int f4259f;

    /* renamed from: g, reason: collision with root package name */
    public final int f4260g;

    public zzaln(List list) {
        if (list.size() != 1 || (((byte[]) list.get(0)).length != 48 && ((byte[]) list.get(0)).length != 53)) {
            this.f4259f = 0;
            this.f4254a = -1;
            this.f4255b = "sans-serif";
            this.f4258e = false;
            this.f4257d = 0.85f;
            this.f4260g = -1;
            return;
        }
        byte[] bArr = (byte[]) list.get(0);
        this.f4259f = bArr[24];
        this.f4254a = ((bArr[26] & 255) << 24) | ((bArr[27] & 255) << 16) | ((bArr[28] & 255) << 8) | (bArr[29] & 255);
        this.f4255b = true == "Serif".equals(zzen.zzC(bArr, 43, bArr.length + (-43))) ? "serif" : "sans-serif";
        int i = bArr[25] * 20;
        this.f4260g = i;
        boolean z = (bArr[0] & 32) != 0;
        this.f4258e = z;
        if (z) {
            this.f4257d = Math.max(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, Math.min(((bArr[11] & 255) | ((bArr[10] & 255) << 8)) / i, 0.95f));
        } else {
            this.f4257d = 0.85f;
        }
    }

    public static void h(SpannableStringBuilder spannableStringBuilder, int i, int i2, int i3, int i4, int i5) {
        if (i != i2) {
            spannableStringBuilder.setSpan(new ForegroundColorSpan((i >>> 8) | ((i & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE) << 24)), i3, i4, i5 | 33);
        }
    }

    public static void i(SpannableStringBuilder spannableStringBuilder, int i, int i2, int i3, int i4, int i5) {
        if (i != i2) {
            int i6 = i5 | 33;
            int i7 = i & 1;
            int i8 = i & 2;
            boolean z = true;
            if (i7 == 0) {
                if (i8 != 0) {
                    spannableStringBuilder.setSpan(new StyleSpan(2), i3, i4, i6);
                }
                z = false;
            } else if (i8 != 0) {
                spannableStringBuilder.setSpan(new StyleSpan(3), i3, i4, i6);
            } else {
                spannableStringBuilder.setSpan(new StyleSpan(1), i3, i4, i6);
                z = false;
            }
            if ((i & 4) != 0) {
                spannableStringBuilder.setSpan(new UnderlineSpan(), i3, i4, i6);
            } else {
                if (i7 != 0 || z) {
                    return;
                }
                spannableStringBuilder.setSpan(new StyleSpan(0), i3, i4, i6);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaki
    public final void zza(byte[] bArr, int i, int i2, zzakh zzakhVar, zzdg zzdgVar) {
        String zzB;
        int i3;
        int i4;
        int i5;
        zzed zzedVar = this.f4256c;
        zzedVar.zzJ(bArr, i + i2);
        zzedVar.zzL(i);
        int i6 = 1;
        int i7 = 2;
        zzdb.zzd(zzedVar.zzb() >= 2);
        int zzq = zzedVar.zzq();
        if (zzq == 0) {
            zzB = "";
        } else {
            int zzd = zzedVar.zzd();
            Charset zzC = zzedVar.zzC();
            int zzd2 = zzedVar.zzd() - zzd;
            if (zzC == null) {
                zzC = StandardCharsets.UTF_8;
            }
            zzB = zzedVar.zzB(zzq - zzd2, zzC);
        }
        if (zzB.isEmpty()) {
            zzdgVar.zza(new zzaka(zzfzo.zzn(), -9223372036854775807L, -9223372036854775807L));
            return;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(zzB);
        i(spannableStringBuilder, this.f4259f, 0, 0, spannableStringBuilder.length(), 16711680);
        h(spannableStringBuilder, this.f4254a, -1, 0, spannableStringBuilder.length(), 16711680);
        int length = spannableStringBuilder.length();
        String str = this.f4255b;
        if (str != "sans-serif") {
            spannableStringBuilder.setSpan(new TypefaceSpan(str), 0, length, 16711713);
        }
        float f2 = this.f4257d;
        while (zzedVar.zzb() >= 8) {
            int zzd3 = zzedVar.zzd();
            int zzg = zzedVar.zzg();
            int zzg2 = zzedVar.zzg();
            if (zzg2 == 1937013100) {
                zzdb.zzd(zzedVar.zzb() >= i7);
                int zzq2 = zzedVar.zzq();
                int i8 = 0;
                while (i8 < zzq2) {
                    zzdb.zzd(zzedVar.zzb() >= 12);
                    int zzq3 = zzedVar.zzq();
                    int zzq4 = zzedVar.zzq();
                    zzedVar.zzM(i7);
                    int i9 = i8;
                    int zzm = zzedVar.zzm();
                    zzedVar.zzM(i6);
                    int zzg3 = zzedVar.zzg();
                    if (zzq4 > spannableStringBuilder.length()) {
                        i4 = zzd3;
                        zzdt.zzf("Tx3gParser", "Truncating styl end (" + zzq4 + ") to cueText.length() (" + spannableStringBuilder.length() + ").");
                        zzq4 = spannableStringBuilder.length();
                    } else {
                        i4 = zzd3;
                    }
                    if (zzq3 >= zzq4) {
                        zzdt.zzf("Tx3gParser", "Ignoring styl with start (" + zzq3 + ") >= end (" + zzq4 + ").");
                        i5 = i9;
                    } else {
                        i5 = i9;
                        int i10 = zzq4;
                        i(spannableStringBuilder, zzm, this.f4259f, zzq3, i10, 0);
                        h(spannableStringBuilder, zzg3, this.f4254a, zzq3, i10, 0);
                    }
                    i8 = i5 + 1;
                    zzd3 = i4;
                    i6 = 1;
                    i7 = 2;
                }
                i3 = zzd3;
            } else {
                i3 = zzd3;
                if (zzg2 == 1952608120 && this.f4258e) {
                    zzdb.zzd(zzedVar.zzb() >= 2);
                    f2 = Math.max(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, Math.min(zzedVar.zzq() / this.f4260g, 0.95f));
                    zzedVar.zzL(i3 + zzg);
                    i6 = 1;
                    i7 = 2;
                }
            }
            zzedVar.zzL(i3 + zzg);
            i6 = 1;
            i7 = 2;
        }
        zzcr zzcrVar = new zzcr();
        zzcrVar.zzl(spannableStringBuilder);
        zzcrVar.zze(f2, 0);
        zzcrVar.zzf(0);
        zzdgVar.zza(new zzaka(zzfzo.zzo(zzcrVar.zzp()), -9223372036854775807L, -9223372036854775807L));
    }
}
