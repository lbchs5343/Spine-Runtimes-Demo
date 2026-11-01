package g;

import android.app.Activity;
import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzbab;
import com.google.android.gms.internal.ads.zzbaf;
import com.google.android.gms.internal.ads.zzban;
import com.google.android.gms.internal.ads.zzbcn;
import com.google.android.gms.internal.ads.zzbel;
import com.google.android.gms.internal.ads.zzbpc;

/* loaded from: classes3.dex */
public abstract class ls {
    public static final int APP_OPEN_AD_ORIENTATION_LANDSCAPE = 2;
    public static final int APP_OPEN_AD_ORIENTATION_PORTRAIT = 1;

    public static boolean isAdAvailable(Context context, String str) {
        try {
            return cbv.f12612a.f12616e.k(context.getApplicationContext(), new zzbpc()).zzj(str);
        } catch (RemoteException e2) {
            agd.g("#007 Could not call remote method.", e2);
            return false;
        }
    }

    @Deprecated
    public static void load(Context context, String str, awn awnVar, int i, fle fleVar) {
        ckd.w(context, "Context cannot be null.");
        ckd.w(str, "adUnitId cannot be null.");
        ckd.w(awnVar, "AdRequest cannot be null.");
        ckd.aj("#008 Must be called on the main UI thread.");
        zzbcn.zza(context);
        if (((Boolean) zzbel.zzd.zze()).booleanValue()) {
            if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzkP)).booleanValue()) {
                ga.f17769b.execute(new anv(context, str, awnVar, i, fleVar));
                return;
            }
        }
        new zzban(context, str, awnVar.f10978a, i, fleVar).zza();
    }

    public static void load(Context context, String str, awn awnVar, fle fleVar) {
        ckd.w(context, "Context cannot be null.");
        ckd.w(str, "adUnitId cannot be null.");
        ckd.w(awnVar, "AdRequest cannot be null.");
        ckd.aj("#008 Must be called on the main UI thread.");
        zzbcn.zza(context);
        if (((Boolean) zzbel.zzd.zze()).booleanValue()) {
            if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzkP)).booleanValue()) {
                ga.f17769b.execute(new chq(context, str, awnVar, fleVar, 3, false));
                return;
            }
        }
        new zzban(context, str, awnVar.f10978a, 3, fleVar).zza();
    }

    @Deprecated
    public static void load(Context context, String str, elc elcVar, int i, fle fleVar) {
        ckd.w(context, "Context cannot be null.");
        ckd.w(str, "adUnitId cannot be null.");
        ckd.w(elcVar, "AdManagerAdRequest cannot be null.");
        throw null;
    }

    public static ls pollAd(Context context, String str) {
        try {
            zzbaf zze = cbv.f12612a.f12616e.k(context.getApplicationContext(), new zzbpc()).zze(str);
            if (zze != null) {
                return new zzbab(zze, str);
            }
            agd.g("Failed to obtain an App Open ad from the preloader.", null);
            return null;
        } catch (RemoteException e2) {
            agd.g("#007 Could not call remote method.", e2);
            return null;
        }
    }

    public abstract bof getResponseInfo();

    public abstract void show(Activity activity);
}
