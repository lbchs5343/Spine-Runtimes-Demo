package com.bytedance.sdk.openadsdk.core.ox;

import android.content.SharedPreferences;
import android.text.TextUtils;
import com.bytedance.sdk.component.o.kk;
import com.bytedance.sdk.component.o.mn;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.openadsdk.core.wp;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class d {
    private static volatile d dq;

    /* renamed from: d, reason: collision with root package name */
    private volatile SharedPreferences f3339d = com.bytedance.sdk.openadsdk.api.plugin.d.d(wp.getContext(), "sp_dynamic_tmpl_config", 0);
    private volatile SharedPreferences ox = com.bytedance.sdk.openadsdk.api.plugin.d.d(wp.getContext(), "sp_dynamic_tmpl_config_v3", 0);

    public static d dq() {
        if (dq == null) {
            synchronized (d.class) {
                try {
                    if (dq == null) {
                        dq = new d();
                    }
                } finally {
                }
            }
        }
        return dq;
    }

    public String d(String str, String str2, boolean z) {
        SharedPreferences sharedPreferences;
        String str3;
        try {
            if (z) {
                sharedPreferences = this.ox;
                str3 = "sp_dynamic_tmpl_config_v3";
            } else {
                sharedPreferences = this.f3339d;
                str3 = "sp_dynamic_tmpl_config";
            }
            return ox.dq().d() ? com.bytedance.sdk.component.mn.ox.dq.d.d(str3, str, str2) : sharedPreferences.getString(str, str2);
        } catch (Throwable unused) {
            return str2;
        }
    }

    public JSONArray d(final String str, int i) {
        if (!ox.dq().iw(i)) {
            return dq(str);
        }
        try {
            final String d2 = d(str, null, true);
            mn.d(new kk("tmpl_updatetime") { // from class: com.bytedance.sdk.openadsdk.core.ox.d.2
                @Override // java.lang.Runnable
                public void run() {
                    boolean z;
                    try {
                        Set<com.bytedance.sdk.openadsdk.core.nativeexpress.dq.dq> dq2 = com.bytedance.sdk.openadsdk.core.nativeexpress.dq.d.dq().dq(str);
                        JSONArray jSONArray = new JSONArray();
                        if (dq2 == null || dq2.size() <= 0) {
                            z = false;
                        } else {
                            for (com.bytedance.sdk.openadsdk.core.nativeexpress.dq.dq dqVar : dq2) {
                                if (dqVar != null) {
                                    JSONObject jSONObject = new JSONObject();
                                    String[] split = dqVar.dq().split("_");
                                    if (split.length == 2) {
                                        jSONObject.put(TTDownloadField.TT_ID, split[1]);
                                        jSONObject.put(TTDownloadField.TT_MD5, dqVar.d());
                                        jSONArray.put(jSONObject);
                                    }
                                }
                            }
                            z = true;
                        }
                        if (!(d2 == null && z) && jSONArray.toString().equals(d2)) {
                            return;
                        }
                        d.this.dq(str, jSONArray.toString(), true);
                    } catch (Exception unused) {
                    }
                }
            });
            if (TextUtils.isEmpty(d2)) {
                return null;
            }
            return new JSONArray(d2);
        } catch (Exception unused) {
            return null;
        }
    }

    public void delete(String str, String str2, boolean z) {
        if (TextUtils.isEmpty(str2) || TextUtils.isEmpty(str)) {
            return;
        }
        try {
            String d2 = d(str, null, z);
            if (TextUtils.isEmpty(d2)) {
                return;
            }
            JSONArray jSONArray = new JSONArray(d2);
            if (jSONArray.length() > 0) {
                int i = 0;
                while (true) {
                    if (i >= jSONArray.length()) {
                        i = -1;
                        break;
                    }
                    JSONObject optJSONObject = jSONArray.optJSONObject(i);
                    if (optJSONObject != null && str2.equals(optJSONObject.getString(TTDownloadField.TT_ID))) {
                        break;
                    } else {
                        i++;
                    }
                }
                if (i != -1) {
                    jSONArray.remove(i);
                    dq(str, jSONArray.toString(), z);
                }
            }
        } catch (Exception unused) {
        }
    }

    public JSONArray dq(String str) {
        try {
            Set<com.bytedance.sdk.openadsdk.core.nativeexpress.dq.dq> dq2 = com.bytedance.sdk.openadsdk.core.nativeexpress.dq.d.dq().dq(str);
            if (dq2 != null && dq2.size() != 0) {
                JSONArray jSONArray = new JSONArray();
                for (com.bytedance.sdk.openadsdk.core.nativeexpress.dq.dq dqVar : dq2) {
                    if (dqVar != null) {
                        JSONObject jSONObject = new JSONObject();
                        String[] split = dqVar.dq().split("_");
                        if (split.length == 2) {
                            jSONObject.put(TTDownloadField.TT_ID, split[1]);
                            jSONObject.put(TTDownloadField.TT_MD5, dqVar.d());
                            jSONArray.put(jSONObject);
                        }
                    }
                }
                return jSONArray;
            }
            return null;
        } catch (Exception e2) {
            ig.d("BidOptTmplManager", "getUgenParentTplIds: ", e2);
            return null;
        }
    }

    public JSONArray dq(final String str, int i) {
        try {
            final String d2 = d(str, null, false);
            mn.d(new kk("tmpl_updatetime") { // from class: com.bytedance.sdk.openadsdk.core.ox.d.1
                @Override // java.lang.Runnable
                public void run() {
                    boolean z;
                    try {
                        Set<com.bytedance.sdk.component.adexpress.dq.ox.d> dq2 = com.bytedance.sdk.component.adexpress.dq.d.d.dq(str, false);
                        JSONArray jSONArray = new JSONArray();
                        if (dq2 == null || dq2.size() <= 0) {
                            z = false;
                        } else {
                            for (com.bytedance.sdk.component.adexpress.dq.ox.d dVar : dq2) {
                                if (dVar != null) {
                                    JSONObject jSONObject = new JSONObject();
                                    jSONObject.put(TTDownloadField.TT_ID, dVar.d());
                                    jSONObject.put(TTDownloadField.TT_MD5, dVar.ox());
                                    jSONArray.put(jSONObject);
                                }
                            }
                            z = true;
                        }
                        if (!(d2 == null && z) && jSONArray.toString().equals(d2)) {
                            return;
                        }
                        d.this.dq(str, jSONArray.toString(), false);
                    } catch (Exception unused) {
                    }
                }
            });
            if (TextUtils.isEmpty(d2)) {
                return null;
            }
            return new JSONArray(d2);
        } catch (Exception unused) {
            return null;
        }
    }

    public void dq(String str, com.bytedance.sdk.component.adexpress.dq.ox.ox oxVar) {
        update(str, oxVar, false);
    }

    public void dq(String str, String str2) {
        delete(str, str2, false);
    }

    public void dq(String str, String str2, boolean z) {
        SharedPreferences sharedPreferences;
        String str3;
        try {
            if (z) {
                sharedPreferences = this.ox;
                str3 = "sp_dynamic_tmpl_config_v3";
            } else {
                sharedPreferences = this.f3339d;
                str3 = "sp_dynamic_tmpl_config";
            }
            if (ox.dq().d()) {
                com.bytedance.sdk.component.mn.ox.dq.d.dq(str3, str, str2);
                return;
            }
            SharedPreferences.Editor edit = sharedPreferences.edit();
            edit.putString(str, str2);
            edit.apply();
        } catch (Throwable unused) {
        }
    }

    public void update(String str, com.bytedance.sdk.component.adexpress.dq.ox.ox oxVar, boolean z) {
        if (oxVar == null || oxVar.d() == null || TextUtils.isEmpty(str)) {
            return;
        }
        try {
            String d2 = d(str, null, z);
            JSONArray jSONArray = d2 == null ? new JSONArray() : new JSONArray(d2);
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(TTDownloadField.TT_ID, oxVar.d());
            jSONObject.put(TTDownloadField.TT_MD5, oxVar.ox());
            jSONArray.put(jSONObject);
            dq(str, jSONArray.toString(), z);
        } catch (Exception unused) {
        }
    }
}
