package g;

import android.app.Activity;
import android.content.Context;
import com.google.android.gms.internal.ads.zzbcn;
import com.google.android.gms.internal.ads.zzbel;
import com.google.android.gms.internal.ads.zzbxl;

/* loaded from: classes3.dex */
public abstract class dth {
    public static boolean isAdAvailable(Context context, String str) {
        ckd.w(context, "Context cannot be null.");
        ckd.w(str, "AdUnitId cannot be null.");
        return new zzbxl(context, str).zzc();
    }

    public static void load(Context context, String str, awn awnVar, byk bykVar) {
        ckd.w(context, "Context cannot be null.");
        ckd.w(str, "AdUnitId cannot be null.");
        ckd.w(awnVar, "AdRequest cannot be null.");
        ckd.w(bykVar, "LoadCallback cannot be null.");
        ckd.aj("#008 Must be called on the main UI thread.");
        zzbcn.zza(context);
        if (((Boolean) zzbel.zzk.zze()).booleanValue()) {
            if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzkP)).booleanValue()) {
                ga.f17769b.execute(new chq(context, str, awnVar, bykVar, 5, false));
                return;
            }
        }
        agd.c("Loading on UI thread");
        new zzbxl(context, str).zzb(awnVar.f10978a, bykVar);
    }

    public static void load(Context context, String str, elc elcVar, byk bykVar) {
        ckd.w(context, "Context cannot be null.");
        ckd.w(str, "AdUnitId cannot be null.");
        ckd.w(elcVar, "AdManagerAdRequest cannot be null.");
        throw null;
    }

    public static dth pollAd(Context context, String str) {
        ckd.w(context, "Context cannot be null.");
        ckd.w(str, "AdUnitId cannot be null.");
        return new zzbxl(context, str).zza();
    }

    public abstract bof getResponseInfo();

    public abstract void show(Activity activity, fqz fqzVar);
}
