package g;

import com.google.android.gms.internal.ads.zzbbs;
import com.google.android.gms.internal.ads.zzhfx;
import com.google.android.gms.internal.ads.zzhgf;

/* loaded from: classes3.dex */
public final class bpg implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final dup f11953a;

    public bpg(dup dupVar) {
        this.f11953a = dupVar;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final Object zzb() {
        char c2;
        String str = this.f11953a.f14855a;
        switch (str.hashCode()) {
            case -1999289321:
                if (str.equals("NATIVE")) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            case -1372958932:
                if (str.equals("INTERSTITIAL")) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            case 543046670:
                if (str.equals("REWARDED")) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            case 1951953708:
                if (str.equals("BANNER")) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            default:
                c2 = 65535;
                break;
        }
        zzbbs.zza.EnumC0207zza enumC0207zza = c2 != 0 ? c2 != 1 ? c2 != 2 ? c2 != 3 ? zzbbs.zza.EnumC0207zza.AD_INITIATER_UNSPECIFIED : zzbbs.zza.EnumC0207zza.REWARD_BASED_VIDEO_AD : zzbbs.zza.EnumC0207zza.AD_LOADER : zzbbs.zza.EnumC0207zza.INTERSTITIAL : zzbbs.zza.EnumC0207zza.BANNER;
        zzhgf.zzb(enumC0207zza);
        return enumC0207zza;
    }
}
