package g;

import com.google.android.gms.internal.ads.zzgjd;
import com.google.android.gms.internal.ads.zzgje;
import com.google.android.gms.internal.ads.zzgjf;
import com.google.android.gms.internal.ads.zzgmq;
import com.google.android.gms.internal.ads.zzgms;
import com.google.android.gms.internal.ads.zzgmu;
import com.google.android.gms.internal.ads.zzgmw;
import com.google.android.gms.internal.ads.zzgoc;
import com.google.android.gms.internal.ads.zzgoe;
import com.google.android.gms.internal.ads.zzgog;
import com.google.android.gms.internal.ads.zzgoi;
import com.google.android.gms.internal.ads.zzgow;
import com.google.android.gms.internal.ads.zzgox;
import com.google.android.gms.internal.ads.zzgpj;
import com.google.android.gms.internal.ads.zzgve;
import com.google.android.gms.internal.ads.zzgwu;
import g.ggf;
import java.security.GeneralSecurityException;

/* loaded from: classes3.dex */
public abstract class ggf {

    /* renamed from: a, reason: collision with root package name */
    public static final zzgms f18074a;

    /* renamed from: b, reason: collision with root package name */
    public static final zzgoi f18075b;

    /* renamed from: c, reason: collision with root package name */
    public static final zzgoe f18076c;

    /* renamed from: d, reason: collision with root package name */
    public static final zzgmw f18077d;

    static {
        zzgwu zzb = zzgpj.zzb("type.googleapis.com/google.crypto.tink.KmsAeadKey");
        f18075b = zzgoi.zzb(new zzgog() { // from class: com.google.android.gms.internal.ads.zzgjg
            @Override // com.google.android.gms.internal.ads.zzgog
            public final zzgpb zza(zzggj zzggjVar) {
                zzgjf zzgjfVar = (zzgjf) zzggjVar;
                zzgoi zzgoiVar = ggf.f18075b;
                zzguc zza = zzgue.zza();
                zza.zzb("type.googleapis.com/google.crypto.tink.KmsAeadKey");
                zzguv zza2 = zzgux.zza();
                zza2.zza(zzgjfVar.zzd());
                zza.zzc(((zzgux) zza2.zzbr()).zzaN());
                zza.zza(ggf.f(zzgjfVar.zzb()));
                return zzgox.zzb((zzgue) zza.zzbr());
            }
        }, zzgjf.class, zzgox.class);
        f18076c = zzgoe.zzb(new zzgoc() { // from class: com.google.android.gms.internal.ads.zzgjh
            @Override // com.google.android.gms.internal.ads.zzgoc
            public final zzggj zza(zzgpb zzgpbVar) {
                zzgox zzgoxVar = (zzgox) zzgpbVar;
                zzgoi zzgoiVar = ggf.f18075b;
                if (!zzgoxVar.zzc().zzi().equals("type.googleapis.com/google.crypto.tink.KmsAeadKey")) {
                    throw new IllegalArgumentException("Wrong type URL in call to LegacyKmsAeadProtoSerialization.parseParameters: ".concat(String.valueOf(zzgoxVar.zzc().zzi())));
                }
                try {
                    return zzgjf.zzc(zzgux.zzd(zzgoxVar.zzc().zzh(), zzgyh.zza()).zzf(), ggf.e(zzgoxVar.zzc().zzg()));
                } catch (zzgzm e2) {
                    throw new GeneralSecurityException("Parsing KmsAeadKeyFormat failed: ", e2);
                }
            }
        }, zzb, zzgox.class);
        f18077d = zzgmw.zzb(new zzgmu() { // from class: com.google.android.gms.internal.ads.zzgji
            @Override // com.google.android.gms.internal.ads.zzgmu
            public final zzgpb zza(zzgfw zzgfwVar, zzggn zzggnVar) {
                zzgjd zzgjdVar = (zzgjd) zzgfwVar;
                zzgoi zzgoiVar = ggf.f18075b;
                zzgus zzb2 = zzguu.zzb();
                zzguv zza = zzgux.zza();
                zza.zza(zzgjdVar.zzb().zzd());
                zzb2.zza((zzgux) zza.zzbr());
                return zzgow.zza("type.googleapis.com/google.crypto.tink.KmsAeadKey", ((zzguu) zzb2.zzbr()).zzaN(), zzgty.REMOTE, ggf.f(zzgjdVar.zzb().zzb()), zzgjdVar.zzd());
            }
        }, zzgjd.class, zzgow.class);
        f18074a = zzgms.zzb(new zzgmq() { // from class: com.google.android.gms.internal.ads.zzgjj
            @Override // com.google.android.gms.internal.ads.zzgmq
            public final zzgfw zza(zzgpb zzgpbVar, zzggn zzggnVar) {
                zzgow zzgowVar = (zzgow) zzgpbVar;
                zzgoi zzgoiVar = ggf.f18075b;
                if (!zzgowVar.zzg().equals("type.googleapis.com/google.crypto.tink.KmsAeadKey")) {
                    throw new IllegalArgumentException("Wrong type URL in call to LegacyKmsAeadProtoSerialization.parseKey");
                }
                try {
                    zzguu zzd = zzguu.zzd(zzgowVar.zze(), zzgyh.zza());
                    if (zzd.zza() == 0) {
                        return zzgjd.zza(zzgjf.zzc(zzd.zzf().zzf(), ggf.e(zzgowVar.zzc())), zzgowVar.zzf());
                    }
                    throw new GeneralSecurityException("KmsAeadKey are only accepted with version 0, got ".concat(String.valueOf(zzd)));
                } catch (zzgzm e2) {
                    throw new GeneralSecurityException("Parsing KmsAeadKey failed: ", e2);
                }
            }
        }, zzb, zzgow.class);
    }

    public static zzgje e(zzgve zzgveVar) {
        int ordinal = zzgveVar.ordinal();
        if (ordinal == 1) {
            return zzgje.zza;
        }
        if (ordinal == 3) {
            return zzgje.zzb;
        }
        throw new GeneralSecurityException(awf.ac(zzgveVar.zza(), "Unable to parse OutputPrefixType: "));
    }

    public static zzgve f(zzgje zzgjeVar) {
        if (zzgje.zza.equals(zzgjeVar)) {
            return zzgve.TINK;
        }
        if (zzgje.zzb.equals(zzgjeVar)) {
            return zzgve.RAW;
        }
        throw new GeneralSecurityException("Unable to serialize variant: ".concat(zzgjeVar.toString()));
    }
}
