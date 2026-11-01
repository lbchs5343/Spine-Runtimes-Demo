package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.MobileAds;
import g.abz;
import g.edt;
import g.gya;

/* loaded from: classes3.dex */
public final class zzfgq {
    public static abz zza(Throwable th) {
        if (th instanceof zzeff) {
            zzeff zzeffVar = (zzeff) th;
            return zzc(zzeffVar.zza(), zzeffVar.zzb());
        }
        if (th instanceof zzdwn) {
            return th.getMessage() == null ? zzd(((zzdwn) th).zza(), null, null) : zzd(((zzdwn) th).zza(), th.getMessage(), null);
        }
        if (!(th instanceof gya)) {
            return zzd(1, null, null);
        }
        gya gyaVar = (gya) th;
        return new abz(gyaVar.a(), zzfxf.zzc(gyaVar.getMessage()), MobileAds.ERROR_DOMAIN, null, null);
    }

    public static abz zzb(Throwable th, zzefg zzefgVar) {
        abz abzVar;
        abz zza = zza(th);
        int i = zza.zza;
        if ((i == 3 || i == 0) && (abzVar = zza.zzd) != null && !abzVar.zzc.equals(MobileAds.ERROR_DOMAIN)) {
            zza.zzd = null;
        }
        if (zzefgVar != null) {
            zza.zze = zzefgVar.zzb();
        }
        return zza;
    }

    public static abz zzc(int i, abz abzVar) {
        if (i == 0) {
            throw null;
        }
        if (i == 8) {
            if (((Integer) edt.f15376a.f15379d.zza(zzbcn.zzhU)).intValue() > 0) {
                return abzVar;
            }
            i = 8;
        }
        return zzd(i, null, abzVar);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static abz zzd(int i, String str, abz abzVar) {
        String str2;
        int i2 = i - 1;
        if (str == null) {
            if (i == 0) {
                throw null;
            }
            str = "No fill.";
            switch (i2) {
                case 1:
                    str = "Invalid request.";
                    break;
                case 2:
                    break;
                case 3:
                    str = "App ID missing.";
                    break;
                case 4:
                    str = "Network error.";
                    break;
                case 5:
                    str = "Invalid request: Invalid ad unit ID.";
                    break;
                case 6:
                    str = "Invalid request: Invalid ad size.";
                    break;
                case 7:
                    str = "A mediation adapter failed to show the ad.";
                    break;
                case 8:
                    str = "The ad is not ready.";
                    break;
                case 9:
                    str = "The ad has already been shown.";
                    break;
                case 10:
                    str = "The ad can not be shown when app is not in foreground.";
                    break;
                case 11:
                default:
                    str = "Internal error.";
                    break;
                case 12:
                    if (((Integer) edt.f15376a.f15379d.zza(zzbcn.zzhX)).intValue() <= 0) {
                        str = "The mediation adapter did not return an ad.";
                        break;
                    }
                    break;
                case 13:
                    str = "Mismatch request IDs.";
                    break;
                case 14:
                    str = "Invalid ad string.";
                    break;
                case 15:
                    str = "Ad inspector had an internal error.";
                    break;
                case 16:
                    str = "Ad inspector failed to load.";
                    break;
                case 17:
                    str = "Ad inspector cannot be opened because the device is not in test mode. See https://developers.google.com/admob/android/test-ads#enable_test_devices for more information.";
                    break;
                case 18:
                    str = "Ad inspector cannot be opened because it is already open.";
                    break;
            }
        }
        String str3 = str;
        if (i == 0) {
            throw null;
        }
        int i3 = 2;
        switch (i2) {
            case 0:
            case 11:
            case 15:
                i3 = 0;
                return new abz(i3, str3, MobileAds.ERROR_DOMAIN, abzVar, null);
            case 1:
            case 5:
            case 6:
            case 9:
            case 16:
                i3 = 1;
                return new abz(i3, str3, MobileAds.ERROR_DOMAIN, abzVar, null);
            case 2:
            case 10:
            case 18:
                i3 = 3;
                return new abz(i3, str3, MobileAds.ERROR_DOMAIN, abzVar, null);
            case 3:
                i3 = 8;
                return new abz(i3, str3, MobileAds.ERROR_DOMAIN, abzVar, null);
            case 4:
            case 8:
            case 17:
                return new abz(i3, str3, MobileAds.ERROR_DOMAIN, abzVar, null);
            case 7:
                i3 = 4;
                return new abz(i3, str3, MobileAds.ERROR_DOMAIN, abzVar, null);
            case 12:
                if (((Integer) edt.f15376a.f15379d.zza(zzbcn.zzhX)).intValue() <= 0) {
                    i3 = 9;
                    return new abz(i3, str3, MobileAds.ERROR_DOMAIN, abzVar, null);
                }
                i3 = 3;
                return new abz(i3, str3, MobileAds.ERROR_DOMAIN, abzVar, null);
            case 13:
                i3 = 10;
                return new abz(i3, str3, MobileAds.ERROR_DOMAIN, abzVar, null);
            case 14:
                i3 = 11;
                return new abz(i3, str3, MobileAds.ERROR_DOMAIN, abzVar, null);
            default:
                switch (i) {
                    case 1:
                        str2 = "INTERNAL_ERROR";
                        break;
                    case 2:
                        str2 = "INVALID_REQUEST";
                        break;
                    case 3:
                        str2 = "NO_FILL";
                        break;
                    case 4:
                        str2 = "APP_ID_MISSING";
                        break;
                    case 5:
                        str2 = "NETWORK_ERROR";
                        break;
                    case 6:
                        str2 = "INVALID_AD_UNIT_ID";
                        break;
                    case 7:
                        str2 = "INVALID_AD_SIZE";
                        break;
                    case 8:
                        str2 = "MEDIATION_SHOW_ERROR";
                        break;
                    case 9:
                        str2 = "NOT_READY";
                        break;
                    case 10:
                        str2 = "AD_REUSED";
                        break;
                    case 11:
                        str2 = "APP_NOT_FOREGROUND";
                        break;
                    case 12:
                        str2 = "INTERNAL_SHOW_ERROR";
                        break;
                    case 13:
                        str2 = "MEDIATION_NO_FILL";
                        break;
                    case 14:
                        str2 = "REQUEST_ID_MISMATCH";
                        break;
                    case 15:
                        str2 = "INVALID_AD_STRING";
                        break;
                    case 16:
                        str2 = "AD_INSPECTOR_INTERNAL_ERROR";
                        break;
                    case 17:
                        str2 = "AD_INSPECTOR_FAILED_TO_LOAD";
                        break;
                    case 18:
                        str2 = "AD_INSPECTOR_NOT_IN_TEST_MODE";
                        break;
                    default:
                        str2 = "AD_INSPECTOR_ALREADY_OPEN";
                        break;
                }
                throw new AssertionError("Unknown SdkError: ".concat(str2));
        }
    }
}
