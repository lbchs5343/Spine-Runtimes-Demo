package g;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.google.android.gms.internal.ads.zzad;
import com.google.android.gms.internal.ads.zzbw;
import com.google.android.gms.internal.ads.zzgaz;
import com.google.android.gms.internal.ads.zzlo;
import com.google.android.gms.internal.ads.zzxp;
import com.google.android.gms.internal.ads.zzyb;
import j$.util.Objects;

/* loaded from: classes3.dex */
public final class ccx extends cbw {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f12663a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f12664b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f12665c;

    /* renamed from: d, reason: collision with root package name */
    public final int f12666d;

    /* renamed from: e, reason: collision with root package name */
    public final int f12667e;

    /* renamed from: f, reason: collision with root package name */
    public final int f12668f;

    /* renamed from: g, reason: collision with root package name */
    public final int f12669g;
    public final boolean h;
    public final int i;
    public final boolean j;
    public final boolean k;
    public final boolean l;
    public final int m;
    public final zzxp n;

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:108:0x00cf  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x00ba A[EDGE_INSN: B:113:0x00ba->B:50:0x00ba BREAK  A[LOOP:0: B:42:0x009b->B:111:0x00b7], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0080 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0134  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x00db  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public ccx(int i, zzbw zzbwVar, int i2, zzxp zzxpVar, int i3, boolean z) {
        super(i, zzbwVar, i2);
        boolean z2;
        boolean z3;
        int i4;
        zzad zzadVar;
        String str;
        int i5;
        char c2;
        boolean z4;
        zzad zzadVar2;
        int i6;
        int i7;
        float f2;
        int i8;
        this.n = zzxpVar;
        int i9 = 1;
        int i10 = true != zzxpVar.zzE ? 16 : 24;
        if (z) {
            zzad zzadVar3 = this.w;
            int i11 = zzadVar3.zzu;
            float f3 = zzadVar3.zzw;
            if (f3 == -1.0f || f3 <= 2.1474836E9f) {
                z2 = true;
                this.h = z2;
                if (z && (((i6 = (zzadVar2 = this.w).zzu) == -1 || i6 >= 0) && ((i7 = zzadVar2.zzv) == -1 || i7 >= 0))) {
                    f2 = zzadVar2.zzw;
                    if ((f2 != -1.0f || f2 >= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) && ((i8 = zzadVar2.zzj) == -1 || i8 >= 0)) {
                        z3 = true;
                        this.f12665c = z3;
                        this.f12663a = zzlo.zza(i3, false);
                        zzad zzadVar4 = this.w;
                        float f4 = zzadVar4.zzw;
                        this.j = f4 == -1.0f && f4 >= 10.0f;
                        this.f12667e = zzadVar4.zzj;
                        this.f12669g = zzadVar4.zza();
                        int i12 = this.w.zzf;
                        zzgaz zzgazVar = zzyb.f8943a;
                        int i13 = he.UNDEFINED_ITEM_ID;
                        this.m = (i12 == 0 && i12 == 0) ? he.UNDEFINED_ITEM_ID : Integer.bitCount(0);
                        int i14 = this.w.zzf;
                        this.k = (i14 == 0 && (i14 & 1) == 0) ? false : true;
                        i4 = 0;
                        while (true) {
                            if (i4 < zzxpVar.zzl.size()) {
                                String str2 = this.w.zzo;
                                if (str2 != null && str2.equals(zzxpVar.zzl.get(i4))) {
                                    i13 = i4;
                                    break;
                                }
                                i4++;
                            } else {
                                break;
                            }
                        }
                        this.f12668f = i13;
                        this.f12664b = (i3 & MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_500) != 128;
                        this.l = (i3 & 64) != 64;
                        zzadVar = this.w;
                        str = zzadVar.zzo;
                        if (str != null) {
                            i5 = 4;
                            switch (str.hashCode()) {
                                case -1851077871:
                                    if (str.equals("video/dolby-vision")) {
                                        c2 = 0;
                                        break;
                                    }
                                    c2 = 65535;
                                    break;
                                case -1662735862:
                                    if (str.equals("video/av01")) {
                                        c2 = 1;
                                        break;
                                    }
                                    c2 = 65535;
                                    break;
                                case -1662541442:
                                    if (str.equals("video/hevc")) {
                                        c2 = 2;
                                        break;
                                    }
                                    c2 = 65535;
                                    break;
                                case 1331836730:
                                    if (str.equals("video/avc")) {
                                        c2 = 4;
                                        break;
                                    }
                                    c2 = 65535;
                                    break;
                                case 1599127257:
                                    if (str.equals("video/x-vnd.on2.vp9")) {
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
                                i5 = 5;
                            } else if (c2 != 1) {
                                if (c2 == 2) {
                                    i5 = 3;
                                } else if (c2 == 3) {
                                    i5 = 2;
                                } else if (c2 == 4) {
                                    i5 = 1;
                                }
                            }
                            this.i = i5;
                            if ((zzadVar.zzf & 16384) == 0) {
                                zzxp zzxpVar2 = this.n;
                                if (zzlo.zza(i3, zzxpVar2.zzN) && ((z4 = this.h) || zzxpVar2.zzC)) {
                                    if (zzlo.zza(i3, false) && this.f12665c && z4 && zzadVar.zzj != -1 && (i10 & i3) != 0) {
                                        i9 = 2;
                                    }
                                    this.f12666d = i9;
                                }
                            }
                            i9 = 0;
                            this.f12666d = i9;
                        }
                        i5 = 0;
                        this.i = i5;
                        if ((zzadVar.zzf & 16384) == 0) {
                        }
                        i9 = 0;
                        this.f12666d = i9;
                    }
                }
                z3 = false;
                this.f12665c = z3;
                this.f12663a = zzlo.zza(i3, false);
                zzad zzadVar42 = this.w;
                float f42 = zzadVar42.zzw;
                this.j = f42 == -1.0f && f42 >= 10.0f;
                this.f12667e = zzadVar42.zzj;
                this.f12669g = zzadVar42.zza();
                int i122 = this.w.zzf;
                zzgaz zzgazVar2 = zzyb.f8943a;
                int i132 = he.UNDEFINED_ITEM_ID;
                this.m = (i122 == 0 && i122 == 0) ? he.UNDEFINED_ITEM_ID : Integer.bitCount(0);
                int i142 = this.w.zzf;
                this.k = (i142 == 0 && (i142 & 1) == 0) ? false : true;
                i4 = 0;
                while (true) {
                    if (i4 < zzxpVar.zzl.size()) {
                    }
                    i4++;
                }
                this.f12668f = i132;
                this.f12664b = (i3 & MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_500) != 128;
                this.l = (i3 & 64) != 64;
                zzadVar = this.w;
                str = zzadVar.zzo;
                if (str != null) {
                }
                i5 = 0;
                this.i = i5;
                if ((zzadVar.zzf & 16384) == 0) {
                }
                i9 = 0;
                this.f12666d = i9;
            }
        }
        z2 = false;
        this.h = z2;
        if (z) {
            f2 = zzadVar2.zzw;
            if (f2 != -1.0f) {
            }
            z3 = true;
            this.f12665c = z3;
            this.f12663a = zzlo.zza(i3, false);
            zzad zzadVar422 = this.w;
            float f422 = zzadVar422.zzw;
            this.j = f422 == -1.0f && f422 >= 10.0f;
            this.f12667e = zzadVar422.zzj;
            this.f12669g = zzadVar422.zza();
            int i1222 = this.w.zzf;
            zzgaz zzgazVar22 = zzyb.f8943a;
            int i1322 = he.UNDEFINED_ITEM_ID;
            this.m = (i1222 == 0 && i1222 == 0) ? he.UNDEFINED_ITEM_ID : Integer.bitCount(0);
            int i1422 = this.w.zzf;
            this.k = (i1422 == 0 && (i1422 & 1) == 0) ? false : true;
            i4 = 0;
            while (true) {
                if (i4 < zzxpVar.zzl.size()) {
                }
                i4++;
            }
            this.f12668f = i1322;
            this.f12664b = (i3 & MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_500) != 128;
            this.l = (i3 & 64) != 64;
            zzadVar = this.w;
            str = zzadVar.zzo;
            if (str != null) {
            }
            i5 = 0;
            this.i = i5;
            if ((zzadVar.zzf & 16384) == 0) {
            }
            i9 = 0;
            this.f12666d = i9;
        }
        z3 = false;
        this.f12665c = z3;
        this.f12663a = zzlo.zza(i3, false);
        zzad zzadVar4222 = this.w;
        float f4222 = zzadVar4222.zzw;
        this.j = f4222 == -1.0f && f4222 >= 10.0f;
        this.f12667e = zzadVar4222.zzj;
        this.f12669g = zzadVar4222.zza();
        int i12222 = this.w.zzf;
        zzgaz zzgazVar222 = zzyb.f8943a;
        int i13222 = he.UNDEFINED_ITEM_ID;
        this.m = (i12222 == 0 && i12222 == 0) ? he.UNDEFINED_ITEM_ID : Integer.bitCount(0);
        int i14222 = this.w.zzf;
        this.k = (i14222 == 0 && (i14222 & 1) == 0) ? false : true;
        i4 = 0;
        while (true) {
            if (i4 < zzxpVar.zzl.size()) {
            }
            i4++;
        }
        this.f12668f = i13222;
        this.f12664b = (i3 & MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_500) != 128;
        this.l = (i3 & 64) != 64;
        zzadVar = this.w;
        str = zzadVar.zzo;
        if (str != null) {
        }
        i5 = 0;
        this.i = i5;
        if ((zzadVar.zzf & 16384) == 0) {
        }
        i9 = 0;
        this.f12666d = i9;
    }

    @Override // g.cbw
    public final int s() {
        return this.f12666d;
    }

    @Override // g.cbw
    public final /* bridge */ /* synthetic */ boolean t(cbw cbwVar) {
        ccx ccxVar = (ccx) cbwVar;
        if (!Objects.equals(this.w.zzo, ccxVar.w.zzo)) {
            return false;
        }
        boolean z = this.n.zzF;
        return this.f12664b == ccxVar.f12664b && this.l == ccxVar.l;
    }
}
