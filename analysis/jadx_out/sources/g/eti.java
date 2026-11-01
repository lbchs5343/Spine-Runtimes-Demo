package g;

import android.app.Activity;
import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzbcn;
import com.google.android.gms.internal.ads.zzbel;
import com.google.android.gms.internal.ads.zzbml;
import com.google.android.gms.internal.ads.zzbpc;

/* loaded from: classes3.dex */
public abstract class eti {
    public static boolean isAdAvailable(Context context, String str) {
        try {
            return cbv.f12612a.f12616e.k(context.getApplicationContext(), new zzbpc()).zzk(str);
        } catch (RemoteException e2) {
            agd.g("#007 Could not call remote method.", e2);
            return false;
        }
    }

    public static void load(Context context, String str, awn awnVar, gsg gsgVar) {
        ckd.w(context, "Context cannot be null.");
        ckd.w(str, "AdUnitId cannot be null.");
        ckd.w(awnVar, "AdRequest cannot be null.");
        ckd.w(gsgVar, "LoadCallback cannot be null.");
        ckd.aj("#008 Must be called on the main UI thread.");
        zzbcn.zza(context);
        if (((Boolean) zzbel.zzi.zze()).booleanValue()) {
            if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzkP)).booleanValue()) {
                ga.f17769b.execute(new chq(context, str, awnVar, gsgVar, 1, false));
                return;
            }
        }
        new zzbml(context, str).zza(awnVar.f10978a, gsgVar);
    }

    public static eti pollAd(Context context, String str) {
        try {
            deq zzf = cbv.f12612a.f12616e.k(context.getApplicationContext(), new zzbpc()).zzf(str);
            if (zzf != null) {
                return new zzbml(context, str, zzf);
            }
            agd.g("Failed to obtain an Interstitial Ad from the preloader.", null);
            return null;
        } catch (RemoteException e2) {
            agd.g("#007 Could not call remote method.", e2);
            return null;
        }
    }

    public abstract bof getResponseInfo();

    public abstract void setFullScreenContentCallback(fas fasVar);

    public abstract void setImmersiveMode(boolean z);

    public abstract void show(Activity activity);
}
