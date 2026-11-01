package com.bytedance.sdk.component.adexpress.dynamic.d;

import android.text.TextUtils;
import android.util.Pair;
import android.view.View;
import com.bytedance.sdk.component.adexpress.dynamic.ox.mn;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes.dex */
public class dq {
    /* JADX WARN: Removed duplicated region for block: B:19:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x003d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean d(View view) {
        boolean z;
        if (view == null) {
            return false;
        }
        try {
            Pair pair = (Pair) view.getTag(2097610707);
            if (pair == null) {
                return false;
            }
            if (!TextUtils.isEmpty((CharSequence) pair.first) && !TextUtils.equals("0", (CharSequence) pair.first)) {
                z = false;
                return !z && ((((Long) pair.second).longValue() > 0L ? 1 : (((Long) pair.second).longValue() == 0L ? 0 : -1)) > 0);
            }
            z = true;
            if (z) {
            }
        } catch (Exception e2) {
            e2.getMessage();
            return false;
        }
    }

    public static int dq(mn mnVar) {
        if (mnVar == null) {
            return 0;
        }
        String er = mnVar.er();
        String wp = mnVar.wp();
        if (TextUtils.isEmpty(wp) || TextUtils.isEmpty(er) || !wp.equals("creative")) {
            return 0;
        }
        if (er.equals("shake")) {
            return 2;
        }
        if (er.equals("twist")) {
            return 3;
        }
        return er.equals("slide") ? 1 : 0;
    }

    public static boolean dq(View view) {
        Object tag;
        if (view == null) {
            return false;
        }
        try {
            tag = view.getTag(2097610708);
        } catch (Exception unused) {
        }
        if (tag == null) {
            return false;
        }
        return ((Integer) tag).intValue() == 1;
    }

    public static boolean dq(View view, float f2, float f3, float f4, float f5) {
        if (view == null) {
            return false;
        }
        try {
            Pair pair = (Pair) view.getTag(2097610707);
            if (pair != null && !TextUtils.isEmpty((CharSequence) pair.first) && ((Long) pair.second).longValue() > 0) {
                String str = (String) pair.first;
                long longValue = ((Long) pair.second).longValue();
                if (str.equals("0")) {
                    return ((float) Math.sqrt(Math.pow((double) (f2 - f4), 2.0d) + Math.pow((double) (f3 - f5), 2.0d))) >= ((float) longValue);
                }
                if (str.equals("1")) {
                    float f6 = f3 - f5;
                    return f6 < TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT && Math.abs(f6) >= ((float) longValue);
                }
                if (str.equals("2")) {
                    float f7 = f2 - f4;
                    return f7 > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT && Math.abs(f7) >= ((float) longValue);
                }
                if (str.equals("3")) {
                    float f8 = f2 - f4;
                    return f8 < TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT && Math.abs(f8) >= ((float) longValue);
                }
                if (str.equals("4")) {
                    float f9 = f3 - f5;
                    if (f9 > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT && Math.abs(f9) >= longValue) {
                        return true;
                    }
                }
            }
        } catch (Exception unused) {
        }
        return false;
    }
}
