package g;

import com.google.android.gms.internal.ads.zzgxp;

/* loaded from: classes3.dex */
public final class eer extends com.google.android.gms.internal.ads.ah {
    private final int zzc;
    private final int zzd;

    public eer(byte[] bArr, int i, int i2) {
        super(bArr);
        zzgxp.n(i, i + i2, bArr.length);
        this.zzc = i;
        this.zzd = i2;
    }

    @Override // com.google.android.gms.internal.ads.ah
    public final int b() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.ah, com.google.android.gms.internal.ads.zzgxp
    public final byte h(int i) {
        return ((com.google.android.gms.internal.ads.ah) this).zza[this.zzc + i];
    }

    @Override // com.google.android.gms.internal.ads.ah, com.google.android.gms.internal.ads.zzgxp
    public final void l(int i, byte[] bArr, int i2, int i3) {
        System.arraycopy(((com.google.android.gms.internal.ads.ah) this).zza, this.zzc + i, bArr, i2, i3);
    }

    @Override // com.google.android.gms.internal.ads.ah, com.google.android.gms.internal.ads.zzgxp
    public final byte zza(int i) {
        zzgxp.o(i, this.zzd);
        return ((com.google.android.gms.internal.ads.ah) this).zza[this.zzc + i];
    }

    @Override // com.google.android.gms.internal.ads.ah, com.google.android.gms.internal.ads.zzgxp
    public final int zzd() {
        return this.zzd;
    }
}
