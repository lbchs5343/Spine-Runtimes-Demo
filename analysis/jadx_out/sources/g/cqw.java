package g;

import android.graphics.Path;
import android.graphics.PathMeasure;
import com.google.android.gms.internal.ads.zzglk;
import com.google.android.gms.internal.ads.zzgmg;
import com.google.android.gms.internal.ads.zzgmj;
import com.google.android.gms.internal.ads.zzgoz;
import com.google.android.gms.internal.ads.zzgwc;
import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.security.Provider;
import java.security.SecureRandom;
import java.text.SimpleDateFormat;
import java.util.Locale;
import java.util.Random;
import javax.crypto.Cipher;

/* loaded from: classes3.dex */
public final class cqw extends ThreadLocal {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f13352a;

    public /* synthetic */ cqw(int i) {
        this.f13352a = i;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(9:3|(4:5|6|7|8)|12|13|14|(4:17|18|7|8)|16|7|8) */
    @Override // java.lang.ThreadLocal
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object initialValue() {
        SecureRandom secureRandom;
        Provider provider = null;
        switch (this.f13352a) {
            case 0:
                return new StringBuilder("Picasso-");
            case 1:
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss 'GMT'", Locale.US);
                simpleDateFormat.setLenient(false);
                simpleDateFormat.setTimeZone(erq.f16042b);
                return simpleDateFormat;
            case 2:
                return new Random();
            case 3:
                return new StringBuilder();
            case 4:
                return new PathMeasure();
            case 5:
                return new Path();
            case 6:
                return new Path();
            case 7:
                return new float[4];
            case 8:
                return ByteBuffer.allocate(32);
            case 9:
                return 0L;
            case 10:
                try {
                    return (Cipher) zzgwc.zza.zza("AES/GCM/NoPadding");
                } catch (GeneralSecurityException e2) {
                    throw new IllegalStateException(e2);
                }
            case 11:
                try {
                    Cipher cipher = (Cipher) zzgwc.zza.zza("ChaCha20-Poly1305");
                    if (zzglk.g(cipher)) {
                        return cipher;
                    }
                    return null;
                } catch (GeneralSecurityException unused) {
                    return null;
                }
            case 12:
                try {
                    Cipher cipher2 = (Cipher) zzgwc.zza.zza("AES/GCM-SIV/NoPadding");
                    if (zzgmg.i(cipher2)) {
                        return cipher2;
                    }
                    return null;
                } catch (GeneralSecurityException e3) {
                    throw new IllegalStateException(e3);
                }
            case 13:
                cqw cqwVar = zzgoz.f8548a;
                Provider zza = zzgmj.zza();
                if (zza != null) {
                    try {
                        secureRandom = SecureRandom.getInstance("SHA1PRNG", zza);
                    } catch (GeneralSecurityException unused2) {
                    }
                    secureRandom.nextLong();
                    return secureRandom;
                }
                provider = (Provider) Class.forName("org.conscrypt.Conscrypt").getMethod("newProvider", null).invoke(null, null);
                if (provider != null) {
                    try {
                        secureRandom = SecureRandom.getInstance("SHA1PRNG", provider);
                    } catch (GeneralSecurityException unused3) {
                    }
                    secureRandom.nextLong();
                    return secureRandom;
                }
                secureRandom = new SecureRandom();
                secureRandom.nextLong();
                return secureRandom;
            case 14:
                try {
                    return (Cipher) zzgwc.zza.zza("AES/CTR/NoPadding");
                } catch (GeneralSecurityException e4) {
                    throw new IllegalStateException(e4);
                }
            case 15:
                try {
                    return (Cipher) zzgwc.zza.zza("AES/ECB/NOPADDING");
                } catch (GeneralSecurityException e5) {
                    throw new IllegalStateException(e5);
                }
            case 16:
                try {
                    return (Cipher) zzgwc.zza.zza("AES/CTR/NOPADDING");
                } catch (GeneralSecurityException e6) {
                    throw new IllegalStateException(e6);
                }
            default:
                try {
                    return (Cipher) zzgwc.zza.zza("AES/ECB/NoPadding");
                } catch (GeneralSecurityException e7) {
                    throw new IllegalStateException(e7);
                }
        }
    }
}
