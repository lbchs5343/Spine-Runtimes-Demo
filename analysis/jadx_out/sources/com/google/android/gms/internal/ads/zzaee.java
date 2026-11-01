package com.google.android.gms.internal.ads;

import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import java.io.EOFException;
import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes3.dex */
public final class zzaee implements zzacr {

    /* renamed from: a, reason: collision with root package name */
    public static final byte[] f4136a;

    /* renamed from: b, reason: collision with root package name */
    public static final byte[] f4137b;

    /* renamed from: c, reason: collision with root package name */
    public static final int[] f4138c = {13, 14, 16, 18, 20, 21, 27, 32, 6, 7, 6, 6, 1, 1, 1, 1};

    /* renamed from: d, reason: collision with root package name */
    public static final int[] f4139d = {18, 24, 33, 37, 41, 47, 51, 59, 61, 6, 1, 1, 1, 1, 1, 1};

    /* renamed from: e, reason: collision with root package name */
    public zzadx f4140e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f4141f;

    /* renamed from: g, reason: collision with root package name */
    public int f4142g;
    public int h;
    public final byte[] i;
    public int j;
    public zzadx k;
    public boolean l;
    public zzadp m;
    public long n;
    public zzacu o;

    static {
        int i = zzen.zza;
        Charset charset = StandardCharsets.UTF_8;
        f4137b = "#!AMR\n".getBytes(charset);
        f4136a = "#!AMR-WB\n".getBytes(charset);
    }

    public zzaee() {
        throw null;
    }

    public zzaee(int i) {
        this.i = new byte[1];
        this.j = -1;
        this.k = new zzacm();
    }

    public final boolean p(zzacs zzacsVar) {
        zzacsVar.zzj();
        byte[] bArr = f4137b;
        int length = bArr.length;
        byte[] bArr2 = new byte[length];
        zzacsVar.zzh(bArr2, 0, length);
        if (Arrays.equals(bArr2, bArr)) {
            this.l = false;
            zzacsVar.zzk(bArr.length);
            return true;
        }
        zzacsVar.zzj();
        byte[] bArr3 = f4136a;
        int length2 = bArr3.length;
        byte[] bArr4 = new byte[length2];
        zzacsVar.zzh(bArr4, 0, length2);
        if (!Arrays.equals(bArr4, bArr3)) {
            return false;
        }
        this.l = true;
        zzacsVar.zzk(bArr3.length);
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0111  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0124 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0125 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0099 A[Catch: EOFException -> 0x009d, TryCatch #0 {EOFException -> 0x009d, blocks: (B:37:0x006f, B:39:0x007b, B:47:0x0099, B:49:0x00a2, B:53:0x009f, B:63:0x00b4, B:64:0x00cc, B:65:0x00cd, B:66:0x00dd), top: B:36:0x006f }] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x009f A[Catch: EOFException -> 0x009d, TryCatch #0 {EOFException -> 0x009d, blocks: (B:37:0x006f, B:39:0x007b, B:47:0x0099, B:49:0x00a2, B:53:0x009f, B:63:0x00b4, B:64:0x00cc, B:65:0x00cd, B:66:0x00dd), top: B:36:0x006f }] */
    @Override // com.google.android.gms.internal.ads.zzacr
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int zzb(zzacs zzacsVar, zzadn zzadnVar) throws IOException {
        char c2;
        zzdb.zzb(this.f4140e);
        int i = zzen.zza;
        if (zzacsVar.zzf() == 0 && !p(zzacsVar)) {
            throw zzbh.zza("Could not find AMR header.", null);
        }
        boolean z = this.f4141f;
        int[] iArr = f4138c;
        int[] iArr2 = f4139d;
        if (!z) {
            this.f4141f = true;
            boolean z2 = this.l;
            String str = true != z2 ? "audio/3gpp" : "audio/amr-wb";
            int i2 = true != z2 ? AVMDLDataLoader.KeyIsLiveSetLoaderType : 16000;
            int i3 = z2 ? iArr2[8] : iArr[7];
            zzadx zzadxVar = this.k;
            zzab zzabVar = new zzab();
            zzabVar.zzZ(str);
            zzabVar.zzQ(i3);
            zzabVar.zzz(1);
            zzabVar.zzaa(i2);
            zzadxVar.zzl(zzabVar.zzaf());
        }
        byte[] bArr = this.i;
        int i4 = this.h;
        if (i4 == 0) {
            try {
                zzacsVar.zzj();
                zzacsVar.zzh(bArr, 0, 1);
                byte b2 = bArr[0];
                if ((b2 & 131) > 0) {
                    throw zzbh.zza("Invalid padding bits for frame header " + ((int) b2), null);
                }
                boolean z3 = this.l;
                int i5 = (b2 >> 3) & 15;
                if (z3) {
                    if (i5 >= 10) {
                        if (i5 > 13) {
                        }
                    }
                    i4 = !z3 ? iArr2[i5] : iArr[i5];
                    this.f4142g = i4;
                    this.h = i4;
                    if (this.j == -1) {
                        this.j = i4;
                    }
                }
                if (!z3) {
                    if (i5 >= 12 && i5 <= 14) {
                    }
                    i4 = !z3 ? iArr2[i5] : iArr[i5];
                    this.f4142g = i4;
                    this.h = i4;
                    if (this.j == -1) {
                    }
                }
                throw zzbh.zza("Illegal AMR " + (true != z3 ? "NB" : "WB") + " frame type " + i5, null);
            } catch (EOFException unused) {
            }
        }
        int zzf = this.k.zzf(zzacsVar, i4, true);
        if (zzf != -1) {
            int i6 = this.h - zzf;
            this.h = i6;
            if (i6 <= 0) {
                this.k.zzs(this.n, 1, this.f4142g, 0, null);
                this.n += 20000;
            }
            c2 = 0;
            if (this.m == null) {
                zzadp zzadpVar = new zzadp(-9223372036854775807L, 0L);
                this.m = zzadpVar;
                this.o.zzO(zzadpVar);
            }
            return c2 != 65535 ? -1 : 0;
        }
        c2 = 65535;
        if (this.m == null) {
        }
        if (c2 != 65535) {
        }
    }

    @Override // com.google.android.gms.internal.ads.zzacr
    public final /* synthetic */ zzacr zzc() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzacr
    public final /* synthetic */ List zzd() {
        return zzfzo.zzn();
    }

    @Override // com.google.android.gms.internal.ads.zzacr
    public final void zze(zzacu zzacuVar) {
        this.o = zzacuVar;
        zzadx zzw = zzacuVar.zzw(0, 1);
        this.f4140e = zzw;
        this.k = zzw;
        zzacuVar.zzD();
    }

    @Override // com.google.android.gms.internal.ads.zzacr
    public final void zzf(long j, long j2) {
        this.n = 0L;
        this.f4142g = 0;
        this.h = 0;
    }

    @Override // com.google.android.gms.internal.ads.zzacr
    public final boolean zzi(zzacs zzacsVar) throws IOException {
        return p(zzacsVar);
    }
}
