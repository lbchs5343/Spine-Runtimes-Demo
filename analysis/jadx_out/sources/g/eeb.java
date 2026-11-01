package g;

import android.app.Activity;
import android.content.res.Configuration;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import com.google.android.gms.internal.ads.zzbce;
import com.google.android.gms.internal.ads.zzbcl;
import com.google.android.gms.internal.ads.zzbcn;

/* loaded from: classes3.dex */
public class eeb extends lp {
    @Override // g.feo
    public final boolean i(Activity activity, Configuration configuration) {
        boolean isInMultiWindowMode;
        zzbce zzbceVar = zzbcn.zzeQ;
        edt edtVar = edt.f15376a;
        zzbcl zzbclVar = edtVar.f15379d;
        zzbcl zzbclVar2 = edtVar.f15379d;
        if (!((Boolean) zzbclVar.zza(zzbceVar)).booleanValue()) {
            return false;
        }
        if (((Boolean) zzbclVar2.zza(zzbcn.zzeS)).booleanValue()) {
            isInMultiWindowMode = activity.isInMultiWindowMode();
            return isInMultiWindowMode;
        }
        mx mxVar = cbv.f12612a.f12615d;
        int k = mx.k(activity, configuration.screenHeightDp);
        int i = mx.i(activity.getResources().getDisplayMetrics(), configuration.screenWidthDp);
        WindowManager windowManager = (WindowManager) activity.getApplicationContext().getSystemService("window");
        esy esyVar = ti.f20033a.z;
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        int i2 = displayMetrics.heightPixels;
        int i3 = displayMetrics.widthPixels;
        int identifier = activity.getResources().getIdentifier("status_bar_height", "dimen", "android");
        int dimensionPixelSize = identifier > 0 ? activity.getResources().getDimensionPixelSize(identifier) : 0;
        int intValue = ((Integer) zzbclVar2.zza(zzbcn.zzeO)).intValue() * ((int) Math.round(activity.getResources().getDisplayMetrics().density + 0.5d));
        return Math.abs(i2 - (k + dimensionPixelSize)) > intValue || Math.abs(i3 - i) > intValue;
    }
}
