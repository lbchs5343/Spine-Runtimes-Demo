package g;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.google.android.gms.internal.ads.zzab;
import com.google.android.gms.internal.ads.zzad;
import com.google.android.gms.internal.ads.zzadz;
import com.google.android.gms.internal.ads.zzaea;
import com.google.android.gms.internal.ads.zzaeb;
import com.google.android.gms.internal.ads.zzaec;
import com.google.android.gms.internal.ads.zzaed;
import com.google.android.gms.internal.ads.zzbd;
import com.google.android.gms.internal.ads.zzbh;
import com.google.android.gms.internal.ads.zzdb;
import com.google.android.gms.internal.ads.zzdt;
import com.google.android.gms.internal.ads.zzed;
import com.google.android.gms.internal.ads.zzfzo;
import java.util.ArrayList;
import java.util.Arrays;

/* loaded from: classes3.dex */
public final class ix extends dbh {

    /* renamed from: a, reason: collision with root package name */
    public int f19449a;

    /* renamed from: b, reason: collision with root package name */
    public vg f19450b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f19451c;

    /* renamed from: d, reason: collision with root package name */
    public zzaec f19452d;

    /* renamed from: e, reason: collision with root package name */
    public zzaea f19453e;

    @Override // g.dbh
    public final void f(long j) {
        this.v = j;
        this.f19451c = j != 0;
        zzaec zzaecVar = this.f19452d;
        this.f19449a = zzaecVar != null ? zzaecVar.zze : 0;
    }

    @Override // g.dbh
    public final long g(zzed zzedVar) {
        if ((zzedVar.zzN()[0] & 1) == 1) {
            return -1L;
        }
        byte b2 = zzedVar.zzN()[0];
        vg vgVar = this.f19450b;
        zzdb.zzb(vgVar);
        int i = vgVar.f20155d;
        zzaec zzaecVar = (zzaec) vgVar.f20156e;
        int i2 = !((zzaeb[]) vgVar.f20154c)[(b2 >> 1) & (MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE >>> (8 - i))].zza ? zzaecVar.zze : zzaecVar.zzf;
        int i3 = this.f19451c ? (this.f19449a + i2) / 4 : 0;
        if (zzedVar.zzc() < zzedVar.zze() + 4) {
            byte[] copyOf = Arrays.copyOf(zzedVar.zzN(), zzedVar.zze() + 4);
            zzedVar.zzJ(copyOf, copyOf.length);
        } else {
            zzedVar.zzK(zzedVar.zze() + 4);
        }
        long j = i3;
        byte[] zzN = zzedVar.zzN();
        zzN[zzedVar.zze() - 4] = (byte) (j & 255);
        zzN[zzedVar.zze() - 3] = (byte) ((j >>> 8) & 255);
        zzN[zzedVar.zze() - 2] = (byte) ((j >>> 16) & 255);
        zzN[zzedVar.zze() - 1] = (byte) ((j >>> 24) & 255);
        this.f19451c = true;
        this.f19449a = i2;
        return j;
    }

    @Override // g.dbh
    public final void h(boolean z) {
        super.h(z);
        if (z) {
            this.f19450b = null;
            this.f19452d = null;
            this.f19453e = null;
        }
        this.f19449a = 0;
        this.f19451c = false;
    }

    @Override // g.dbh
    public final boolean i(zzed zzedVar, long j, ffr ffrVar) {
        vg vgVar;
        int i;
        int i2;
        int i3;
        int[] iArr;
        if (this.f19450b != null) {
            ((zzad) ffrVar.f16721f).getClass();
            return false;
        }
        zzaec zzaecVar = this.f19452d;
        int i4 = 1;
        if (zzaecVar == null) {
            zzaed.zzd(1, zzedVar, false);
            int zzj = zzedVar.zzj();
            int zzm = zzedVar.zzm();
            int zzj2 = zzedVar.zzj();
            int zzi = zzedVar.zzi();
            int i5 = zzi <= 0 ? -1 : zzi;
            int zzi2 = zzedVar.zzi();
            int i6 = zzi2 <= 0 ? -1 : zzi2;
            int zzi3 = zzedVar.zzi();
            int i7 = zzi3 <= 0 ? -1 : zzi3;
            int zzm2 = zzedVar.zzm();
            this.f19452d = new zzaec(zzj, zzm, zzj2, i5, i6, i7, (int) Math.pow(2.0d, zzm2 & 15), (int) Math.pow(2.0d, (zzm2 & MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA) >> 4), 1 == (zzedVar.zzm() & 1), Arrays.copyOf(zzedVar.zzN(), zzedVar.zze()));
        } else {
            zzaea zzaeaVar = this.f19453e;
            if (zzaeaVar == null) {
                this.f19453e = zzaed.zzc(zzedVar, true, true);
            } else {
                byte[] bArr = new byte[zzedVar.zze()];
                System.arraycopy(zzedVar.zzN(), 0, bArr, 0, zzedVar.zze());
                int i8 = zzaecVar.zza;
                int i9 = 5;
                zzaed.zzd(5, zzedVar, false);
                int zzm3 = zzedVar.zzm() + 1;
                zzadz zzadzVar = new zzadz(zzedVar.zzN());
                zzadzVar.zzc(zzedVar.zzd() * 8);
                int i10 = 0;
                while (true) {
                    int i11 = 2;
                    int i12 = 16;
                    if (i10 >= zzm3) {
                        int i13 = 1;
                        int i14 = 6;
                        int zzb = zzadzVar.zzb(6) + 1;
                        for (int i15 = 0; i15 < zzb; i15++) {
                            if (zzadzVar.zzb(16) != 0) {
                                throw zzbh.zza("placeholder of time domain transforms not zeroed out", null);
                            }
                        }
                        int zzb2 = zzadzVar.zzb(6) + 1;
                        int i16 = 0;
                        while (true) {
                            int i17 = 3;
                            if (i16 < zzb2) {
                                int zzb3 = zzadzVar.zzb(i12);
                                if (zzb3 == 0) {
                                    int i18 = 8;
                                    zzadzVar.zzc(8);
                                    zzadzVar.zzc(16);
                                    zzadzVar.zzc(16);
                                    zzadzVar.zzc(6);
                                    zzadzVar.zzc(8);
                                    int zzb4 = zzadzVar.zzb(4) + 1;
                                    int i19 = 0;
                                    while (i19 < zzb4) {
                                        zzadzVar.zzc(i18);
                                        i19++;
                                        i18 = 8;
                                    }
                                } else {
                                    if (zzb3 != i13) {
                                        throw zzbh.zza("floor type greater than 1 not decodable: " + zzb3, null);
                                    }
                                    int zzb5 = zzadzVar.zzb(5);
                                    int[] iArr2 = new int[zzb5];
                                    int i20 = -1;
                                    for (int i21 = 0; i21 < zzb5; i21++) {
                                        int zzb6 = zzadzVar.zzb(4);
                                        iArr2[i21] = zzb6;
                                        if (zzb6 > i20) {
                                            i20 = zzb6;
                                        }
                                    }
                                    int i22 = i20 + 1;
                                    int[] iArr3 = new int[i22];
                                    int i23 = 0;
                                    while (i23 < i22) {
                                        int i24 = 1;
                                        iArr3[i23] = zzadzVar.zzb(i17) + 1;
                                        int zzb7 = zzadzVar.zzb(2);
                                        if (zzb7 > 0) {
                                            i3 = 8;
                                            zzadzVar.zzc(8);
                                        } else {
                                            i3 = 8;
                                        }
                                        int i25 = i22;
                                        int i26 = 0;
                                        while (true) {
                                            int i27 = i24 << zzb7;
                                            iArr = iArr2;
                                            if (i26 < i27) {
                                                zzadzVar.zzc(i3);
                                                i26++;
                                                iArr2 = iArr;
                                                i3 = 8;
                                                i24 = 1;
                                            }
                                        }
                                        i23++;
                                        iArr2 = iArr;
                                        i22 = i25;
                                        i17 = 3;
                                    }
                                    int[] iArr4 = iArr2;
                                    zzadzVar.zzc(2);
                                    int zzb8 = zzadzVar.zzb(4);
                                    int i28 = 0;
                                    int i29 = 0;
                                    for (int i30 = 0; i30 < zzb5; i30++) {
                                        i28 += iArr3[iArr4[i30]];
                                        while (i29 < i28) {
                                            zzadzVar.zzc(zzb8);
                                            i29++;
                                        }
                                    }
                                }
                                i16++;
                                i14 = 6;
                                i12 = 16;
                                i13 = 1;
                            } else {
                                int i31 = 1;
                                int zzb9 = zzadzVar.zzb(i14) + 1;
                                int i32 = 0;
                                while (i32 < zzb9) {
                                    if (zzadzVar.zzb(16) > 2) {
                                        throw zzbh.zza("residueType greater than 2 is not decodable", null);
                                    }
                                    zzadzVar.zzc(24);
                                    zzadzVar.zzc(24);
                                    zzadzVar.zzc(24);
                                    int zzb10 = zzadzVar.zzb(i14) + i31;
                                    int i33 = 8;
                                    zzadzVar.zzc(8);
                                    int[] iArr5 = new int[zzb10];
                                    for (int i34 = 0; i34 < zzb10; i34++) {
                                        iArr5[i34] = ((zzadzVar.zzd() ? zzadzVar.zzb(5) : 0) * 8) + zzadzVar.zzb(3);
                                    }
                                    int i35 = 0;
                                    while (i35 < zzb10) {
                                        int i36 = 0;
                                        while (i36 < i33) {
                                            if ((iArr5[i35] & (1 << i36)) != 0) {
                                                zzadzVar.zzc(i33);
                                            }
                                            i36++;
                                            i33 = 8;
                                        }
                                        i35++;
                                        i33 = 8;
                                    }
                                    i32++;
                                    i14 = 6;
                                    i31 = 1;
                                }
                                int zzb11 = zzadzVar.zzb(i14) + 1;
                                for (int i37 = 0; i37 < zzb11; i37++) {
                                    int zzb12 = zzadzVar.zzb(16);
                                    if (zzb12 != 0) {
                                        zzdt.zzc("VorbisUtil", "mapping type other than 0 not supported: " + zzb12);
                                    } else {
                                        if (zzadzVar.zzd()) {
                                            i = 1;
                                            i2 = zzadzVar.zzb(4) + 1;
                                        } else {
                                            i = 1;
                                            i2 = 1;
                                        }
                                        if (zzadzVar.zzd()) {
                                            int zzb13 = zzadzVar.zzb(8) + i;
                                            for (int i38 = 0; i38 < zzb13; i38++) {
                                                int i39 = i8 - 1;
                                                zzadzVar.zzc(zzaed.zza(i39));
                                                zzadzVar.zzc(zzaed.zza(i39));
                                            }
                                        }
                                        if (zzadzVar.zzb(2) != 0) {
                                            throw zzbh.zza("to reserved bits must be zero after mapping coupling steps", null);
                                        }
                                        if (i2 > 1) {
                                            for (int i40 = 0; i40 < i8; i40++) {
                                                zzadzVar.zzc(4);
                                            }
                                        }
                                        for (int i41 = 0; i41 < i2; i41++) {
                                            zzadzVar.zzc(8);
                                            zzadzVar.zzc(8);
                                            zzadzVar.zzc(8);
                                        }
                                    }
                                }
                                int zzb14 = zzadzVar.zzb(6);
                                int i42 = zzb14 + 1;
                                zzaeb[] zzaebVarArr = new zzaeb[i42];
                                for (int i43 = 0; i43 < i42; i43++) {
                                    zzaebVarArr[i43] = new zzaeb(zzadzVar.zzd(), zzadzVar.zzb(16), zzadzVar.zzb(16), zzadzVar.zzb(8));
                                }
                                if (!zzadzVar.zzd()) {
                                    throw zzbh.zza("framing bit after modes not set as expected", null);
                                }
                                vgVar = new vg(zzaecVar, zzaeaVar, bArr, zzaebVarArr, zzaed.zza(zzb14));
                            }
                        }
                    } else {
                        if (zzadzVar.zzb(24) != 5653314) {
                            throw zzbh.zza("expected code book to start with [0x56, 0x43, 0x42] at " + zzadzVar.zza(), null);
                        }
                        int zzb15 = zzadzVar.zzb(16);
                        int zzb16 = zzadzVar.zzb(24);
                        if (zzadzVar.zzd()) {
                            zzadzVar.zzc(i9);
                            for (int i44 = 0; i44 < zzb16; i44 += zzadzVar.zzb(zzaed.zza(zzb16 - i44))) {
                            }
                        } else {
                            boolean zzd = zzadzVar.zzd();
                            for (int i45 = 0; i45 < zzb16; i45++) {
                                if (!zzd) {
                                    zzadzVar.zzc(i9);
                                } else if (zzadzVar.zzd()) {
                                    zzadzVar.zzc(i9);
                                }
                            }
                        }
                        int zzb17 = zzadzVar.zzb(4);
                        if (zzb17 > 2) {
                            throw zzbh.zza("lookup type greater than 2 not decodable: " + zzb17, null);
                        }
                        if (zzb17 == i4) {
                            i11 = zzb17;
                        } else if (zzb17 != 2) {
                            i10++;
                            i9 = 5;
                            i4 = 1;
                        }
                        zzadzVar.zzc(32);
                        zzadzVar.zzc(32);
                        int zzb18 = zzadzVar.zzb(4) + i4;
                        zzadzVar.zzc(i4);
                        zzadzVar.zzc((int) ((i11 == i4 ? zzb15 != 0 ? (long) Math.floor(Math.pow(zzb16, 1.0d / zzb15)) : 0L : zzb15 * zzb16) * zzb18));
                        i10++;
                        i9 = 5;
                        i4 = 1;
                    }
                }
            }
        }
        vgVar = null;
        this.f19450b = vgVar;
        if (vgVar == null) {
            return true;
        }
        ArrayList arrayList = new ArrayList();
        zzaec zzaecVar2 = (zzaec) vgVar.f20156e;
        arrayList.add(zzaecVar2.zzg);
        arrayList.add((byte[]) vgVar.f20153b);
        zzbd zzb19 = zzaed.zzb(zzfzo.zzm(((zzaea) vgVar.f20152a).zza));
        zzab zzabVar = new zzab();
        zzabVar.zzZ("audio/vorbis");
        zzabVar.zzy(zzaecVar2.zzd);
        zzabVar.zzU(zzaecVar2.zzc);
        zzabVar.zzz(zzaecVar2.zza);
        zzabVar.zzaa(zzaecVar2.zzb);
        zzabVar.zzM(arrayList);
        zzabVar.zzS(zzb19);
        ffrVar.f16721f = zzabVar.zzaf();
        return true;
    }
}
