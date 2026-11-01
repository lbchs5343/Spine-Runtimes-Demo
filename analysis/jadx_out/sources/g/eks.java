package g;

import android.app.Activity;
import android.content.Context;
import com.google.android.gms.internal.ads.zzbcn;
import com.google.android.gms.internal.ads.zzbel;
import com.google.android.gms.internal.ads.zzbxw;

/* loaded from: classes3.dex */
public abstract class eks {
    public static void load(Context context, String str, awn awnVar, gsq gsqVar) {
        ckd.w(context, "Context cannot be null.");
        ckd.w(str, "AdUnitId cannot be null.");
        ckd.w(awnVar, "AdRequest cannot be null.");
        ckd.w(gsqVar, "LoadCallback cannot be null.");
        ckd.aj("#008 Must be called on the main UI thread.");
        zzbcn.zza(context);
        if (((Boolean) zzbel.zzk.zze()).booleanValue()) {
            if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzkP)).booleanValue()) {
                ga.f17769b.execute(new chq(context, str, awnVar, gsqVar, 4, false));
                return;
            }
        }
        new zzbxw(context, str).zza(awnVar.f10978a, gsqVar);
    }

    public static void load(Context context, String str, elc elcVar, gsq gsqVar) {
        ckd.w(context, "Context cannot be null.");
        ckd.w(str, "AdUnitId cannot be null.");
        ckd.w(elcVar, "AdManagerAdRequest cannot be null.");
        throw null;
    }

    public abstract bof getResponseInfo();

    public abstract void show(Activity activity, fqz fqzVar);
}
