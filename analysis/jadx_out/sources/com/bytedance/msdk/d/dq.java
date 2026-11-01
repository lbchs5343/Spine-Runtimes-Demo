package com.bytedance.msdk.d;

import android.text.TextUtils;
import com.bytedance.msdk.core.no.no;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;

/* loaded from: classes.dex */
public final class dq {
    public static int d(String str) {
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        if (str.startsWith(MediationConstant.ADN_GDT)) {
            return 3;
        }
        if (str.startsWith(MediationConstant.ADN_ADMOB)) {
            return 2;
        }
        if (str.equalsIgnoreCase(MediationConstant.ADN_PANGLE)) {
            return 1;
        }
        if (str.equalsIgnoreCase(MediationConstant.ADN_MINTEGRAL)) {
            return 4;
        }
        if (str.equalsIgnoreCase(MediationConstant.ADN_UNITY)) {
            return 5;
        }
        if (str.equalsIgnoreCase(MediationConstant.ADN_BAIDU)) {
            return 6;
        }
        if (str.equalsIgnoreCase(MediationConstant.ADN_KS)) {
            return 7;
        }
        if (str.equalsIgnoreCase(MediationConstant.ADN_SIGMOB)) {
            return 8;
        }
        return str.equalsIgnoreCase(MediationConstant.ADN_KLEVIN) ? 9 : -1;
    }

    public static String d(int i) {
        switch (i) {
            case 1:
                return "Banner";
            case 2:
                return "Interstitial";
            case 3:
            case 4:
                return "Splash";
            case 5:
                return "Native";
            case 6:
            default:
                return "UnKnow";
            case 7:
                return "RewardVideo";
            case 8:
                return "FullVideo";
            case 9:
                return "Draw";
            case 10:
                return "InterstitialFull";
        }
    }

    public static String dq(int i) {
        return i == 3 ? MediationConstant.ADN_GDT : i == 2 ? MediationConstant.ADN_ADMOB : i == 1 ? MediationConstant.ADN_PANGLE : i == 4 ? MediationConstant.ADN_MINTEGRAL : i == 5 ? MediationConstant.ADN_UNITY : i == 6 ? MediationConstant.ADN_BAIDU : i == 7 ? MediationConstant.ADN_KS : i == 8 ? MediationConstant.ADN_SIGMOB : i == 9 ? MediationConstant.ADN_KLEVIN : i == -1 ? MediationConstant.KEY_USE_POLICY_OBJ_CUSTOM : "";
    }

    public static String dq(int i, int i2) {
        switch (i) {
            case 1:
                return "Banner";
            case 2:
                return "Interstitial";
            case 3:
            case 4:
                return "Splash";
            case 5:
                return i2 == 4 ? "Native" : i2 == 5 ? "Draw" : i2 == 3 ? "Banner" : "Native";
            case 6:
            default:
                return null;
            case 7:
                return (i2 != 6 && i2 == 7) ? "FullVideo" : "RewardVideo";
            case 8:
                return "FullVideo";
            case 9:
                return "Draw";
            case 10:
                if (i2 == 1) {
                    return "Interstitial";
                }
                if (i2 == 2) {
                    return "FullVideo";
                }
                return null;
        }
    }

    public static String dq(int i, int i2, no noVar) {
        switch (i) {
            case 1:
                return "Banner";
            case 2:
                return "Interstitial";
            case 3:
            case 4:
                return "Splash";
            case 5:
                return i2 == 4 ? (noVar == null || noVar.o() != 1) ? "Native-自渲染" : "Native-模板渲染" : i2 == 5 ? "NativeDraw" : i2 == 3 ? "Banner" : "Native-自渲染";
            case 6:
            default:
                return null;
            case 7:
                return (i2 != 6 && i2 == 7) ? "Reward_FullVideo" : "Reward_RewardVideo";
            case 8:
                return "FullVideo";
            case 9:
                return "NativeDraw";
            case 10:
                if (i2 == 1) {
                    return "InterstitialFull—Interstitial";
                }
                if (i2 == 2) {
                    return "InterstitialFull—FullVideo";
                }
                return null;
        }
    }

    public static String dq(String str) {
        return TextUtils.isEmpty(str) ? str : str.equalsIgnoreCase(MediationConstant.ADN_GDT) ? MediationConstant.ADN_GDT : str.equalsIgnoreCase(MediationConstant.ADN_ADMOB) ? MediationConstant.ADN_ADMOB : str.equalsIgnoreCase(MediationConstant.ADN_PANGLE) ? MediationConstant.ADN_PANGLE : str.equalsIgnoreCase(MediationConstant.ADN_MINTEGRAL) ? MediationConstant.ADN_MINTEGRAL : str.equalsIgnoreCase(MediationConstant.ADN_UNITY) ? MediationConstant.ADN_UNITY : str.equalsIgnoreCase(MediationConstant.ADN_BAIDU) ? MediationConstant.ADN_BAIDU : str.equalsIgnoreCase(MediationConstant.ADN_KS) ? MediationConstant.ADN_KS : str.equalsIgnoreCase(MediationConstant.ADN_SIGMOB) ? MediationConstant.ADN_SIGMOB : str.equalsIgnoreCase(MediationConstant.ADN_KLEVIN) ? MediationConstant.ADN_KLEVIN : str;
    }
}
