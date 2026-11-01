package g;

import com.google.android.gms.internal.ads.zzgfm;
import com.google.android.gms.internal.ads.zzgfr;
import com.google.android.gms.internal.ads.zzgnf;
import com.google.android.gms.internal.ads.zzgnj;
import com.google.android.gms.internal.ads.zzgnm;
import com.google.android.gms.internal.ads.zzgnu;
import com.google.android.gms.internal.ads.zzgos;
import com.google.android.gms.internal.ads.zzgou;
import java.security.GeneralSecurityException;
import java.util.Arrays;

/* loaded from: classes3.dex */
public final class epm implements zzgfm {

    /* renamed from: a, reason: collision with root package name */
    public final zzgou f15942a;

    public /* synthetic */ epm(zzgou zzgouVar) {
        this.f15942a = zzgouVar;
        if (zzgouVar.zzg()) {
            zzgnf zza = zzgnu.zzb().zza();
            zzgnj zza2 = zzgnm.zza(zzgouVar);
            zza.zza(zza2, "aead", "encrypt");
            zza.zza(zza2, "aead", "decrypt");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgfm
    public final byte[] zza(byte[] bArr, byte[] bArr2) {
        int length = bArr.length;
        zzgou zzgouVar = this.f15942a;
        if (length > 5) {
            for (zzgos zzgosVar : zzgouVar.zzf(Arrays.copyOf(bArr, 5))) {
                try {
                    byte[] zza = ((zzgfm) zzgosVar.zzd()).zza(bArr, bArr2);
                    zzgosVar.zza();
                    return zza;
                } catch (GeneralSecurityException unused) {
                }
            }
        }
        for (zzgos zzgosVar2 : zzgouVar.zzf(zzgfr.zza)) {
            try {
                byte[] zza2 = ((zzgfm) zzgosVar2.zzd()).zza(bArr, bArr2);
                zzgosVar2.zza();
                return zza2;
            } catch (GeneralSecurityException unused2) {
            }
        }
        throw new GeneralSecurityException("decryption failed");
    }
}
