package com.google.android.gms.internal.ads;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import g.dub;
import g.fhr;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Locale;

/* loaded from: classes3.dex */
public final class zzagk {
    public static final zzagi zza = new Object() { // from class: com.google.android.gms.internal.ads.zzagi
    };

    public static Charset a(int i) {
        return i != 1 ? i != 2 ? i != 3 ? StandardCharsets.ISO_8859_1 : StandardCharsets.UTF_8 : StandardCharsets.UTF_16BE : StandardCharsets.UTF_16;
    }

    public static int b(int i, zzed zzedVar) {
        byte[] zzN = zzedVar.zzN();
        int zzd = zzedVar.zzd();
        int i2 = zzd;
        while (true) {
            int i3 = i2 + 1;
            if (i3 >= zzd + i) {
                return i;
            }
            if ((zzN[i2] & 255) == 255 && zzN[i3] == 0) {
                System.arraycopy(zzN, i2 + 2, zzN, i3, (i - (i2 - zzd)) - 2);
                i--;
            }
            i2 = i3;
        }
    }

    public static zzfzo c(int i, byte[] bArr, int i2) {
        if (i2 >= bArr.length) {
            return zzfzo.zzo("");
        }
        zzfzl zzfzlVar = new zzfzl();
        int g2 = g(i2, bArr, i);
        while (i2 < g2) {
            zzfzlVar.zzf(new String(bArr, i2, g2 - i2, a(i)));
            i2 = d(i) + g2;
            g2 = g(i2, bArr, i);
        }
        zzfzo zzi = zzfzlVar.zzi();
        return zzi.isEmpty() ? zzfzo.zzo("") : zzi;
    }

    public static int d(int i) {
        return (i == 0 || i == 3) ? 1 : 2;
    }

    public static String e(byte[] bArr, int i, int i2, Charset charset) {
        return (i2 <= i || i2 > bArr.length) ? "" : new String(bArr, i, i2 - i, charset);
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0048, code lost:
    
        r4 = false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean f(zzed zzedVar, int i, int i2, boolean z) {
        boolean z2;
        int zzo;
        long zzo2;
        int i3;
        int i4;
        int zzd = zzedVar.zzd();
        while (true) {
            try {
                z2 = true;
                z2 = true;
                int i5 = 1;
                int i6 = 1;
                if (zzedVar.zzb() < i2) {
                    break;
                }
                if (i >= 3) {
                    zzo = zzedVar.zzg();
                    zzo2 = zzedVar.zzu();
                    i3 = zzedVar.zzq();
                } else {
                    zzo = zzedVar.zzo();
                    zzo2 = zzedVar.zzo();
                    i3 = 0;
                }
                if (zzo != 0 || zzo2 != 0 || i3 != 0) {
                    if (i == 4 && !z) {
                        if ((8421504 & zzo2) != 0) {
                            break;
                        }
                        zzo2 = ((zzo2 >> 24) << 21) | (((zzo2 >> 16) & 255) << 14) | (zzo2 & 255) | (((zzo2 >> 8) & 255) << 7);
                    }
                    if (i == 4) {
                        if ((i3 & 64) == 0) {
                            i5 = 0;
                        }
                        int i7 = i5;
                        i6 = i3 & 1;
                        i4 = i7;
                    } else {
                        if (i == 3) {
                            i4 = (i3 & 32) != 0 ? 1 : 0;
                            if ((i3 & TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME) != 0) {
                            }
                        } else {
                            i4 = 0;
                        }
                        i6 = 0;
                    }
                    if (i6 != 0) {
                        i4 += 4;
                    }
                    if (zzo2 >= i4 && zzedVar.zzb() >= zzo2) {
                        zzedVar.zzM((int) zzo2);
                    }
                }
            } finally {
                zzedVar.zzL(zzd);
            }
        }
        return z2;
    }

    public static int g(int i, byte[] bArr, int i2) {
        int i3 = i(i, bArr);
        if (i2 == 0 || i2 == 3) {
            return i3;
        }
        while (true) {
            int length = bArr.length;
            if (i3 >= length - 1) {
                return length;
            }
            int i4 = i3 + 1;
            if ((i3 - i) % 2 == 0 && bArr[i4] == 0) {
                return i3;
            }
            i3 = i(i4, bArr);
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(11:79|(2:81|(1:91)(3:86|(1:88)(1:90)|89))|92|93|(2:95|(1:116)(9:101|102|103|104|(1:106)(1:108)|107|55|(1:57)|58))(1:233)|117|118|(4:(7:124|125|126|(5:128|129|130|(1:132)|133)(2:139|(1:141))|134|(1:136)(1:138)|137)|142|143|(2:(1:(1:(1:223)(4:218|(1:220)|221|222))(12:187|(1:189)(1:211)|190|(1:192)|193|194|(4:197|(3:199|200|201)(1:203)|202|195)|204|205|(1:207)(1:210)|208|209))(8:160|(1:162)(1:180)|163|(1:165)(1:179)|166|(4:169|(3:171|172|173)(1:175)|174|167)|176|177)|178)(2:151|(1:153)(1:154)))(9:224|(1:(1:(0)))|142|143|(1:145)|(1:156)|(1:182)|(1:213)|223)|55|(0)|58) */
    /* JADX WARN: Code restructure failed: missing block: B:228:0x028a, code lost:
    
        if (r8 == 67) goto L163;
     */
    /* JADX WARN: Code restructure failed: missing block: B:229:0x02c4, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:231:0x02c7, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:57:0x04fb  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static zzagl h(int i, zzed zzedVar, boolean z, zzagi zzagiVar) {
        int zzp;
        int i2;
        int i3;
        boolean z2;
        boolean z3;
        boolean z4;
        int i4;
        String str;
        zzagl zzaglVar;
        int i5;
        zzagl zzafzVar;
        zzagl zzagqVar;
        int i6;
        String zza2;
        int zzm = zzedVar.zzm();
        int zzm2 = zzedVar.zzm();
        int zzm3 = zzedVar.zzm();
        int zzm4 = i >= 3 ? zzedVar.zzm() : 0;
        if (i == 4) {
            zzp = zzedVar.zzp();
            if (!z) {
                zzp = ((zzp >> 24) << 21) | (zzp & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE) | (((zzp >> 8) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE) << 7) | (((zzp >> 16) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE) << 14);
            }
        } else {
            zzp = i == 3 ? zzedVar.zzp() : zzedVar.zzo();
        }
        int zzq = i >= 3 ? zzedVar.zzq() : 0;
        if (zzm == 0 && zzm2 == 0 && zzm3 == 0 && zzm4 == 0 && zzp == 0 && zzq == 0) {
            zzedVar.zzL(zzedVar.zze());
            return null;
        }
        int zzd = zzedVar.zzd() + zzp;
        if (zzd > zzedVar.zze()) {
            zzdt.zzf("Id3Decoder", "Frame size exceeds remaining tag data");
            zzedVar.zzL(zzedVar.zze());
            return null;
        }
        if (zzagiVar != null) {
            zzedVar.zzL(zzd);
            return null;
        }
        if (i == 3) {
            int i7 = zzq & 64;
            i2 = (zzq & TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME) != 0 ? 1 : 0;
            z3 = i7 != 0;
            z4 = false;
            z2 = (zzq & 32) != 0;
            i3 = i2;
        } else if (i == 4) {
            boolean z5 = (zzq & 64) != 0;
            int i8 = (zzq & 8) != 0 ? 1 : 0;
            z3 = (zzq & 4) != 0;
            z4 = (zzq & 2) != 0;
            i3 = zzq & 1;
            int i9 = i8;
            z2 = z5;
            i2 = i9;
        } else {
            i2 = 0;
            i3 = 0;
            z2 = false;
            z3 = false;
            z4 = false;
        }
        if (i2 != 0 || z3) {
            zzdt.zzf("Id3Decoder", "Skipping unsupported compressed or encrypted frame");
            zzedVar.zzL(zzd);
            return null;
        }
        if (z2) {
            zzedVar.zzM(1);
            zzp--;
        }
        if (i3 != 0) {
            zzedVar.zzM(4);
            zzp -= 4;
        }
        if (z4) {
            zzp = b(zzp, zzedVar);
        }
        try {
            try {
            } catch (Throwable th) {
                zzedVar.zzL(zzd);
                throw th;
            }
        } catch (Exception e2) {
            e = e2;
            i4 = zzm;
            str = "Id3Decoder";
            zzedVar.zzL(zzd);
            zzaglVar = null;
            if (zzaglVar == null) {
            }
            return zzaglVar;
        } catch (OutOfMemoryError e3) {
            e = e3;
            i4 = zzm;
            str = "Id3Decoder";
            zzedVar.zzL(zzd);
            zzaglVar = null;
            if (zzaglVar == null) {
            }
            return zzaglVar;
        }
        if (zzm == 84 && zzm2 == 88 && zzm3 == 88 && (i == 2 || zzm4 == 88)) {
            if (zzp > 0) {
                int zzm5 = zzedVar.zzm();
                int i10 = zzp - 1;
                byte[] bArr = new byte[i10];
                zzedVar.zzH(bArr, 0, i10);
                int g2 = g(0, bArr, zzm5);
                zzafzVar = new zzagu("TXXX", new String(bArr, 0, g2, a(zzm5)), c(zzm5, bArr, g2 + d(zzm5)));
                i4 = zzm;
            }
            i4 = zzm;
            zzafzVar = null;
        } else {
            if (zzm == 84) {
                String j = j(i, 84, zzm2, zzm3, zzm4);
                if (zzp > 0) {
                    int zzm6 = zzedVar.zzm();
                    int i11 = zzp - 1;
                    byte[] bArr2 = new byte[i11];
                    zzedVar.zzH(bArr2, 0, i11);
                    i4 = zzm;
                    zzafzVar = new zzagu(j, null, c(zzm6, bArr2, 0));
                }
            } else {
                if (zzm == 87) {
                    if (zzm2 != 88 || zzm3 != 88 || (i != 2 && zzm4 != 88)) {
                        i5 = 87;
                    }
                    int zzm7 = zzedVar.zzm();
                    int i12 = zzp - 1;
                    byte[] bArr3 = new byte[i12];
                    zzedVar.zzH(bArr3, 0, i12);
                    int g3 = g(0, bArr3, zzm7);
                    String str2 = new String(bArr3, 0, g3, a(zzm7));
                    int d2 = g3 + d(zzm7);
                    zzafzVar = new zzagw("WXXX", str2, e(bArr3, d2, i(d2, bArr3), StandardCharsets.ISO_8859_1));
                    i4 = zzm;
                } else {
                    i5 = zzm;
                }
                if (i5 != 87) {
                    if (i5 == 80) {
                        if (zzm2 == 82 && zzm3 == 73 && zzm4 == 86) {
                            byte[] bArr4 = new byte[zzp];
                            zzedVar.zzH(bArr4, 0, zzp);
                            int i13 = i(0, bArr4);
                            String str3 = new String(bArr4, 0, i13, StandardCharsets.ISO_8859_1);
                            int i14 = i13 + 1;
                            zzafzVar = new zzags(str3, zzp <= i14 ? zzen.zzf : Arrays.copyOfRange(bArr4, i14, zzp));
                        } else {
                            i5 = 80;
                        }
                    }
                    try {
                    } catch (Exception e4) {
                        e = e4;
                    } catch (OutOfMemoryError e5) {
                        e = e5;
                    }
                    if (i5 != 71) {
                        str = "Id3Decoder";
                    } else {
                        if (zzm2 == 69 && zzm3 == 79 && (zzm4 == 66 || i == 2)) {
                            try {
                                int zzm8 = zzedVar.zzm();
                                Charset a2 = a(zzm8);
                                int i15 = zzp - 1;
                                byte[] bArr5 = new byte[i15];
                                zzedVar.zzH(bArr5, 0, i15);
                                int i16 = i(0, bArr5);
                                str = "Id3Decoder";
                                String zze = zzbg.zze(new String(bArr5, 0, i16, StandardCharsets.ISO_8859_1));
                                int i17 = i16 + 1;
                                int g4 = g(i17, bArr5, zzm8);
                                String e6 = e(bArr5, i17, g4, a2);
                                int d3 = g4 + d(zzm8);
                                int g5 = g(d3, bArr5, zzm8);
                                String e7 = e(bArr5, d3, g5, a2);
                                int d4 = g5 + d(zzm8);
                                i4 = zzm;
                                zzafzVar = new zzagh(zze, e6, e7, i15 <= d4 ? zzen.zzf : Arrays.copyOfRange(bArr5, d4, i15));
                                zzedVar.zzL(zzd);
                                zzaglVar = zzafzVar;
                                e = null;
                            } catch (Exception e8) {
                                e = e8;
                                str = "Id3Decoder";
                                i4 = zzm;
                                zzedVar.zzL(zzd);
                                zzaglVar = null;
                                if (zzaglVar == null) {
                                }
                                return zzaglVar;
                            } catch (OutOfMemoryError e9) {
                                e = e9;
                                str = "Id3Decoder";
                                i4 = zzm;
                                zzedVar.zzL(zzd);
                                zzaglVar = null;
                                if (zzaglVar == null) {
                                }
                                return zzaglVar;
                            }
                            if (zzaglVar == null) {
                                zzdt.zzg(str, "Failed to decode frame: id=" + j(i, i4, zzm2, zzm3, zzm4) + ", frameSize=" + zzp, e);
                            }
                            return zzaglVar;
                        }
                        str = "Id3Decoder";
                        i5 = 71;
                    }
                    if (i == 2) {
                        if (i5 == 80 && zzm2 == 73 && zzm3 == 67) {
                            int zzm9 = zzedVar.zzm();
                            Charset a3 = a(zzm9);
                            int i18 = zzp - 1;
                            byte[] bArr6 = new byte[i18];
                            zzedVar.zzH(bArr6, 0, i18);
                            if (i == 2) {
                                i4 = zzm;
                                String concat = "image/".concat(String.valueOf(zzfwa.zza(new String(bArr6, 0, 3, StandardCharsets.ISO_8859_1))));
                                if ("image/jpg".equals(concat)) {
                                    concat = "image/jpeg";
                                }
                                zza2 = concat;
                                i6 = 2;
                            } else {
                                i4 = zzm;
                                i6 = i(0, bArr6);
                                zza2 = zzfwa.zza(new String(bArr6, 0, i6, StandardCharsets.ISO_8859_1));
                                if (zza2.indexOf(47) == -1) {
                                    zza2 = "image/".concat(zza2);
                                }
                            }
                            int i19 = bArr6[i6 + 1] & 255;
                            int i20 = i6 + 2;
                            int g6 = g(i20, bArr6, zzm9);
                            String str4 = new String(bArr6, i20, g6 - i20, a3);
                            int d5 = g6 + d(zzm9);
                            zzafzVar = new zzafx(zza2, str4, i19, i18 <= d5 ? zzen.zzf : Arrays.copyOfRange(bArr6, d5, i18));
                        }
                        i4 = zzm;
                        if (i5 == 67 || zzm2 != 79 || zzm3 != 77 || (zzm4 != 77 && i != 2)) {
                            if (i5 != 67 && zzm2 == 72 && zzm3 == 65 && zzm4 == 80) {
                                int zzd2 = zzedVar.zzd();
                                int i21 = i(zzd2, zzedVar.zzN());
                                String str5 = new String(zzedVar.zzN(), zzd2, i21 - zzd2, StandardCharsets.ISO_8859_1);
                                zzedVar.zzL(i21 + 1);
                                int zzg = zzedVar.zzg();
                                int zzg2 = zzedVar.zzg();
                                long zzu = zzedVar.zzu();
                                long j2 = zzu == 4294967295L ? -1L : zzu;
                                long zzu2 = zzedVar.zzu();
                                long j3 = zzu2 == 4294967295L ? -1L : zzu2;
                                ArrayList arrayList = new ArrayList();
                                int i22 = zzd2 + zzp;
                                while (zzedVar.zzd() < i22) {
                                    zzagl h = h(i, zzedVar, z, null);
                                    if (h != null) {
                                        arrayList.add(h);
                                    }
                                }
                                zzagqVar = new zzagb(str5, zzg, zzg2, j2, j3, (zzagl[]) arrayList.toArray(new zzagl[0]));
                            } else if (i5 != 67 && zzm2 == 84 && zzm3 == 79 && zzm4 == 67) {
                                int zzd3 = zzedVar.zzd();
                                int i23 = i(zzd3, zzedVar.zzN());
                                String str6 = new String(zzedVar.zzN(), zzd3, i23 - zzd3, StandardCharsets.ISO_8859_1);
                                zzedVar.zzL(i23 + 1);
                                int zzm10 = zzedVar.zzm();
                                boolean z6 = (zzm10 & 2) != 0;
                                int i24 = zzm10 & 1;
                                int zzm11 = zzedVar.zzm();
                                String[] strArr = new String[zzm11];
                                int i25 = 0;
                                while (i25 < zzm11) {
                                    int zzd4 = zzedVar.zzd();
                                    int i26 = i(zzd4, zzedVar.zzN());
                                    strArr[i25] = new String(zzedVar.zzN(), zzd4, i26 - zzd4, StandardCharsets.ISO_8859_1);
                                    zzedVar.zzL(i26 + 1);
                                    i25++;
                                    zzd3 = zzd3;
                                    zzm11 = zzm11;
                                    str6 = str6;
                                }
                                int i27 = zzd3;
                                String str7 = str6;
                                ArrayList arrayList2 = new ArrayList();
                                int i28 = i27 + zzp;
                                while (zzedVar.zzd() < i28) {
                                    zzagl h2 = h(i, zzedVar, z, null);
                                    if (h2 != null) {
                                        arrayList2.add(h2);
                                    }
                                }
                                zzagqVar = new zzagd(str7, z6, 1 == i24, strArr, (zzagl[]) arrayList2.toArray(new zzagl[0]));
                            } else if (i5 != 77 && zzm2 == 76 && zzm3 == 76 && zzm4 == 84) {
                                int zzq2 = zzedVar.zzq();
                                int zzo = zzedVar.zzo();
                                int zzo2 = zzedVar.zzo();
                                int zzm12 = zzedVar.zzm();
                                int zzm13 = zzedVar.zzm();
                                zzec zzecVar = new zzec();
                                zzecVar.zzj(zzedVar);
                                int i29 = ((zzp - 10) * 8) / (zzm12 + zzm13);
                                int[] iArr = new int[i29];
                                int[] iArr2 = new int[i29];
                                for (int i30 = 0; i30 < i29; i30++) {
                                    int zzd5 = zzecVar.zzd(zzm12);
                                    int zzd6 = zzecVar.zzd(zzm13);
                                    iArr[i30] = zzd5;
                                    iArr2[i30] = zzd6;
                                }
                                zzagqVar = new zzagq(zzq2, zzo, zzo2, iArr, iArr2);
                            } else {
                                String j4 = j(i, i5, zzm2, zzm3, zzm4);
                                byte[] bArr7 = new byte[zzp];
                                zzedVar.zzH(bArr7, 0, zzp);
                                zzafzVar = new zzafz(j4, bArr7);
                            }
                            zzafzVar = zzagqVar;
                        } else if (zzp < 4) {
                            zzafzVar = null;
                        } else {
                            int zzm14 = zzedVar.zzm();
                            Charset a4 = a(zzm14);
                            byte[] bArr8 = new byte[3];
                            zzedVar.zzH(bArr8, 0, 3);
                            String str8 = new String(bArr8, 0, 3);
                            int i31 = zzp - 4;
                            byte[] bArr9 = new byte[i31];
                            zzedVar.zzH(bArr9, 0, i31);
                            int g7 = g(0, bArr9, zzm14);
                            String str9 = new String(bArr9, 0, g7, a4);
                            int d6 = g7 + d(zzm14);
                            zzafzVar = new zzagf(str8, str9, e(bArr9, d6, g(d6, bArr9, zzm14), a4));
                        }
                    } else {
                        if (i5 == 65) {
                            if (zzm2 == 80) {
                                if (zzm3 == 73) {
                                }
                            }
                        }
                        i4 = zzm;
                        if (i5 == 67) {
                        }
                        if (i5 != 67) {
                        }
                        if (i5 != 67) {
                        }
                        if (i5 != 77) {
                        }
                        String j42 = j(i, i5, zzm2, zzm3, zzm4);
                        byte[] bArr72 = new byte[zzp];
                        zzedVar.zzH(bArr72, 0, zzp);
                        zzafzVar = new zzafz(j42, bArr72);
                    }
                    zzedVar.zzL(zzd);
                    zzaglVar = zzafzVar;
                    e = null;
                    if (zzaglVar == null) {
                    }
                    return zzaglVar;
                }
                String j5 = j(i, 87, zzm2, zzm3, zzm4);
                byte[] bArr10 = new byte[zzp];
                zzedVar.zzH(bArr10, 0, zzp);
                zzafzVar = new zzagw(j5, null, new String(bArr10, 0, i(0, bArr10), StandardCharsets.ISO_8859_1));
                i4 = zzm;
            }
            i4 = zzm;
            zzafzVar = null;
        }
        str = "Id3Decoder";
        zzedVar.zzL(zzd);
        zzaglVar = zzafzVar;
        e = null;
        if (zzaglVar == null) {
        }
        return zzaglVar;
    }

    public static int i(int i, byte[] bArr) {
        while (true) {
            int length = bArr.length;
            if (i >= length) {
                return length;
            }
            if (bArr[i] == 0) {
                return i;
            }
            i++;
        }
    }

    public static String j(int i, int i2, int i3, int i4, int i5) {
        return i == 2 ? String.format(Locale.US, "%c%c%c", Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4)) : String.format(Locale.US, "%c%c%c%c", Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4), Integer.valueOf(i5));
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x009b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x009c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final zzbd zza(byte[] bArr, int i, zzagi zzagiVar, zzafm zzafmVar) {
        fhr fhrVar;
        ArrayList arrayList = new ArrayList();
        zzed zzedVar = new zzed(bArr, i);
        boolean z = false;
        if (zzedVar.zzb() < 10) {
            zzdt.zzf("Id3Decoder", "Data too short to be an ID3 tag");
        } else {
            int zzo = zzedVar.zzo();
            if (zzo == 4801587) {
                int zzm = zzedVar.zzm();
                zzedVar.zzM(1);
                int zzm2 = zzedVar.zzm();
                int zzl = zzedVar.zzl();
                if (zzm == 2) {
                    if ((zzm2 & 64) != 0) {
                        zzdt.zzf("Id3Decoder", "Skipped ID3 tag with majorVersion=2 and undefined compression scheme");
                    }
                    fhrVar = new fhr(zzm, zzl, zzm >= 4 && (zzm2 & TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME) != 0);
                } else {
                    if (zzm == 3) {
                        if ((zzm2 & 64) != 0) {
                            int zzg = zzedVar.zzg();
                            zzedVar.zzM(zzg);
                            zzl -= zzg + 4;
                        }
                    } else if (zzm == 4) {
                        if ((zzm2 & 64) != 0) {
                            int zzl2 = zzedVar.zzl();
                            zzedVar.zzM(zzl2 - 4);
                            zzl -= zzl2;
                        }
                        if ((zzm2 & 16) != 0) {
                            zzl -= 10;
                        }
                    } else {
                        dub.g(zzm, "Skipped ID3 tag with unsupported majorVersion=", "Id3Decoder");
                    }
                    fhrVar = new fhr(zzm, zzl, zzm >= 4 && (zzm2 & TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME) != 0);
                }
                if (fhrVar != null) {
                    return null;
                }
                int i2 = fhrVar.f16803a;
                int zzd = zzedVar.zzd();
                int i3 = i2 == 2 ? 6 : 10;
                int i4 = fhrVar.f16805c;
                if (fhrVar.f16804b) {
                    i4 = b(i4, zzedVar);
                }
                zzedVar.zzK(zzd + i4);
                if (!f(zzedVar, i2, i3, false)) {
                    if (i2 != 4 || !f(zzedVar, 4, i3, true)) {
                        dub.g(i2, "Failed to validate ID3 tag with majorVersion=", "Id3Decoder");
                        return null;
                    }
                    z = true;
                }
                while (zzedVar.zzb() >= i3) {
                    zzagl h = h(i2, zzedVar, z, zzagiVar);
                    if (h != null) {
                        arrayList.add(h);
                    }
                }
                return new zzbd(arrayList);
            }
            zzdt.zzf("Id3Decoder", "Unexpected first three bytes of ID3 tag header: 0x".concat(String.format("%06X", Integer.valueOf(zzo))));
        }
        fhrVar = null;
        if (fhrVar != null) {
        }
    }
}
