package com.bytedance.pangle.util;

import android.content.SharedPreferences;
import android.os.Build;
import android.text.TextUtils;
import com.bytedance.pangle.Zeus;
import com.bytedance.pangle.log.ZeusLogger;
import g.tn;
import java.util.Locale;

/* loaded from: classes.dex */
public class l {

    /* renamed from: b, reason: collision with root package name */
    private static volatile l f1646b;

    /* renamed from: a, reason: collision with root package name */
    public SharedPreferences f1647a = Zeus.getAppApplication().getSharedPreferences("pangle_meta_data_sp", 0);

    private l() {
    }

    public static l a() {
        if (f1646b == null) {
            synchronized (l.class) {
                try {
                    if (f1646b == null) {
                        f1646b = new l();
                    }
                } finally {
                }
            }
        }
        return f1646b;
    }

    public final void a(String str) {
        SharedPreferences.Editor edit = this.f1647a.edit();
        edit.putString("ROM_LAST_".concat(String.valueOf(str)), Build.VERSION.INCREMENTAL);
        edit.apply();
    }

    public final void a(String str, int i) {
        int c2 = c(str);
        if (c2 != i) {
            SharedPreferences.Editor edit = this.f1647a.edit();
            edit.putInt("PLUGIN_API_VERSION_".concat(String.valueOf(str)), i);
            edit.apply();
        }
        ZeusLogger.i(ZeusLogger.TAG_INIT, "ZeusSpUtils setPluginApiVersion " + c2 + " --> " + i);
    }

    public final void a(String str, int i, String str2) {
        int b2 = b(str, i, str2);
        SharedPreferences.Editor edit = this.f1647a.edit();
        edit.putInt(str2 + "_failed_count_when_rm_entry_" + str + "_" + i, b2 + 1);
        edit.apply();
    }

    public final void a(String str, int i, boolean z) {
        SharedPreferences.Editor edit = this.f1647a.edit();
        String str2 = "INSTALLED_" + str + "-" + i;
        if (z) {
            edit.putBoolean(str2, true);
        } else {
            edit.remove(str2);
        }
        edit.apply();
    }

    public final void a(String str, String str2) {
        String d2 = d(str);
        if (!TextUtils.equals(d2, str2)) {
            SharedPreferences.Editor edit = this.f1647a.edit();
            edit.putString("HOST_IDENTITY_".concat(String.valueOf(str)), str2);
            edit.apply();
        }
        StringBuilder o = tn.o("ZeusSpUtils setHostIdentity(", str, ") ", d2, " --> ");
        o.append(str2);
        ZeusLogger.i(ZeusLogger.TAG_INIT, o.toString());
    }

    public final int b(String str, int i, String str2) {
        return this.f1647a.getInt(str2 + "_failed_count_when_rm_entry_" + str + "_" + i, 0);
    }

    public final void b(String str) {
        String string = this.f1647a.getString("HOST_ABI_".concat(String.valueOf(str)), "");
        SharedPreferences.Editor edit = this.f1647a.edit();
        edit.putString("HOST_ABI_".concat(String.valueOf(str)), Zeus.getHostAbi());
        edit.apply();
        ZeusLogger.i(ZeusLogger.TAG_INIT, "ZeusSpUtils setHostAbiUpdated HOST_ABI=" + string + " --> " + Zeus.getHostAbi());
    }

    public final void b(String str, int i, boolean z) {
        SharedPreferences.Editor edit = this.f1647a.edit();
        edit.putBoolean("dex_opt_state_" + str + "_" + i, z);
        edit.apply();
    }

    public final boolean b(String str, int i) {
        return this.f1647a.getBoolean(String.format(Locale.getDefault(), "INSTALLED_%s-%d", str, Integer.valueOf(i)), false);
    }

    public final int c(String str) {
        int i = this.f1647a.getInt("PLUGIN_API_VERSION_".concat(String.valueOf(str)), 0);
        ZeusLogger.i(ZeusLogger.TAG_INIT, "ZeusSpUtils getPluginApiVersion pluginPKg = " + str + ", pluginApiVersion = " + i);
        return i;
    }

    public final int c(String str, int i) {
        return this.f1647a.getInt("remove_entry_flag_" + str + "_" + i, 0);
    }

    public final void c(String str, int i, boolean z) {
        SharedPreferences.Editor edit = this.f1647a.edit();
        edit.putBoolean("dex_remove_state_" + str + "_" + i, z);
        edit.apply();
    }

    public final String d(String str) {
        String string = this.f1647a.getString("HOST_IDENTITY_".concat(String.valueOf(str)), "");
        ZeusLogger.i(ZeusLogger.TAG_INIT, "ZeusSpUtils getHostIdentity pluginPKg = " + str + ", hostIdentity = " + string);
        return string;
    }

    public final void e(String str) {
        SharedPreferences.Editor edit = this.f1647a.edit();
        edit.remove("UNINSTALL__".concat(String.valueOf(str)));
        edit.apply();
    }

    public final boolean f(String str) {
        return this.f1647a.getBoolean("UNINSTALL__".concat(String.valueOf(str)), false);
    }

    public final String g(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return this.f1647a.getString("ALIAS_".concat(String.valueOf(f.a(str))), "");
    }
}
