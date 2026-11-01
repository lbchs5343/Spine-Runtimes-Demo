package com.google.android.gms.internal.ads;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.util.SparseArray;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import g.aji;
import g.arj;
import g.buh;
import g.ca;
import g.cgk;
import g.dir;
import g.gvg;
import g.gxo;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public final class zzaku implements zzaki {

    /* renamed from: a, reason: collision with root package name */
    public static final byte[] f4224a = {0, 7, 8, 15};

    /* renamed from: b, reason: collision with root package name */
    public static final byte[] f4225b = {0, 119, -120, -1};

    /* renamed from: c, reason: collision with root package name */
    public static final byte[] f4226c = {0, 17, 34, 51, 68, 85, 102, 119, -120, -103, -86, -69, -52, -35, -18, -1};

    /* renamed from: d, reason: collision with root package name */
    public final dir f4227d;

    /* renamed from: e, reason: collision with root package name */
    public final arj f4228e;

    /* renamed from: f, reason: collision with root package name */
    public final Paint f4229f;

    /* renamed from: g, reason: collision with root package name */
    public final gxo f4230g;
    public final Paint h;
    public final Canvas i;
    public Bitmap j;

    public zzaku(List list) {
        zzed zzedVar = new zzed((byte[]) list.get(0));
        int zzq = zzedVar.zzq();
        int zzq2 = zzedVar.zzq();
        Paint paint = new Paint();
        this.f4229f = paint;
        paint.setStyle(Paint.Style.FILL_AND_STROKE);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC));
        paint.setPathEffect(null);
        Paint paint2 = new Paint();
        this.h = paint2;
        paint2.setStyle(Paint.Style.FILL);
        paint2.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OVER));
        paint2.setPathEffect(null);
        this.i = new Canvas();
        this.f4227d = new dir(719, 575, 0, 719, 0, 575);
        this.f4228e = new arj(0, new int[]{0, -1, -16777216, -8421505}, n(), q());
        this.f4230g = new gxo(zzq, zzq2);
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x016e  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0140 A[LOOP:2: B:37:0x00a6->B:49:0x0140, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x013b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0167  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x01cc A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:95:0x01fb A[LOOP:3: B:83:0x0161->B:95:0x01fb, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:96:0x01f4 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void k(byte[] bArr, int[] iArr, int i, int i2, int i3, Paint paint, Canvas canvas) {
        byte[] bArr2;
        byte[] bArr3;
        boolean z;
        int zzd;
        int i4;
        int i5;
        boolean z2;
        int zzd2;
        int i6;
        boolean z3;
        int i7;
        int zzd3;
        int zzd4;
        int i8;
        boolean z4;
        int zzd5;
        Paint paint2 = paint;
        zzec zzecVar = new zzec(bArr, bArr.length);
        int i9 = i2;
        int i10 = i3;
        byte[] bArr4 = null;
        byte[] bArr5 = null;
        byte[] bArr6 = null;
        while (zzecVar.zza() != 0) {
            int zzd6 = zzecVar.zzd(8);
            if (zzd6 != 240) {
                int i11 = 4;
                int i12 = 2;
                switch (zzd6) {
                    case 16:
                        int i13 = 1;
                        if (i != 3) {
                            if (i != 2) {
                                bArr2 = null;
                            } else if (bArr6 == null) {
                                bArr3 = f4224a;
                                bArr2 = bArr3;
                            } else {
                                bArr2 = bArr6;
                            }
                            z = false;
                            while (true) {
                                zzd = zzecVar.zzd(2);
                                if (zzd != 0) {
                                }
                                i5 = 1;
                                if (i5 != 0) {
                                }
                                i6 = i9;
                                i9 = i6 + i5;
                                if (z2) {
                                }
                                paint2 = paint;
                                z = z2;
                                i13 = 1;
                            }
                        } else if (bArr4 == null) {
                            bArr3 = f4225b;
                            bArr2 = bArr3;
                            z = false;
                            while (true) {
                                zzd = zzecVar.zzd(2);
                                if (zzd != 0) {
                                    i4 = zzd;
                                    z2 = z;
                                } else {
                                    if (zzecVar.zzp()) {
                                        zzd2 = zzecVar.zzd(3) + 3;
                                        i4 = zzecVar.zzd(2);
                                    } else if (zzecVar.zzp()) {
                                        z2 = z;
                                        i4 = 0;
                                    } else {
                                        int zzd7 = zzecVar.zzd(2);
                                        if (zzd7 == 0) {
                                            i4 = 0;
                                            i5 = 0;
                                            z2 = true;
                                        } else if (zzd7 == i13) {
                                            z2 = z;
                                            i4 = 0;
                                            i5 = 2;
                                        } else if (zzd7 == 2) {
                                            z2 = z;
                                            i5 = zzecVar.zzd(4) + 12;
                                            i4 = zzecVar.zzd(2);
                                        } else if (zzd7 != 3) {
                                            z2 = z;
                                            i4 = 0;
                                            i5 = 0;
                                        } else {
                                            zzd2 = zzecVar.zzd(8) + 29;
                                            i4 = zzecVar.zzd(2);
                                        }
                                        if (i5 != 0 || paint2 == null) {
                                            i6 = i9;
                                        } else {
                                            int i14 = i10 + 1;
                                            float f2 = i10;
                                            if (bArr2 != 0) {
                                                i4 = bArr2[i4];
                                            }
                                            paint2.setColor(iArr[i4]);
                                            i6 = i9;
                                            canvas.drawRect(i9, f2, i9 + i5, i14, paint2);
                                        }
                                        i9 = i6 + i5;
                                        if (z2) {
                                            zzecVar.zzf();
                                            break;
                                        } else {
                                            paint2 = paint;
                                            z = z2;
                                            i13 = 1;
                                        }
                                    }
                                    i5 = zzd2;
                                    z2 = z;
                                    if (i5 != 0) {
                                    }
                                    i6 = i9;
                                    i9 = i6 + i5;
                                    if (z2) {
                                    }
                                }
                                i5 = 1;
                                if (i5 != 0) {
                                }
                                i6 = i9;
                                i9 = i6 + i5;
                                if (z2) {
                                }
                            }
                        } else {
                            bArr2 = bArr4;
                            z = false;
                            while (true) {
                                zzd = zzecVar.zzd(2);
                                if (zzd != 0) {
                                }
                                i5 = 1;
                                if (i5 != 0) {
                                }
                                i6 = i9;
                                i9 = i6 + i5;
                                if (z2) {
                                }
                                paint2 = paint;
                                z = z2;
                                i13 = 1;
                            }
                        }
                    case 17:
                        byte[] bArr7 = i == 3 ? bArr5 == null ? f4226c : bArr5 : null;
                        boolean z5 = false;
                        while (true) {
                            int zzd8 = zzecVar.zzd(i11);
                            if (zzd8 != 0) {
                                z3 = z5;
                            } else {
                                if (zzecVar.zzp()) {
                                    if (zzecVar.zzp()) {
                                        int zzd9 = zzecVar.zzd(i12);
                                        if (zzd9 == 0) {
                                            z3 = z5;
                                            zzd8 = 0;
                                        } else if (zzd9 == 1) {
                                            z3 = z5;
                                            zzd8 = 0;
                                            i7 = 2;
                                        } else if (zzd9 == i12) {
                                            zzd3 = zzecVar.zzd(i11) + 9;
                                            zzd4 = zzecVar.zzd(i11);
                                        } else if (zzd9 != 3) {
                                            z3 = z5;
                                            zzd8 = 0;
                                            i7 = 0;
                                        } else {
                                            zzd3 = zzecVar.zzd(8) + 25;
                                            zzd4 = zzecVar.zzd(i11);
                                        }
                                    } else {
                                        zzd3 = zzecVar.zzd(i12) + i11;
                                        zzd4 = zzecVar.zzd(i11);
                                    }
                                    i7 = zzd3;
                                    z3 = z5;
                                    zzd8 = zzd4;
                                } else {
                                    int zzd10 = zzecVar.zzd(3);
                                    if (zzd10 != 0) {
                                        i7 = zzd10 + 2;
                                        z3 = z5;
                                        zzd8 = 0;
                                    } else {
                                        zzd8 = 0;
                                        i7 = 0;
                                        z3 = true;
                                    }
                                }
                                if (i7 != 0 || paint2 == null) {
                                    i8 = i9;
                                } else {
                                    int i15 = i10 + 1;
                                    float f3 = i10;
                                    if (bArr7 != 0) {
                                        zzd8 = bArr7[zzd8];
                                    }
                                    paint2.setColor(iArr[zzd8]);
                                    i8 = i9;
                                    canvas.drawRect(i9, f3, i9 + i7, i15, paint2);
                                }
                                i9 = i8 + i7;
                                if (z3) {
                                    z5 = z3;
                                    i12 = 2;
                                    i11 = 4;
                                } else {
                                    zzecVar.zzf();
                                    continue;
                                }
                            }
                            i7 = 1;
                            if (i7 != 0) {
                            }
                            i8 = i9;
                            i9 = i8 + i7;
                            if (z3) {
                            }
                        }
                    case 18:
                        int i16 = i9;
                        boolean z6 = false;
                        while (true) {
                            int zzd11 = zzecVar.zzd(8);
                            if (zzd11 != 0) {
                                z4 = z6;
                                zzd5 = 1;
                            } else if (zzecVar.zzp()) {
                                z4 = z6;
                                zzd5 = zzecVar.zzd(7);
                                zzd11 = zzecVar.zzd(8);
                            } else {
                                int zzd12 = zzecVar.zzd(7);
                                if (zzd12 != 0) {
                                    z4 = z6;
                                    zzd5 = zzd12;
                                    zzd11 = 0;
                                } else {
                                    zzd11 = 0;
                                    z4 = true;
                                    zzd5 = 0;
                                }
                            }
                            if (zzd5 != 0 && paint2 != null) {
                                paint2.setColor(iArr[zzd11]);
                                canvas.drawRect(i16, i10, i16 + zzd5, i10 + 1, paint2);
                            }
                            i16 += zzd5;
                            if (z4) {
                                i9 = i16;
                                continue;
                            } else {
                                z6 = z4;
                            }
                        }
                    default:
                        switch (zzd6) {
                            case 32:
                                bArr6 = l(4, 4, zzecVar);
                                break;
                            case 33:
                                bArr4 = l(4, 8, zzecVar);
                                break;
                            case 34:
                                bArr5 = l(16, 8, zzecVar);
                                break;
                            default:
                                continue;
                        }
                }
            } else {
                i10 += 2;
                i9 = i2;
            }
            paint2 = paint;
        }
    }

    public static byte[] l(int i, int i2, zzec zzecVar) {
        byte[] bArr = new byte[i];
        for (int i3 = 0; i3 < i; i3++) {
            bArr[i3] = (byte) zzecVar.zzd(i2);
        }
        return bArr;
    }

    public static int m(int i, int i2, int i3, int i4) {
        return (i << 24) | (i2 << 16) | (i3 << 8) | i4;
    }

    public static int[] n() {
        int[] iArr = new int[16];
        iArr[0] = 0;
        for (int i = 1; i < 16; i++) {
            int i2 = i & 4;
            int i3 = i & 2;
            int i4 = i & 1;
            if (i < 8) {
                iArr[i] = m(MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE, 1 != i4 ? 0 : MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE, i3 != 0 ? MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE : 0, i2 != 0 ? MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE : 0);
            } else {
                int i5 = TTDownloadField.CALL_DOWNLOAD_MODEL_SET_EXTRA_VALUE;
                int i6 = 1 != i4 ? 0 : TTDownloadField.CALL_DOWNLOAD_MODEL_SET_EXTRA_VALUE;
                int i7 = i3 != 0 ? TTDownloadField.CALL_DOWNLOAD_MODEL_SET_EXTRA_VALUE : 0;
                if (i2 == 0) {
                    i5 = 0;
                }
                iArr[i] = m(MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE, i6, i7, i5);
            }
        }
        return iArr;
    }

    public static arj o(zzec zzecVar, int i) {
        int zzd;
        int zzd2;
        int i2;
        int i3;
        int i4 = 8;
        int zzd3 = zzecVar.zzd(8);
        zzecVar.zzn(8);
        int[] iArr = {0, -1, -16777216, -8421505};
        int[] n = n();
        int[] q = q();
        int i5 = i - 2;
        while (i5 > 0) {
            int zzd4 = zzecVar.zzd(i4);
            int zzd5 = zzecVar.zzd(i4);
            int[] iArr2 = (zzd5 & TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME) != 0 ? iArr : (zzd5 & 64) != 0 ? n : q;
            if ((zzd5 & 1) != 0) {
                i2 = zzecVar.zzd(i4);
                i3 = zzecVar.zzd(i4);
                zzd = zzecVar.zzd(i4);
                zzd2 = zzecVar.zzd(i4);
                i5 -= 6;
            } else {
                int zzd6 = zzecVar.zzd(6) << 2;
                int zzd7 = zzecVar.zzd(4) << 4;
                i5 -= 4;
                zzd = zzecVar.zzd(4) << 4;
                zzd2 = zzecVar.zzd(2) << 6;
                i2 = zzd6;
                i3 = zzd7;
            }
            if (i2 == 0) {
                zzd2 = MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE;
            }
            if (i2 == 0) {
                zzd = 0;
            }
            if (i2 == 0) {
                i3 = 0;
            }
            double d2 = i2;
            double d3 = i3 - 128;
            double d4 = zzd - 128;
            iArr2[zzd4] = m((byte) (255 - (zzd2 & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE)), Math.max(0, Math.min((int) ((1.402d * d3) + d2), MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE)), Math.max(0, Math.min((int) ((d2 - (0.34414d * d4)) - (d3 * 0.71414d)), MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE)), Math.max(0, Math.min((int) ((d4 * 1.772d) + d2), MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE)));
            zzd3 = zzd3;
            q = q;
            i4 = 8;
        }
        return new arj(zzd3, iArr, n, q);
    }

    public static cgk p(zzec zzecVar) {
        byte[] bArr;
        int zzd = zzecVar.zzd(16);
        zzecVar.zzn(4);
        int zzd2 = zzecVar.zzd(2);
        boolean zzp = zzecVar.zzp();
        zzecVar.zzn(1);
        byte[] bArr2 = zzen.zzf;
        if (zzd2 == 1) {
            zzecVar.zzn(zzecVar.zzd(8) * 16);
        } else if (zzd2 == 0) {
            int zzd3 = zzecVar.zzd(16);
            int zzd4 = zzecVar.zzd(16);
            if (zzd3 > 0) {
                bArr2 = new byte[zzd3];
                zzecVar.zzi(bArr2, 0, zzd3);
            }
            if (zzd4 > 0) {
                bArr = new byte[zzd4];
                zzecVar.zzi(bArr, 0, zzd4);
                return new cgk(zzd, zzp, bArr2, bArr);
            }
        }
        bArr = bArr2;
        return new cgk(zzd, zzp, bArr2, bArr);
    }

    public static int[] q() {
        int[] iArr = new int[256];
        iArr[0] = 0;
        for (int i = 0; i < 256; i++) {
            int i2 = MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE;
            if (i < 8) {
                int i3 = i & 2;
                int i4 = i & 4;
                int i5 = 1 != (i & 1) ? 0 : MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE;
                int i6 = i3 != 0 ? MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE : 0;
                if (i4 == 0) {
                    i2 = 0;
                }
                iArr[i] = m(63, i5, i6, i2);
            } else {
                int i7 = i & 136;
                if (i7 == 0) {
                    iArr[i] = m(MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE, (1 != (i & 1) ? 0 : 85) + ((i & 16) != 0 ? 170 : 0), ((i & 2) != 0 ? 85 : 0) + ((i & 32) != 0 ? 170 : 0), ((i & 4) == 0 ? 0 : 85) + ((i & 64) == 0 ? 0 : 170));
                } else if (i7 == 8) {
                    iArr[i] = m(TTDownloadField.CALL_DOWNLOAD_MODEL_SET_EXTRA_VALUE, (1 != (i & 1) ? 0 : 85) + ((i & 16) != 0 ? 170 : 0), ((i & 2) != 0 ? 85 : 0) + ((i & 32) != 0 ? 170 : 0), ((i & 4) == 0 ? 0 : 85) + ((i & 64) == 0 ? 0 : 170));
                } else if (i7 == 128) {
                    iArr[i] = m(MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE, (1 != (i & 1) ? 0 : 43) + TTDownloadField.CALL_DOWNLOAD_MODEL_SET_EXTRA_VALUE + ((i & 16) != 0 ? 85 : 0), ((i & 2) != 0 ? 43 : 0) + TTDownloadField.CALL_DOWNLOAD_MODEL_SET_EXTRA_VALUE + ((i & 32) != 0 ? 85 : 0), ((i & 4) == 0 ? 0 : 43) + TTDownloadField.CALL_DOWNLOAD_MODEL_SET_EXTRA_VALUE + ((i & 64) == 0 ? 0 : 85));
                } else if (i7 == 136) {
                    iArr[i] = m(MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE, (1 != (i & 1) ? 0 : 43) + ((i & 16) != 0 ? 85 : 0), ((i & 2) != 0 ? 43 : 0) + ((i & 32) != 0 ? 85 : 0), ((i & 4) == 0 ? 0 : 43) + ((i & 64) == 0 ? 0 : 85));
                }
            }
        }
        return iArr;
    }

    @Override // com.google.android.gms.internal.ads.zzaki
    public final void zza(byte[] bArr, int i, int i2, zzakh zzakhVar, zzdg zzdgVar) {
        gxo gxoVar;
        zzaka zzakaVar;
        int i3;
        int i4;
        gxo gxoVar2;
        aji ajiVar;
        int i5;
        int i6;
        int i7;
        int i8;
        ArrayList arrayList;
        int i9;
        aji ajiVar2;
        int i10;
        int i11;
        int i12;
        int i13;
        zzec zzecVar = new zzec(bArr, i + i2);
        zzecVar.zzl(i);
        while (true) {
            int zza = zzecVar.zza();
            gxoVar = this.f4230g;
            if (zza >= 48 && zzecVar.zzd(8) == 15) {
                int zzd = zzecVar.zzd(8);
                int zzd2 = zzecVar.zzd(16);
                int zzd3 = zzecVar.zzd(16);
                int zzb = zzecVar.zzb() + zzd3;
                if (zzd3 * 8 > zzecVar.zza()) {
                    zzdt.zzf("DvbParser", "Data field length exceeds limit");
                    zzecVar.zzn(zzecVar.zza());
                } else {
                    switch (zzd) {
                        case 16:
                            if (zzd2 == gxoVar.f18961d) {
                                gvg gvgVar = gxoVar.f18963f;
                                zzecVar.zzd(8);
                                int zzd4 = zzecVar.zzd(4);
                                int zzd5 = zzecVar.zzd(2);
                                zzecVar.zzn(2);
                                SparseArray sparseArray = new SparseArray();
                                for (int i14 = zzd3 - 2; i14 > 0; i14 -= 6) {
                                    int zzd6 = zzecVar.zzd(8);
                                    zzecVar.zzn(8);
                                    sparseArray.put(zzd6, new ca(zzecVar.zzd(16), zzecVar.zzd(16)));
                                }
                                gvg gvgVar2 = new gvg(zzd4, zzd5, sparseArray);
                                if (zzd5 != 0) {
                                    gxoVar.f18963f = gvgVar2;
                                    gxoVar.h.clear();
                                    gxoVar.f18959b.clear();
                                    gxoVar.f18960c.clear();
                                    break;
                                } else if (gvgVar != null && gvgVar.f18813e != zzd4) {
                                    gxoVar.f18963f = gvgVar2;
                                    break;
                                }
                            }
                            break;
                        case 17:
                            gvg gvgVar3 = gxoVar.f18963f;
                            SparseArray sparseArray2 = gxoVar.h;
                            if (zzd2 == gxoVar.f18961d && gvgVar3 != null) {
                                int zzd7 = zzecVar.zzd(8);
                                zzecVar.zzn(4);
                                boolean zzp = zzecVar.zzp();
                                zzecVar.zzn(3);
                                int zzd8 = zzecVar.zzd(16);
                                int zzd9 = zzecVar.zzd(16);
                                zzecVar.zzd(3);
                                int zzd10 = zzecVar.zzd(3);
                                zzecVar.zzn(2);
                                int zzd11 = zzecVar.zzd(8);
                                int zzd12 = zzecVar.zzd(8);
                                int zzd13 = zzecVar.zzd(4);
                                int zzd14 = zzecVar.zzd(2);
                                zzecVar.zzn(2);
                                int i15 = zzd3 - 10;
                                SparseArray sparseArray3 = new SparseArray();
                                while (i15 > 0) {
                                    int zzd15 = zzecVar.zzd(16);
                                    int zzd16 = zzecVar.zzd(2);
                                    zzecVar.zzd(2);
                                    int zzd17 = zzecVar.zzd(12);
                                    zzecVar.zzn(4);
                                    int zzd18 = zzecVar.zzd(12);
                                    int i16 = i15 - 6;
                                    if (zzd16 == 1 || zzd16 == 2) {
                                        zzecVar.zzd(8);
                                        zzecVar.zzd(8);
                                        i15 -= 8;
                                    } else {
                                        i15 = i16;
                                    }
                                    sparseArray3.put(zzd15, new buh(zzd17, zzd18));
                                }
                                aji ajiVar3 = new aji(zzd7, zzp, zzd8, zzd9, zzd10, zzd11, zzd12, zzd13, zzd14, sparseArray3);
                                if (gvgVar3.f18810b == 0 && (ajiVar2 = (aji) sparseArray2.get(zzd7)) != null) {
                                    int i17 = 0;
                                    while (true) {
                                        SparseArray sparseArray4 = ajiVar2.h;
                                        if (i17 < sparseArray4.size()) {
                                            ajiVar3.h.put(sparseArray4.keyAt(i17), (buh) sparseArray4.valueAt(i17));
                                            i17++;
                                        }
                                    }
                                }
                                sparseArray2.put(ajiVar3.f10319d, ajiVar3);
                                break;
                            }
                            break;
                        case 18:
                            if (zzd2 == gxoVar.f18961d) {
                                arj o = o(zzecVar, zzd3);
                                gxoVar.f18959b.put(o.f10709b, o);
                                break;
                            } else if (zzd2 == gxoVar.f18964g) {
                                arj o2 = o(zzecVar, zzd3);
                                gxoVar.f18962e.put(o2.f10709b, o2);
                                break;
                            }
                            break;
                        case 19:
                            if (zzd2 == gxoVar.f18961d) {
                                cgk p = p(zzecVar);
                                gxoVar.f18960c.put(p.f12842b, p);
                                break;
                            } else if (zzd2 == gxoVar.f18964g) {
                                cgk p2 = p(zzecVar);
                                gxoVar.i.put(p2.f12842b, p2);
                                break;
                            }
                            break;
                        case 20:
                            if (zzd2 == gxoVar.f18961d) {
                                zzecVar.zzn(4);
                                boolean zzp2 = zzecVar.zzp();
                                zzecVar.zzn(3);
                                int zzd19 = zzecVar.zzd(16);
                                int zzd20 = zzecVar.zzd(16);
                                if (zzp2) {
                                    int zzd21 = zzecVar.zzd(16);
                                    i10 = zzecVar.zzd(16);
                                    i13 = zzecVar.zzd(16);
                                    i11 = zzecVar.zzd(16);
                                    i12 = zzd21;
                                } else {
                                    i10 = zzd19;
                                    i11 = zzd20;
                                    i12 = 0;
                                    i13 = 0;
                                }
                                gxoVar.f18958a = new dir(zzd19, zzd20, i12, i10, i13, i11);
                                break;
                            }
                            break;
                    }
                    zzecVar.zzo(zzb - zzecVar.zzb());
                }
            }
        }
        gvg gvgVar4 = gxoVar.f18963f;
        if (gvgVar4 == null) {
            zzakaVar = new zzaka(zzfzo.zzn(), -9223372036854775807L, -9223372036854775807L);
        } else {
            dir dirVar = gxoVar.f18958a;
            if (dirVar == null) {
                dirVar = this.f4227d;
            }
            Bitmap bitmap = this.j;
            Canvas canvas = this.i;
            if (bitmap == null || dirVar.f14241c + 1 != bitmap.getWidth() || dirVar.f14243e + 1 != this.j.getHeight()) {
                Bitmap createBitmap = Bitmap.createBitmap(dirVar.f14241c + 1, dirVar.f14243e + 1, Bitmap.Config.ARGB_8888);
                this.j = createBitmap;
                canvas.setBitmap(createBitmap);
            }
            ArrayList arrayList2 = new ArrayList();
            SparseArray sparseArray5 = (SparseArray) gvgVar4.f18811c;
            int i18 = 0;
            while (i18 < sparseArray5.size()) {
                canvas.save();
                ca caVar = (ca) sparseArray5.valueAt(i18);
                aji ajiVar4 = (aji) gxoVar.h.get(sparseArray5.keyAt(i18));
                int i19 = caVar.f12532a;
                int i20 = dirVar.f14244f;
                int i21 = dirVar.f14243e;
                int i22 = dirVar.f14241c;
                int i23 = i19 + i20;
                int i24 = caVar.f12533b + dirVar.f14240b;
                int i25 = ajiVar4.i;
                int i26 = ajiVar4.f10320e;
                int i27 = ajiVar4.f10317b;
                SparseArray sparseArray6 = sparseArray5;
                int i28 = i24 + i27;
                int i29 = i25;
                canvas.clipRect(i23, i24, Math.min(i23 + i25, dirVar.f14239a), Math.min(i28, dirVar.f14242d));
                arj arjVar = (arj) gxoVar.f18959b.get(i26);
                if (arjVar == null && (arjVar = (arj) gxoVar.f18962e.get(i26)) == null) {
                    arjVar = this.f4228e;
                }
                SparseArray sparseArray7 = ajiVar4.h;
                dir dirVar2 = dirVar;
                int i30 = 0;
                while (i30 < sparseArray7.size()) {
                    int keyAt = sparseArray7.keyAt(i30);
                    SparseArray sparseArray8 = sparseArray7;
                    buh buhVar = (buh) sparseArray7.valueAt(i30);
                    int i31 = i24;
                    cgk cgkVar = (cgk) gxoVar.f18960c.get(keyAt);
                    if (cgkVar == null) {
                        cgkVar = (cgk) gxoVar.i.get(keyAt);
                    }
                    cgk cgkVar2 = cgkVar;
                    if (cgkVar2 != null) {
                        Paint paint = cgkVar2.f12843c ? null : this.f4229f;
                        int i32 = i23;
                        int i33 = ajiVar4.f10318c;
                        gxoVar2 = gxoVar;
                        int i34 = i32 + buhVar.f12215a;
                        int i35 = i31 + buhVar.f12216b;
                        i7 = i22;
                        Paint paint2 = paint;
                        arrayList = arrayList2;
                        i9 = i32;
                        i6 = i21;
                        i8 = i31;
                        aji ajiVar5 = ajiVar4;
                        int[] iArr = i33 == 3 ? arjVar.f10708a : i33 == 2 ? arjVar.f10711d : arjVar.f10710c;
                        ajiVar = ajiVar5;
                        i5 = i30;
                        int i36 = i29;
                        i3 = i18;
                        i4 = i36;
                        k(cgkVar2.f12844d, iArr, i33, i34, i35, paint2, canvas);
                        k(cgkVar2.f12841a, iArr, i33, i34, i35 + 1, paint2, canvas);
                    } else {
                        int i37 = i29;
                        i3 = i18;
                        i4 = i37;
                        gxoVar2 = gxoVar;
                        ajiVar = ajiVar4;
                        i5 = i30;
                        i6 = i21;
                        i7 = i22;
                        i8 = i31;
                        arrayList = arrayList2;
                        i9 = i23;
                    }
                    i30 = i5 + 1;
                    int i38 = i3;
                    i29 = i4;
                    i18 = i38;
                    i23 = i9;
                    ajiVar4 = ajiVar;
                    i24 = i8;
                    arrayList2 = arrayList;
                    sparseArray7 = sparseArray8;
                    i21 = i6;
                    gxoVar = gxoVar2;
                    i22 = i7;
                }
                int i39 = i29;
                int i40 = i18;
                ArrayList arrayList3 = arrayList2;
                gxo gxoVar3 = gxoVar;
                int i41 = i24;
                aji ajiVar6 = ajiVar4;
                int i42 = i23;
                int i43 = i21;
                int i44 = i22;
                float f2 = i41;
                float f3 = i42;
                if (ajiVar6.f10322g) {
                    int i45 = ajiVar6.f10318c;
                    int i46 = i45 == 3 ? arjVar.f10708a[ajiVar6.j] : i45 == 2 ? arjVar.f10711d[ajiVar6.f10316a] : arjVar.f10710c[ajiVar6.f10321f];
                    Paint paint3 = this.h;
                    paint3.setColor(i46);
                    canvas.drawRect(f3, f2, i42 + i39, i28, paint3);
                }
                zzcr zzcrVar = new zzcr();
                zzcrVar.zzc(Bitmap.createBitmap(this.j, i42, i41, i39, i27));
                float f4 = i44;
                zzcrVar.zzh(f3 / f4);
                zzcrVar.zzi(0);
                float f5 = i43;
                zzcrVar.zze(f2 / f5, 0);
                zzcrVar.zzf(0);
                zzcrVar.zzk(i39 / f4);
                zzcrVar.zzd(i27 / f5);
                arrayList3.add(zzcrVar.zzp());
                canvas.drawColor(0, PorterDuff.Mode.CLEAR);
                canvas.restore();
                i18 = i40 + 1;
                arrayList2 = arrayList3;
                sparseArray5 = sparseArray6;
                dirVar = dirVar2;
                gxoVar = gxoVar3;
            }
            zzakaVar = new zzaka(arrayList2, -9223372036854775807L, -9223372036854775807L);
        }
        zzdgVar.zza(zzakaVar);
    }
}
