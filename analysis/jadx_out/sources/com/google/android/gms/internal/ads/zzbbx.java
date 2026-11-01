package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;

/* loaded from: classes3.dex */
public final class zzbbx {
    public static int zza(Context context) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(MediationConstant.ADN_ADMOB, 0);
        if (sharedPreferences == null) {
            return 0;
        }
        try {
            return sharedPreferences.getInt("crash_without_write", 0);
        } catch (ClassCastException unused) {
            return 0;
        }
    }

    public static int zzb(Context context) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(MediationConstant.ADN_ADMOB, 0);
        if (sharedPreferences == null) {
            return 0;
        }
        try {
            return sharedPreferences.getInt("init_without_write", 0);
        } catch (ClassCastException unused) {
            return 0;
        }
    }

    public static void zzc(Context context) {
        int i = 0;
        SharedPreferences sharedPreferences = context.getSharedPreferences(MediationConstant.ADN_ADMOB, 0);
        if (sharedPreferences == null) {
            return;
        }
        SharedPreferences sharedPreferences2 = context.getSharedPreferences(MediationConstant.ADN_ADMOB, 0);
        if (sharedPreferences2 != null) {
            try {
                i = sharedPreferences2.getInt("crash_without_write", 0);
            } catch (ClassCastException unused) {
            }
        }
        sharedPreferences.edit().putInt("crash_without_write", i + 1).commit();
    }

    public static void zzd(Context context) {
        int i = 0;
        SharedPreferences sharedPreferences = context.getSharedPreferences(MediationConstant.ADN_ADMOB, 0);
        if (sharedPreferences == null) {
            return;
        }
        SharedPreferences sharedPreferences2 = context.getSharedPreferences(MediationConstant.ADN_ADMOB, 0);
        if (sharedPreferences2 != null) {
            try {
                i = sharedPreferences2.getInt("init_without_write", 0);
            } catch (ClassCastException unused) {
            }
        }
        sharedPreferences.edit().putInt("init_without_write", i + 1).commit();
    }

    public static void zze(Context context) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(MediationConstant.ADN_ADMOB, 0);
        if (sharedPreferences == null) {
            return;
        }
        sharedPreferences.edit().putInt("init_without_write", 0).putInt("crash_without_write", 0).commit();
    }
}
