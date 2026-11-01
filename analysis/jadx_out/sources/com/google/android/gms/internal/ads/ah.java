package com.google.android.gms.internal.ads;

import g.awf;
import g.bli;
import g.bso;
import g.eer;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;

/* loaded from: classes3.dex */
public class ah extends zzgxp {
    protected final byte[] zza;

    public ah(byte[] bArr) {
        bArr.getClass();
        this.zza = bArr;
    }

    public final boolean a(ah ahVar, int i, int i2) {
        if (i2 > ahVar.zzd()) {
            throw new IllegalArgumentException("Length too large: " + i2 + zzd());
        }
        if (i + i2 > ahVar.zzd()) {
            int zzd = ahVar.zzd();
            StringBuilder z = awf.z(i, i2, "Ran off end of other: ", ", ", ", ");
            z.append(zzd);
            throw new IllegalArgumentException(z.toString());
        }
        byte[] bArr = this.zza;
        byte[] bArr2 = ahVar.zza;
        int b2 = b() + i2;
        int b3 = b();
        int b4 = ahVar.b() + i;
        while (b3 < b2) {
            if (bArr[b3] != bArr2[b4]) {
                return false;
            }
            b3++;
            b4++;
        }
        return true;
    }

    public int b() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzgxp
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof zzgxp) && zzd() == ((zzgxp) obj).zzd()) {
            if (zzd() == 0) {
                return true;
            }
            if (!(obj instanceof ah)) {
                return obj.equals(this);
            }
            ah ahVar = (ah) obj;
            int q = q();
            int q2 = ahVar.q();
            if (q == 0 || q2 == 0 || q == q2) {
                return a(ahVar, 0, zzd());
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzgxp
    public final int f(int i, int i2, int i3) {
        int b2 = b() + i2;
        byte[] bArr = this.zza;
        bso.f12134a.getClass();
        return bli.r(i, bArr, b2, i3 + b2);
    }

    @Override // com.google.android.gms.internal.ads.zzgxp
    public final int g() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzgxp
    public byte h(int i) {
        return this.zza[i];
    }

    @Override // com.google.android.gms.internal.ads.zzgxp
    public final boolean i() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzgxp
    public final String j(Charset charset) {
        return new String(this.zza, b(), zzd(), charset);
    }

    @Override // com.google.android.gms.internal.ads.zzgxp
    public final void k(zzgyc zzgycVar) {
        zzgycVar.zza(this.zza, b(), zzd());
    }

    @Override // com.google.android.gms.internal.ads.zzgxp
    public void l(int i, byte[] bArr, int i2, int i3) {
        System.arraycopy(this.zza, i, bArr, i2, i3);
    }

    @Override // com.google.android.gms.internal.ads.zzgxp
    public final int m(int i, int i2, int i3) {
        int b2 = b() + i2;
        byte[] bArr = this.zza;
        Charset charset = zzgzk.f8688a;
        for (int i4 = b2; i4 < b2 + i3; i4++) {
            i = (i * 31) + bArr[i4];
        }
        return i;
    }

    @Override // com.google.android.gms.internal.ads.zzgxp
    public byte zza(int i) {
        return this.zza[i];
    }

    @Override // com.google.android.gms.internal.ads.zzgxp
    public int zzd() {
        return this.zza.length;
    }

    @Override // com.google.android.gms.internal.ads.zzgxp
    public final zzgxp zzk(int i, int i2) {
        int n = zzgxp.n(i, i2, zzd());
        return n == 0 ? zzgxp.zzb : new eer(this.zza, b() + i, n);
    }

    @Override // com.google.android.gms.internal.ads.zzgxp
    public final zzgxv zzl() {
        return zzgxv.c(b(), this.zza, zzd());
    }

    @Override // com.google.android.gms.internal.ads.zzgxp
    public final ByteBuffer zzn() {
        return ByteBuffer.wrap(this.zza, b(), zzd()).asReadOnlyBuffer();
    }

    @Override // com.google.android.gms.internal.ads.zzgxp
    public final boolean zzp() {
        int b2 = b();
        int zzd = zzd() + b2;
        byte[] bArr = this.zza;
        bso.f12134a.getClass();
        return bli.r(0, bArr, b2, zzd) == 0;
    }
}
