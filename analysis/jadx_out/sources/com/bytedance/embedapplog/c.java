package com.bytedance.embedapplog;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Log;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.bytedance.sdk.openadsdk.mediation.init.MediationConfigUserInfoForSegment;
import g.tn;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class c {
    private static final String[] iw = {"channel", "package", "app_version"};

    /* renamed from: d, reason: collision with root package name */
    private final Context f709d;
    private boolean dq;
    private final SharedPreferences mn;
    private final u ox;
    private final ArrayList<ji> s = new ArrayList<>(32);
    private int ia = 0;
    private JSONObject p = new JSONObject();

    public c(Context context, u uVar) {
        this.f709d = context;
        this.ox = uVar;
        this.mn = uVar.p();
        if (dq.f712d) {
            bx.dq(context);
        }
    }

    private synchronized void d(JSONObject jSONObject) {
        if (jSONObject == null) {
            jo.d("null abconfig", null);
            return;
        }
        String optString = q().optString("ab_version");
        if (!TextUtils.isEmpty(optString)) {
            String[] split = optString.split(",");
            HashSet hashSet = new HashSet();
            for (String str : split) {
                if (!TextUtils.isEmpty(str)) {
                    hashSet.add(str);
                }
            }
            Iterator<String> keys = jSONObject.keys();
            HashSet hashSet2 = new HashSet();
            while (keys.hasNext()) {
                String next = keys.next();
                if (next instanceof String) {
                    String str2 = next;
                    if (!TextUtils.isEmpty(str2)) {
                        try {
                            hashSet2.add(jSONObject.getJSONObject(str2).optString("vid"));
                        } catch (JSONException e2) {
                            jo.d(e2);
                        }
                    }
                }
            }
            hashSet.retainAll(hashSet2);
            d("ab_version", dq(hashSet));
        }
    }

    public static boolean d(String str) {
        if (!TextUtils.isEmpty(str) && !MediationConfigUserInfoForSegment.GENDER_UNKNOWN.equalsIgnoreCase(str) && !"Null".equalsIgnoreCase(str)) {
            for (int i = 0; i < str.length(); i++) {
                if (str.charAt(i) != '0') {
                    return true;
                }
            }
        }
        return false;
    }

    private boolean d(String str, Object obj) {
        boolean z;
        Object opt = q().opt(str);
        if ((obj == null || obj.equals(opt)) && (obj != null || opt == null)) {
            z = false;
        } else {
            synchronized (this) {
                try {
                    JSONObject jSONObject = this.p;
                    JSONObject jSONObject2 = new JSONObject();
                    yo.d(jSONObject2, jSONObject);
                    jSONObject2.put(str, obj);
                    this.p = jSONObject2;
                } catch (JSONException e2) {
                    jo.d(e2);
                }
            }
            z = true;
        }
        jo.dq("updateHeader, " + str + ", " + opt + ", " + obj, null);
        return z;
    }

    private String dq(Set<String> set) {
        StringBuilder sb = new StringBuilder();
        Iterator<String> it = set.iterator();
        while (it.hasNext()) {
            sb.append(it.next());
            if (it.hasNext()) {
                sb.append(",");
            }
        }
        return sb.toString();
    }

    public static void dq(JSONObject jSONObject, String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        jSONObject.put(str, str2);
    }

    private boolean dq(ji jiVar) {
        boolean z = !this.ox.fw() && jiVar.p;
        if (jo.f730d) {
            jo.dq("needSyncFromSub " + jiVar + " " + z, null);
        }
        return z;
    }

    public static boolean dq(String str) {
        int length = str != null ? str.length() : 0;
        if (length < 13 || length > 128) {
            return false;
        }
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if ((charAt < '0' || charAt > '9') && ((charAt < 'a' || charAt > 'f') && ((charAt < 'A' || charAt > 'F') && charAt != '-'))) {
                return false;
            }
        }
        return true;
    }

    private JSONObject q() {
        return this.p;
    }

    public int d() {
        int optInt = this.dq ? q().optInt("version_code", -1) : -1;
        for (int i = 0; i < 3 && optInt == -1; i++) {
            iw();
            optInt = this.dq ? q().optInt("version_code", -1) : -1;
        }
        return optInt;
    }

    public <T> T dq(String str, T t) {
        T t2;
        JSONObject q = q();
        if (q == null || (t2 = (T) q.opt(str)) == null) {
            t2 = null;
        }
        return t2 == null ? t : t2;
    }

    public JSONObject dq() {
        if (this.dq) {
            return q();
        }
        return null;
    }

    public void dq(HashMap<String, Object> hashMap) {
        JSONObject jSONObject = null;
        if (hashMap != null && !hashMap.isEmpty()) {
            try {
                jSONObject = q().optJSONObject(MediationConstant.KEY_USE_POLICY_OBJ_CUSTOM);
                if (jSONObject == null) {
                    jSONObject = new JSONObject();
                }
                for (Map.Entry<String, Object> entry : hashMap.entrySet()) {
                    if (!TextUtils.isEmpty(entry.getKey())) {
                        jSONObject.put(entry.getKey(), entry.getValue());
                    }
                }
            } catch (JSONException e2) {
                jo.d(e2);
            }
        }
        if (d(MediationConstant.KEY_USE_POLICY_OBJ_CUSTOM, jSONObject)) {
            this.ox.d(jSONObject);
        }
    }

    public void dq(JSONObject jSONObject) {
        this.ox.ox(jSONObject);
        d(jSONObject);
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x00e6 A[ADDED_TO_REGION] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean dq(JSONObject jSONObject, String str, String str2, String str3) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean d2;
        int i;
        int optInt;
        boolean z4;
        boolean z5;
        if (jo.f730d) {
            StringBuilder o = tn.o("saveRegisterInfo, ", str, ", ", str2, ", ");
            o.append(str3);
            o.append(", ");
            o.append(jSONObject);
            jo.dq(o.toString(), null);
        }
        boolean d3 = d(str);
        boolean d4 = d(str2);
        try {
            d2 = d(str3);
            z2 = true;
            try {
                i = this.mn.getInt("version_code", 0);
                z = d3;
                try {
                    optInt = q().optInt("version_code", 0);
                    z3 = false;
                } catch (JSONException e2) {
                    e = e2;
                    z3 = false;
                    jo.d(e);
                    if (z) {
                    }
                }
            } catch (JSONException e3) {
                e = e3;
                z = d3;
            }
        } catch (JSONException e4) {
            e = e4;
            z = d3;
            z2 = true;
        }
        try {
            SharedPreferences.Editor edit = this.mn.edit();
            if (i != optInt) {
                edit.putInt("version_code", optInt);
            }
            if (z) {
                long currentTimeMillis = System.currentTimeMillis();
                edit.putLong("register_time", currentTimeMillis);
                d("register_time", Long.valueOf(currentTimeMillis));
            } else if (!z) {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("response", jSONObject);
                dq.dq("tt_fetch_did_error", jSONObject2);
            }
            String optString = q().optString("device_id", "");
            if (z && d("device_id", str)) {
                edit.putString("device_id", str);
                z4 = true;
            } else {
                z4 = false;
            }
            String optString2 = q().optString("install_id", "");
            if (d4 && d("install_id", str2)) {
                edit.putString("install_id", str2);
                z4 = true;
            }
            String optString3 = q().optString("ssid", "");
            if (d2 && d("ssid", str3)) {
                edit.putString("ssid", str3);
                z5 = true;
            } else {
                z5 = z4;
            }
            dq.no().dq(z5, optString, str, optString2, str2, optString3, str3);
            edit.apply();
        } catch (JSONException e5) {
            e = e5;
            jo.d(e);
            if (z) {
            }
        }
        return (z || !d4) ? z3 : z2;
    }

    public String ia() {
        return q().optString("install_id", "");
    }

    public long ig() {
        return q().optLong("register_time", 0L);
    }

    public boolean iw() {
        synchronized (this.s) {
            try {
                if (this.s.size() == 0) {
                    this.s.add(new bl(this.f709d, this.ox));
                    this.s.add(new op(this.f709d));
                    this.s.add(new ir(this.f709d, this.ox));
                    this.s.add(new ce(this.f709d));
                    this.s.add(new wn(this.f709d));
                    this.s.add(new j(this.f709d, this.ox));
                    this.s.add(new nh(this.f709d));
                    this.s.add(new ob(this.f709d, this.ox));
                    this.s.add(new l(this.f709d, this.ox));
                    this.s.add(new t());
                    this.s.add(new gx(this.ox));
                    this.s.add(new by(this.f709d));
                    this.s.add(new uh(this.f709d));
                    this.s.add(new xz(this.f709d, this.ox));
                    this.s.add(new kx(this.f709d, this.ox));
                    this.s.add(new vf(this.f709d, this.ox));
                    this.s.add(new n(this.f709d, this.ox));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        JSONObject q = q();
        JSONObject jSONObject = new JSONObject();
        yo.d(jSONObject, q);
        Iterator<ji> it = this.s.iterator();
        boolean z = true;
        int i = 0;
        int i2 = 0;
        while (it.hasNext()) {
            ji next = it.next();
            if (!next.dq || next.ox || dq(next)) {
                try {
                    next.dq = next.dq(jSONObject);
                } catch (SecurityException e2) {
                    if (!next.f727d) {
                        i++;
                        jo.d("loadHeader, " + this.ia, e2);
                        if (!next.dq && this.ia > 10) {
                            next.dq = true;
                        }
                    }
                } catch (JSONException e3) {
                    jo.d(e3);
                }
                if (!next.dq && !next.f727d) {
                    i2++;
                }
            }
            z &= next.dq || next.f727d;
        }
        if (z) {
            int length = iw.length;
            for (int i3 = 0; i3 < length; i3++) {
                z &= !TextUtils.isEmpty(jSONObject.optString(r7[i3]));
            }
            String optString = jSONObject.optString("user_unique_id", null);
            if (!TextUtils.isEmpty(optString)) {
                try {
                    jSONObject.put("user_unique_id", optString);
                } catch (JSONException unused) {
                }
            }
        }
        this.p = jSONObject;
        this.dq = z;
        if (jo.f730d) {
            jo.dq("loadHeader, " + this.dq + ", " + this.ia + ", " + this.p.toString(), null);
        } else {
            jo.p("loadHeader, " + this.dq + ", " + this.ia, null);
        }
        if (i > 0 && i == i2) {
            this.ia++;
            if (no() != 0) {
                this.ia += 10;
            }
        }
        if (this.dq) {
            dq.no().dq(mn(), ia(), kk());
        }
        return this.dq;
    }

    public String kk() {
        return q().optString("ssid", "");
    }

    public String mn() {
        return q().optString("device_id", "");
    }

    public String mp() {
        return q().optString("ab_sdk_version", "");
    }

    public int no() {
        String optString = q().optString("device_id", "");
        q().optString("install_id", "");
        if (d(optString)) {
            return this.mn.getInt("version_code", 0) == q().optInt("version_code", -1) ? 1 : 2;
        }
        return 0;
    }

    public String o() {
        return q().optString("user_unique_id", "");
    }

    public String ox() {
        String optString = this.dq ? q().optString("app_version", null) : null;
        for (int i = 0; i < 3 && optString == null; i++) {
            iw();
            optString = this.dq ? q().optString("app_version", null) : null;
        }
        return optString;
    }

    public void p() {
        le.iw().kk();
    }

    public void s() {
        try {
            new vf(this.f709d, this.ox).dq(this.p);
        } catch (Exception e2) {
            Log.e("xgc_od", "e:" + e2.getMessage());
        }
    }
}
