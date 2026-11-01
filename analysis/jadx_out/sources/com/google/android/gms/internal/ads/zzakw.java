package com.google.android.gms.internal.ads;

import android.graphics.Bitmap;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import g.ggr;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.zip.Inflater;

/* loaded from: classes3.dex */
public final class zzakw implements zzaki {

    /* renamed from: a, reason: collision with root package name */
    public Inflater f4231a;

    /* renamed from: b, reason: collision with root package name */
    public final zzed f4232b = new zzed();

    /* renamed from: c, reason: collision with root package name */
    public final zzed f4233c = new zzed();

    /* renamed from: d, reason: collision with root package name */
    public final ggr f4234d = new ggr();

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.android.gms.internal.ads.zzaki
    public final void zza(byte[] bArr, int i, int i2, zzakh zzakhVar, zzdg zzdgVar) {
        int[] iArr;
        zzct zzctVar;
        zzed zzedVar;
        zzed zzedVar2;
        int zzo;
        zzed zzedVar3 = this.f4232b;
        zzedVar3.zzJ(bArr, i + i2);
        zzedVar3.zzL(i);
        if (zzedVar3.zzb() > 0 && zzedVar3.zzf() == 120) {
            if (this.f4231a == null) {
                this.f4231a = new Inflater();
            }
            Inflater inflater = this.f4231a;
            zzed zzedVar4 = this.f4233c;
            if (zzen.zzH(zzedVar3, zzedVar4, inflater)) {
                zzedVar3.zzJ(zzedVar4.zzN(), zzedVar4.zze());
            }
        }
        ggr ggrVar = this.f4234d;
        int i3 = 0;
        ggrVar.f18113b = 0;
        int[] iArr2 = ggrVar.f18118g;
        zzed zzedVar5 = ggrVar.f18115d;
        ggrVar.f18114c = 0;
        ggrVar.f18116e = 0;
        ggrVar.i = 0;
        ggrVar.f18112a = 0;
        ggrVar.f18117f = 0;
        zzedVar5.zzI(0);
        ggrVar.h = false;
        ArrayList arrayList = new ArrayList();
        while (zzedVar3.zzb() >= 3) {
            int zze = zzedVar3.zze();
            int zzm = zzedVar3.zzm();
            int zzq = zzedVar3.zzq();
            int zzd = zzedVar3.zzd() + zzq;
            if (zzd > zze) {
                zzedVar3.zzL(zze);
                zzedVar = zzedVar3;
                iArr = iArr2;
                zzctVar = null;
            } else {
                if (zzm != 128) {
                    switch (zzm) {
                        case 20:
                            if (zzq % 5 != 2) {
                                zzedVar2 = zzedVar3;
                                iArr = iArr2;
                            } else {
                                zzedVar3.zzM(2);
                                Arrays.fill(iArr2, i3);
                                int i4 = zzq / 5;
                                int i5 = 0;
                                while (i5 < i4) {
                                    int zzm2 = zzedVar3.zzm();
                                    int zzm3 = zzedVar3.zzm();
                                    double d2 = zzm3;
                                    zzed zzedVar6 = zzedVar3;
                                    double zzm4 = zzedVar3.zzm() - 128;
                                    int[] iArr3 = iArr2;
                                    double zzm5 = zzedVar3.zzm() - 128;
                                    iArr3[zzm2] = (Math.max(0, Math.min((int) ((d2 - (0.34414d * zzm5)) - (zzm4 * 0.71414d)), MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE)) << 8) | (zzedVar3.zzm() << 24) | (Math.max(0, Math.min((int) ((1.402d * zzm4) + d2), MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE)) << 16) | Math.max(0, Math.min((int) ((1.772d * zzm5) + d2), MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE));
                                    i5++;
                                    zzedVar3 = zzedVar6;
                                    iArr2 = iArr3;
                                }
                                zzedVar2 = zzedVar3;
                                iArr = iArr2;
                                ggrVar.h = true;
                            }
                            zzedVar = zzedVar2;
                            break;
                        case 21:
                            if (zzq >= 4) {
                                zzedVar3.zzM(3);
                                int i6 = zzq - 4;
                                if ((128 & zzedVar3.zzm()) != 0) {
                                    if (i6 >= 7 && (zzo = zzedVar3.zzo()) >= 4) {
                                        ggrVar.f18112a = zzedVar3.zzq();
                                        ggrVar.f18117f = zzedVar3.zzq();
                                        zzedVar5.zzI(zzo - 4);
                                        i6 = zzq - 11;
                                    }
                                }
                                int zzd2 = zzedVar5.zzd();
                                int zze2 = zzedVar5.zze();
                                if (zzd2 < zze2 && i6 > 0) {
                                    int min = Math.min(i6, zze2 - zzd2);
                                    zzedVar3.zzH(zzedVar5.zzN(), zzd2, min);
                                    zzedVar5.zzL(zzd2 + min);
                                }
                            }
                            zzedVar = zzedVar3;
                            iArr = iArr2;
                            break;
                        case 22:
                            if (zzq >= 19) {
                                ggrVar.f18113b = zzedVar3.zzq();
                                ggrVar.f18114c = zzedVar3.zzq();
                                zzedVar3.zzM(11);
                                ggrVar.f18116e = zzedVar3.zzq();
                                ggrVar.i = zzedVar3.zzq();
                            }
                            zzedVar = zzedVar3;
                            iArr = iArr2;
                            break;
                        default:
                            zzedVar = zzedVar3;
                            iArr = iArr2;
                            break;
                    }
                    zzctVar = null;
                } else {
                    zzed zzedVar7 = zzedVar3;
                    iArr = iArr2;
                    if (ggrVar.f18113b == 0 || ggrVar.f18114c == 0 || ggrVar.f18112a == 0 || ggrVar.f18117f == 0 || zzedVar5.zze() == 0 || zzedVar5.zzd() != zzedVar5.zze() || !ggrVar.h) {
                        zzctVar = null;
                    } else {
                        zzedVar5.zzL(0);
                        int i7 = ggrVar.f18112a * ggrVar.f18117f;
                        int[] iArr4 = new int[i7];
                        int i8 = 0;
                        while (i8 < i7) {
                            int zzm6 = zzedVar5.zzm();
                            if (zzm6 != 0) {
                                iArr4[i8] = iArr[zzm6];
                                i8++;
                            } else {
                                int zzm7 = zzedVar5.zzm();
                                if (zzm7 != 0) {
                                    int i9 = zzm7 & 63;
                                    if ((zzm7 & 64) != 0) {
                                        i9 = (i9 << 8) | zzedVar5.zzm();
                                    }
                                    int i10 = (zzm7 & TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME) == 0 ? iArr[0] : iArr[zzedVar5.zzm()];
                                    int i11 = i8 + i9;
                                    Arrays.fill(iArr4, i8, i11, i10);
                                    i8 = i11;
                                }
                            }
                        }
                        Bitmap createBitmap = Bitmap.createBitmap(iArr4, ggrVar.f18112a, ggrVar.f18117f, Bitmap.Config.ARGB_8888);
                        zzcr zzcrVar = new zzcr();
                        zzcrVar.zzc(createBitmap);
                        zzcrVar.zzh(ggrVar.f18116e / ggrVar.f18113b);
                        zzcrVar.zzi(0);
                        zzcrVar.zze(ggrVar.i / ggrVar.f18114c, 0);
                        zzcrVar.zzf(0);
                        zzcrVar.zzk(ggrVar.f18112a / ggrVar.f18113b);
                        zzcrVar.zzd(ggrVar.f18117f / ggrVar.f18114c);
                        zzctVar = zzcrVar.zzp();
                    }
                    ggrVar.f18113b = 0;
                    ggrVar.f18114c = 0;
                    ggrVar.f18116e = 0;
                    ggrVar.i = 0;
                    ggrVar.f18112a = 0;
                    ggrVar.f18117f = 0;
                    zzedVar5.zzI(0);
                    ggrVar.h = false;
                    zzedVar = zzedVar7;
                }
                zzedVar.zzL(zzd);
            }
            if (zzctVar != null) {
                arrayList.add(zzctVar);
            }
            zzedVar3 = zzedVar;
            iArr2 = iArr;
            i3 = 0;
        }
        zzdgVar.zza(new zzaka(arrayList, -9223372036854775807L, -9223372036854775807L));
    }
}
