package g;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.google.android.gms.internal.ads.zzazl;
import com.google.android.gms.internal.ads.zzbcn;
import com.google.android.gms.internal.ads.zzbzt;
import com.google.android.gms.internal.ads.zzcaj;
import com.google.android.gms.internal.ads.zzfxd;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class cmo implements gil {
    public SharedPreferences.Editor ac;

    /* renamed from: g, reason: collision with root package name */
    public dcy f13134g;
    public SharedPreferences q;
    public String u;
    public boolean v;
    public String w;
    public final Object k = new Object();
    public final ArrayList aa = new ArrayList();
    public zzazl j = null;

    /* renamed from: b, reason: collision with root package name */
    public boolean f13129b = true;

    /* renamed from: c, reason: collision with root package name */
    public boolean f13130c = true;
    public String i = "-1";
    public int t = -1;

    /* renamed from: f, reason: collision with root package name */
    public zzbzt f13133f = new zzbzt("", 0);

    /* renamed from: d, reason: collision with root package name */
    public long f13131d = 0;
    public long s = 0;
    public int x = -1;
    public int ad = 0;
    public Set r = Collections.EMPTY_SET;
    public JSONObject z = new JSONObject();
    public boolean l = true;
    public boolean o = true;
    public String p = null;

    /* renamed from: ab, reason: collision with root package name */
    public String f13128ab = "";

    /* renamed from: e, reason: collision with root package name */
    public boolean f13132e = false;

    /* renamed from: a, reason: collision with root package name */
    public String f13127a = "";
    public String y = "{}";
    public int h = -1;
    public int n = -1;
    public long m = 0;

    public final void ae(int i) {
        aj();
        synchronized (this.k) {
            try {
                if (this.ad == i) {
                    return;
                }
                this.ad = i;
                SharedPreferences.Editor editor = this.ac;
                if (editor != null) {
                    editor.putInt("version_code", i);
                    this.ac.apply();
                }
                ah();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void af(long j) {
        aj();
        synchronized (this.k) {
            try {
                if (this.m == j) {
                    return;
                }
                this.m = j;
                SharedPreferences.Editor editor = this.ac;
                if (editor != null) {
                    editor.putLong("sd_app_measure_npa_ts", j);
                    this.ac.apply();
                }
                ah();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean ag() {
        boolean z;
        aj();
        synchronized (this.k) {
            z = this.o;
        }
        return z;
    }

    public final void ah() {
        zzcaj.zza.execute(new aku(14, this));
    }

    public final void ai() {
        aj();
        synchronized (this.k) {
            try {
                this.z = new JSONObject();
                SharedPreferences.Editor editor = this.ac;
                if (editor != null) {
                    editor.remove("native_advanced_settings");
                    this.ac.apply();
                }
                ah();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void aj() {
        dcy dcyVar = this.f13134g;
        if (dcyVar == null || dcyVar.isDone()) {
            return;
        }
        try {
            this.f13134g.get(1L, TimeUnit.SECONDS);
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            zzfxd zzfxdVar = agd.f10175a;
        } catch (CancellationException e2) {
            e = e2;
            agd.f("Fail to initialize AdSharedPreferenceManager.", e);
        } catch (ExecutionException e3) {
            e = e3;
            agd.f("Fail to initialize AdSharedPreferenceManager.", e);
        } catch (TimeoutException e4) {
            e = e4;
            agd.f("Fail to initialize AdSharedPreferenceManager.", e);
        }
    }

    public final void ak(boolean z) {
        aj();
        synchronized (this.k) {
            try {
                long currentTimeMillis = System.currentTimeMillis() + ((Long) edt.f15376a.f15379d.zza(zzbcn.zzke)).longValue();
                SharedPreferences.Editor editor = this.ac;
                if (editor != null) {
                    editor.putBoolean("is_topics_ad_personalization_allowed", z);
                    this.ac.putLong("topics_consent_expiry_time_ms", currentTimeMillis);
                    this.ac.apply();
                }
                ah();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void al(boolean z) {
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zziO)).booleanValue()) {
            aj();
            synchronized (this.k) {
                try {
                    if (this.f13132e == z) {
                        return;
                    }
                    this.f13132e = z;
                    SharedPreferences.Editor editor = this.ac;
                    if (editor != null) {
                        editor.putBoolean("linked_device", z);
                        this.ac.apply();
                    }
                    ah();
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public final boolean am() {
        boolean z;
        aj();
        synchronized (this.k) {
            z = this.f13132e;
        }
        return z;
    }

    public final void an(String str, String str2, boolean z) {
        aj();
        synchronized (this.k) {
            try {
                JSONArray optJSONArray = this.z.optJSONArray(str);
                if (optJSONArray == null) {
                    optJSONArray = new JSONArray();
                }
                int length = optJSONArray.length();
                for (int i = 0; i < optJSONArray.length(); i++) {
                    JSONObject optJSONObject = optJSONArray.optJSONObject(i);
                    if (optJSONObject == null) {
                        return;
                    }
                    if (str2.equals(optJSONObject.optString("template_id"))) {
                        if (z && optJSONObject.optBoolean("uses_media_view", false)) {
                            return;
                        } else {
                            length = i;
                        }
                    }
                }
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("template_id", str2);
                    jSONObject.put("uses_media_view", z);
                    ti.f20033a.v.getClass();
                    jSONObject.put("timestamp_ms", System.currentTimeMillis());
                    optJSONArray.put(length, jSONObject);
                    this.z.put(str, optJSONArray);
                } catch (JSONException unused) {
                    zzfxd zzfxdVar = agd.f10175a;
                }
                SharedPreferences.Editor editor = this.ac;
                if (editor != null) {
                    editor.putString("native_advanced_settings", this.z.toString());
                    this.ac.apply();
                }
                ah();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void ao(int i) {
        aj();
        synchronized (this.k) {
            try {
                this.t = i;
                SharedPreferences.Editor editor = this.ac;
                if (editor != null) {
                    if (i == -1) {
                        editor.remove("gad_has_consent_for_cookies");
                    } else {
                        editor.putInt("gad_has_consent_for_cookies", i);
                    }
                    this.ac.apply();
                }
                ah();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final String ap() {
        String str;
        aj();
        synchronized (this.k) {
            str = this.f13128ab;
        }
        return str;
    }

    public final void aq(long j) {
        aj();
        synchronized (this.k) {
            try {
                if (this.s == j) {
                    return;
                }
                this.s = j;
                SharedPreferences.Editor editor = this.ac;
                if (editor != null) {
                    editor.putLong("first_ad_req_time_ms", j);
                    this.ac.apply();
                }
                ah();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void ar(String str) {
        aj();
        synchronized (this.k) {
            try {
                if (TextUtils.equals(this.p, str)) {
                    return;
                }
                this.p = str;
                SharedPreferences.Editor editor = this.ac;
                if (editor != null) {
                    editor.putString("display_cutout", str);
                    this.ac.apply();
                }
                ah();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final String as() {
        String str;
        aj();
        synchronized (this.k) {
            str = this.y;
        }
        return str;
    }

    public final JSONObject at() {
        JSONObject jSONObject;
        aj();
        synchronized (this.k) {
            jSONObject = this.z;
        }
        return jSONObject;
    }

    public final void au(int i) {
        aj();
        synchronized (this.k) {
            try {
                if (this.x == i) {
                    return;
                }
                this.x = i;
                SharedPreferences.Editor editor = this.ac;
                if (editor != null) {
                    editor.putInt("request_in_session_count", i);
                    this.ac.apply();
                }
                ah();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final zzbzt av() {
        zzbzt zzbztVar;
        aj();
        synchronized (this.k) {
            try {
                if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzlq)).booleanValue() && this.f13133f.zzj()) {
                    Iterator it = this.aa.iterator();
                    while (it.hasNext()) {
                        ((Runnable) it.next()).run();
                    }
                }
                zzbztVar = this.f13133f;
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzbztVar;
    }

    public final int aw() {
        int i;
        aj();
        synchronized (this.k) {
            i = this.x;
        }
        return i;
    }

    public final boolean ax() {
        boolean z;
        if (!((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzaE)).booleanValue()) {
            return false;
        }
        aj();
        synchronized (this.k) {
            z = this.f13130c;
        }
        return z;
    }

    public final void ay(String str) {
        aj();
        synchronized (this.k) {
            try {
                this.i = str;
                if (this.ac != null) {
                    if (str.equals("-1")) {
                        this.ac.remove("IABTCF_TCString");
                    } else {
                        this.ac.putString("IABTCF_TCString", str);
                    }
                    this.ac.apply();
                }
                ah();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void az(String str) {
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzjb)).booleanValue()) {
            aj();
            synchronized (this.k) {
                try {
                    if (this.y.equals(str)) {
                        return;
                    }
                    this.y = str;
                    SharedPreferences.Editor editor = this.ac;
                    if (editor != null) {
                        editor.putString("inspector_ui_storage", str);
                        this.ac.apply();
                    }
                    ah();
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public final boolean ba() {
        boolean z;
        aj();
        synchronized (this.k) {
            z = this.l;
        }
        return z;
    }

    public final long bb() {
        long j;
        aj();
        synchronized (this.k) {
            j = this.f13131d;
        }
        return j;
    }

    public final void bc(String str) {
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zziO)).booleanValue()) {
            aj();
            synchronized (this.k) {
                try {
                    if (this.f13127a.equals(str)) {
                        return;
                    }
                    this.f13127a = str;
                    SharedPreferences.Editor editor = this.ac;
                    if (editor != null) {
                        editor.putString("linked_ad_unit", str);
                        this.ac.apply();
                    }
                    ah();
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public final String bd() {
        String str;
        aj();
        synchronized (this.k) {
            str = this.p;
        }
        return str;
    }

    public final void be(boolean z) {
        aj();
        synchronized (this.k) {
            try {
                if (z == this.f13130c) {
                    return;
                }
                this.f13130c = z;
                SharedPreferences.Editor editor = this.ac;
                if (editor != null) {
                    editor.putBoolean("gad_idless", z);
                    this.ac.apply();
                }
                ah();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void bf(Context context) {
        synchronized (this.k) {
            try {
                if (this.q != null) {
                    return;
                }
                this.f13134g = zzcaj.zza.zza(new fuy(this, 10, context));
                this.v = true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void bg(int i) {
        aj();
        synchronized (this.k) {
            try {
                if (this.n == i) {
                    return;
                }
                this.n = i;
                SharedPreferences.Editor editor = this.ac;
                if (editor != null) {
                    editor.putInt("sd_app_measure_npa", i);
                    this.ac.apply();
                }
                ah();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final long bh() {
        long j;
        aj();
        synchronized (this.k) {
            j = this.s;
        }
        return j;
    }
}
