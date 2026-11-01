package g;

import android.content.Context;
import cn.trinea.android.developertools.R;
import g.fxe;

/* loaded from: classes.dex */
public abstract class fml {
    static {
        kj.f19545c = new kf(27);
    }

    public static boolean a(Context context, int i) {
        if (cyz.f13786c) {
            return true;
        }
        if (!acr.bu(context) && atf.g(context).i()) {
            fxe.e m = atf.g(context).m();
            if (i % (m == null ? 0 : m.fullAdInterval) == 0) {
                return true;
            }
        }
        return false;
    }

    public static String b(efx efxVar) {
        return efxVar.getString(byh.aj(efxVar) ? R.string.ad_unit_id_full2_c : R.string.ad_unit_id_full2_g);
    }

    public static String c(Context context) {
        return context.getString(byh.aj(context) ? R.string.ad_unit_id_main_c : R.string.ad_unit_id_main_g);
    }

    public static void d(Context context) {
        if (h(context) && (context instanceof dxn)) {
            ((dxn) context).fullScreenAdShow();
        }
    }

    public static boolean e(Context context) {
        fxe.e m = atf.g(context).m();
        byh.ad(context, fyx.STORAGE_KEY_SHOW_WEB_VIEW_BANNER_AD, m != null && m.isShowNativeAdForWeb);
        return (atf.g(context).i() && !acr.bu(context)) || cyz.f13786c;
    }

    public static String f(Context context) {
        return context.getString(byh.aj(context) ? R.string.ad_app_c : R.string.ad_app_g);
    }

    public static String g(efx efxVar) {
        return efxVar.getString(byh.aj(efxVar) ? R.string.ad_unit_id_app_list_c : R.string.ad_unit_id_app_list_g);
    }

    public static boolean h(Context context) {
        return (atf.g(context).i() && !acr.bu(context)) || cyz.f13786c;
    }
}
