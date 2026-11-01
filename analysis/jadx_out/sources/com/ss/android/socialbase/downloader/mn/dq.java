package com.ss.android.socialbase.downloader.mn;

import android.content.Context;
import android.text.TextUtils;
import com.ss.android.socialbase.downloader.downloader.Downloader;
import com.ss.android.socialbase.downloader.downloader.ox;
import com.ss.android.socialbase.downloader.kk.ia;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class dq {
    private static boolean iw;
    private static dq mn;
    private static JSONObject ox;
    private static JSONObject p;
    private static Boolean s;
    private final JSONObject ia;
    private final JSONObject kk;
    private int no;
    private final Boolean o;
    private static final ia<Integer, dq> dq = new ia<>(16, 16);

    /* renamed from: d, reason: collision with root package name */
    private static final dq f9437d = new dq(null);

    static {
        dq();
    }

    private dq(JSONObject jSONObject) {
        Boolean bool;
        this.ia = jSONObject;
        JSONObject jSONObject2 = null;
        r0 = null;
        r0 = null;
        Boolean bool2 = null;
        if (jSONObject == null || iw("bugfix")) {
            bool = null;
        } else {
            JSONObject optJSONObject = jSONObject.optJSONObject("bugfix");
            if (optJSONObject != null && optJSONObject.has("default") && !iw("default")) {
                bool2 = Boolean.valueOf(optJSONObject.optInt("default", 0) == 1);
            }
            Boolean bool3 = bool2;
            jSONObject2 = optJSONObject;
            bool = bool3;
        }
        this.kk = jSONObject2;
        this.o = bool;
    }

    private static dq d(DownloadInfo downloadInfo) {
        if (iw) {
            return f9437d;
        }
        try {
            String downloadSettingString = downloadInfo.getDownloadSettingString();
            if (!TextUtils.isEmpty(downloadSettingString)) {
                return new dq(new JSONObject(downloadSettingString));
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return f9437d;
    }

    public static JSONObject d() {
        return ox.ir();
    }

    public static void d(int i) {
        dq dqVar = mn;
        if (dqVar != null && dqVar.no == i) {
            mn = null;
        }
        ia<Integer, dq> iaVar = dq;
        synchronized (iaVar) {
            iaVar.remove(Integer.valueOf(i));
        }
    }

    public static dq dq(int i) {
        return dq(i, (DownloadInfo) null);
    }

    private static dq dq(int i, DownloadInfo downloadInfo) {
        dq dqVar;
        dq dqVar2 = mn;
        if (dqVar2 != null && dqVar2.no == i) {
            return dqVar2;
        }
        ia<Integer, dq> iaVar = dq;
        synchronized (iaVar) {
            dqVar = iaVar.get(Integer.valueOf(i));
        }
        if (dqVar == null) {
            dqVar = downloadInfo == null ? ox(i) : d(downloadInfo);
            synchronized (iaVar) {
                iaVar.put(Integer.valueOf(i), dqVar);
            }
        }
        dqVar.no = i;
        mn = dqVar;
        return dqVar;
    }

    public static dq dq(DownloadInfo downloadInfo) {
        return downloadInfo == null ? f9437d : dq(downloadInfo.getId(), downloadInfo);
    }

    public static dq dq(JSONObject jSONObject) {
        if (jSONObject == null || jSONObject == d() || iw) {
            return f9437d;
        }
        dq dqVar = mn;
        if (dqVar != null && dqVar.ia == jSONObject) {
            return dqVar;
        }
        ia<Integer, dq> iaVar = dq;
        synchronized (iaVar) {
            try {
                for (dq dqVar2 : iaVar.values()) {
                    if (dqVar2.ia == jSONObject) {
                        mn = dqVar2;
                        return dqVar2;
                    }
                }
                dq dqVar3 = new dq(jSONObject);
                mn = dqVar3;
                return dqVar3;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void dq() {
        Boolean bool;
        JSONObject ir = ox.ir();
        iw = ir.optInt("disable_task_setting", 0) == 1;
        ox = ir.optJSONObject("disabled_task_keys");
        JSONObject optJSONObject = ir.optJSONObject("bugfix");
        if (optJSONObject == null || !optJSONObject.has("default")) {
            bool = null;
        } else {
            bool = Boolean.valueOf(optJSONObject.optInt("default", 0) == 1);
        }
        p = optJSONObject;
        s = bool;
    }

    public static void dq(int i, JSONObject jSONObject) {
        dq dqVar;
        if (jSONObject == null || jSONObject == d() || iw) {
            return;
        }
        ia<Integer, dq> iaVar = dq;
        synchronized (iaVar) {
            try {
                dq dqVar2 = mn;
                if (dqVar2 == null || dqVar2.ia != jSONObject) {
                    Iterator<dq> it = iaVar.values().iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            dqVar = null;
                            break;
                        }
                        dqVar = it.next();
                        if (dqVar.ia == jSONObject) {
                            dqVar.no = i;
                            break;
                        }
                    }
                    if (dqVar == null) {
                        dqVar2 = new dq(jSONObject);
                        dqVar2.no = i;
                    } else {
                        dqVar2 = dqVar;
                    }
                    mn = dqVar2;
                } else {
                    dqVar2.no = i;
                }
                dq.put(Integer.valueOf(i), dqVar2);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void dq(String str, boolean z) {
        try {
            if (p == null) {
                p = new JSONObject();
            }
            p.put(str, z ? 1 : 0);
        } catch (JSONException unused) {
        }
    }

    public static boolean iw(String str) {
        JSONObject jSONObject = ox;
        return jSONObject != null && jSONObject.optInt(str, 0) == 1;
    }

    public static dq ox() {
        return f9437d;
    }

    private static dq ox(int i) {
        DownloadInfo downloadInfo;
        if (iw) {
            return f9437d;
        }
        Context ob = ox.ob();
        return (ob == null || (downloadInfo = Downloader.getInstance(ob).getDownloadInfo(i)) == null) ? f9437d : d(downloadInfo);
    }

    public int d(String str) {
        return dq(str, 0);
    }

    public boolean d(String str, boolean z) {
        if (this.kk != null && !iw(str)) {
            if (this.kk.has(str)) {
                return this.kk.optInt(str, z ? 1 : 0) == 1;
            }
            Boolean bool = this.o;
            if (bool != null) {
                return bool.booleanValue();
            }
        }
        JSONObject jSONObject = p;
        if (jSONObject != null) {
            if (jSONObject.has(str)) {
                return p.optInt(str, z ? 1 : 0) == 1;
            }
            Boolean bool2 = s;
            if (bool2 != null) {
                return bool2.booleanValue();
            }
        }
        return z;
    }

    public double dq(String str, double d2) {
        JSONObject jSONObject = this.ia;
        return (jSONObject == null || !jSONObject.has(str) || iw(str)) ? d().optDouble(str, d2) : this.ia.optDouble(str, d2);
    }

    public int dq(String str, int i) {
        JSONObject jSONObject = this.ia;
        return (jSONObject == null || !jSONObject.has(str) || iw(str)) ? d().optInt(str, i) : this.ia.optInt(str, i);
    }

    public long dq(String str, long j) {
        JSONObject jSONObject = this.ia;
        return (jSONObject == null || !jSONObject.has(str) || iw(str)) ? d().optLong(str, j) : this.ia.optLong(str, j);
    }

    public String dq(String str, String str2) {
        JSONObject jSONObject = this.ia;
        return (jSONObject == null || !jSONObject.has(str) || iw(str)) ? d().optString(str, str2) : this.ia.optString(str, str2);
    }

    public boolean dq(String str) {
        return d(str, false);
    }

    public String ox(String str) {
        return dq(str, "");
    }

    public JSONObject p(String str) {
        JSONObject jSONObject = this.ia;
        return (jSONObject == null || !jSONObject.has(str) || iw(str)) ? d().optJSONObject(str) : this.ia.optJSONObject(str);
    }

    public JSONArray s(String str) {
        JSONObject jSONObject = this.ia;
        return (jSONObject == null || !jSONObject.has(str) || iw(str)) ? d().optJSONArray(str) : this.ia.optJSONArray(str);
    }
}
