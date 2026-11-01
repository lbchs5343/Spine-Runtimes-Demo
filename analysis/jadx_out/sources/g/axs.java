package g;

import android.content.Context;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Handler;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.google.android.gms.internal.ads.zzbcn;
import com.google.android.gms.internal.ads.zzcaj;
import com.google.android.gms.internal.ads.zzcfk;
import com.google.android.gms.internal.ads.zzful;
import com.google.android.gms.internal.ads.zzfum;
import com.google.android.gms.internal.ads.zzfvf;
import com.google.android.gms.internal.ads.zzfvj;
import com.google.android.gms.internal.ads.zzfvk;
import com.google.android.gms.internal.ads.zzfvx;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class axs implements alj, fnt {

    /* renamed from: a, reason: collision with root package name */
    public Object f11036a;

    /* renamed from: d, reason: collision with root package name */
    public Object f11037d;

    /* renamed from: e, reason: collision with root package name */
    public Object f11038e;

    /* renamed from: f, reason: collision with root package name */
    public Object f11039f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f11040g;
    public Object h;

    public axs(Context context, eoy eoyVar, ffr ffrVar) {
        this.h = context;
        this.f11036a = eoyVar;
        this.f11037d = ffrVar;
        this.f11038e = new gwx(this, true);
        this.f11039f = new gwx(this, false);
    }

    public axs(alj aljVar, Handler handler, ghz ghzVar, String str) {
        this.f11040g = false;
        this.f11037d = aljVar;
        this.f11038e = handler;
        this.h = ghzVar;
        this.f11039f = str;
        this.f11036a = new byd(26, this);
    }

    public axs(JSONObject jSONObject, JSONObject jSONObject2, JSONObject jSONObject3) {
        if (jSONObject != null) {
            if (jSONObject.has("body")) {
                this.f11036a = jSONObject.optJSONObject("body");
            } else {
                this.f11036a = jSONObject.optJSONObject("main_template");
            }
            this.f11037d = jSONObject.optJSONObject("sub_templates");
            JSONObject optJSONObject = jSONObject.has(TTDownloadField.TT_META) ? jSONObject.optJSONObject(TTDownloadField.TT_META) : jSONObject.optJSONObject("template_info");
            if (optJSONObject != null) {
                if (jSONObject.has("body")) {
                    this.f11040g = true;
                    String optString = optJSONObject.optString("version");
                    this.f11039f = optString;
                    if (TextUtils.isEmpty(optString)) {
                        this.f11039f = "3.0";
                    }
                } else {
                    this.f11039f = optJSONObject.optString(PluginConstants.KEY_SDK_VERSION);
                }
                if (optJSONObject.has("adType")) {
                    optJSONObject.optString("adType");
                }
            } else if (jSONObject.has("body")) {
                this.f11039f = "3.0";
                this.f11040g = true;
            }
            this.f11038e = jSONObject2;
            this.h = jSONObject3;
        }
    }

    @Override // g.fnt
    public void _ck(nk nkVar) {
        ((ecd) this.f11039f).q.post(new efr(this, 9, nkVar));
    }

    @Override // g.alj
    public void b() {
        boolean z = true;
        this.f11040g = true;
        ((alj) this.f11037d).b();
        Context context = (Context) this.h;
        if (context != null) {
            z = context.getSharedPreferences("TrineaAndroidCommon", 0).getBoolean((String) this.f11039f, true);
        }
        if (z) {
            ((Handler) this.f11038e).postDelayed((byd) this.f11036a, 3000);
        }
    }

    @Override // g.alj
    public void c() {
        this.f11040g = false;
        ((alj) this.f11037d).c();
    }

    public void i(boolean z) {
        IntentFilter intentFilter = new IntentFilter("com.android.vending.billing.PURCHASES_UPDATED");
        IntentFilter intentFilter2 = new IntentFilter("com.android.vending.billing.LOCAL_BROADCAST_PURCHASES_UPDATED");
        intentFilter2.addAction("com.android.vending.billing.ALTERNATIVE_BILLING");
        this.f11040g = z;
        gwx gwxVar = (gwx) this.f11039f;
        Context context = (Context) this.h;
        gwxVar.f(context, intentFilter2);
        if (!this.f11040g) {
            ((gwx) this.f11038e).f(context, intentFilter);
            return;
        }
        gwx gwxVar2 = (gwx) this.f11038e;
        synchronized (gwxVar2) {
            try {
                if (gwxVar2.f18914c) {
                    return;
                }
                if (Build.VERSION.SDK_INT >= 33) {
                    context.registerReceiver(gwxVar2, intentFilter, "com.google.android.finsky.permission.PLAY_BILLING_LIBRARY_BROADCAST", null, true != gwxVar2.f18915d ? 4 : 2);
                } else {
                    context.registerReceiver(gwxVar2, intentFilter, "com.google.android.finsky.permission.PLAY_BILLING_LIBRARY_BROADCAST", null);
                }
                gwxVar2.f18914c = true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public zzfvk j() {
        zzfvj zzc = zzfvk.zzc();
        if (!((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzlf)).booleanValue() || TextUtils.isEmpty((String) this.f11036a)) {
            String str = (String) this.f11039f;
            if (str != null) {
                zzc.zzb(str);
            } else {
                m("Missing session token and/or appId", "onLMDupdate");
            }
        } else {
            zzc.zza((String) this.f11036a);
        }
        return zzc.zzc();
    }

    public ArrayList k() {
        JSONObject jSONObject = (JSONObject) this.f11037d;
        if (jSONObject == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            abm p = p(jSONObject.optJSONObject(keys.next()));
            if (p != null) {
                arrayList.add(p);
            }
        }
        return arrayList;
    }

    public void l(nk nkVar) {
        fbd fbdVar = (fbd) ((ecd) this.f11039f).f15294g.get((dzu) this.f11037d);
        if (fbdVar != null) {
            fbdVar.w(nkVar);
        }
    }

    public void m(String str, String str2) {
        agd.e(str);
        if (((zzcfk) this.f11037d) != null) {
            HashMap hashMap = new HashMap();
            hashMap.put("message", str);
            hashMap.put("action", str2);
            zzcaj.zze.execute(new eax(this, "onError", hashMap, 24, false));
        }
    }

    public void n(zzcfk zzcfkVar, zzfvf zzfvfVar) {
        if (zzcfkVar == null) {
            m("adWebview missing", "onLMDShow");
            return;
        }
        this.f11037d = zzcfkVar;
        if (!this.f11040g && !o(zzcfkVar.getContext())) {
            m("LMDOverlay not bound", "on_play_store_bind");
            return;
        }
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzlf)).booleanValue()) {
            this.f11036a = zzfvfVar.zzh();
        }
        if (((eap) this.h) == null) {
            this.h = new eap(6, this);
        }
        zzful zzfulVar = (zzful) this.f11038e;
        if (zzfulVar != null) {
            zzfulVar.zzd(zzfvfVar, (eap) this.h);
        }
    }

    public synchronized boolean o(Context context) {
        if (!zzfvx.zza(context)) {
            return false;
        }
        try {
            this.f11038e = zzfum.zza(context);
        } catch (NullPointerException e2) {
            agd.e("Error connecting LMD Overlay service");
            ti.f20033a.f20034ab.zzw(e2, "LastMileDeliveryOverlay.bindLastMileDeliveryService");
        }
        if (((zzful) this.f11038e) == null) {
            this.f11040g = false;
            return false;
        }
        if (((eap) this.h) == null) {
            this.h = new eap(6, this);
        }
        this.f11040g = true;
        return true;
    }

    @Override // g.alj
    public void onDestroy() {
        this.f11040g = false;
        ((alj) this.f11037d).onDestroy();
    }

    /* JADX WARN: Removed duplicated region for block: B:103:0x0174  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x0184 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public abm p(JSONObject jSONObject) {
        abm p;
        if (jSONObject == null) {
            return null;
        }
        String optString = jSONObject.has("type") ? jSONObject.optString("type") : jSONObject.optString(abn.EXTRA_UA_APP_NAME);
        String optString2 = jSONObject.optString(TTDownloadField.TT_ID);
        JSONObject jSONObject2 = new JSONObject();
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            if (!TextUtils.equals(next, "children")) {
                try {
                    jSONObject2.put(next, jSONObject.opt(next));
                } catch (JSONException e2) {
                    e2.printStackTrace();
                }
            }
        }
        abm abmVar = new abm();
        abmVar.f9925c = optString2;
        if (this.f11040g && TextUtils.equals("Video", optString)) {
            abmVar.f9927e = awf.c(optString, "V3");
        } else {
            abmVar.f9927e = optString;
        }
        abmVar.f9928f = jSONObject2;
        abmVar.f9926d = (String) this.f11039f;
        if (jSONObject2.has("i18n")) {
            abmVar.f9923a = jSONObject2.optJSONObject("i18n");
        }
        boolean equals = TextUtils.equals(optString, "CustomComponent");
        if (equals) {
            JSONObject jSONObject3 = abmVar.f9928f;
            JSONObject jSONObject4 = (JSONObject) this.h;
            if (jSONObject4 != null && jSONObject3 != null) {
                try {
                    String optString3 = jSONObject4.optString(jSONObject3.optString("targetId"));
                    if (!TextUtils.isEmpty(optString3)) {
                        JSONObject jSONObject5 = new JSONObject(optString3);
                        JSONObject optJSONObject = jSONObject3.optJSONObject("targetProps");
                        if (optJSONObject != null) {
                            Iterator<String> keys2 = optJSONObject.keys();
                            while (keys2.hasNext()) {
                                String next2 = keys2.next();
                                Object opt = optJSONObject.opt(next2);
                                if (!TextUtils.equals(next2, "events") || !jSONObject5.has("events")) {
                                    jSONObject5.put(next2, opt);
                                } else if (opt instanceof JSONArray) {
                                    JSONArray optJSONArray = jSONObject5.optJSONArray("events");
                                    JSONArray jSONArray = (JSONArray) opt;
                                    if (jSONArray != null && jSONArray.length() > 0) {
                                        if (optJSONArray == null) {
                                            optJSONArray = new JSONArray();
                                        }
                                        for (int i = 0; i < jSONArray.length(); i++) {
                                            Object opt2 = jSONArray.opt(i);
                                            if (opt2 != null) {
                                                optJSONArray.put(opt2);
                                            }
                                        }
                                    }
                                }
                            }
                            JSONArray optJSONArray2 = jSONObject.optJSONArray("children");
                            if (optJSONArray2 == null) {
                                optJSONArray2 = new JSONArray();
                            }
                            optJSONArray2.put(jSONObject5);
                            if (!jSONObject.has("children")) {
                                jSONObject.put("children", optJSONArray2);
                            }
                        }
                    }
                } catch (JSONException e3) {
                    e3.printStackTrace();
                }
            }
        }
        JSONArray optJSONArray3 = jSONObject.optJSONArray("children");
        if (optJSONArray3 != null && optJSONArray3.length() > 0) {
            for (int i2 = 0; i2 < optJSONArray3.length(); i2++) {
                JSONObject optJSONObject2 = optJSONArray3.optJSONObject(i2);
                String optString4 = jSONObject.has("type") ? jSONObject.optString("type") : jSONObject.optString(abn.EXTRA_UA_APP_NAME);
                String ae = dzm.ae(optJSONObject2.optString(TTDownloadField.TT_ID), (JSONObject) this.f11038e);
                if (TextUtils.equals(optString4, "Template")) {
                    JSONObject jSONObject6 = (JSONObject) this.f11037d;
                    if (jSONObject6 != null) {
                        optJSONObject2 = jSONObject6.optJSONObject(ae);
                    } else {
                        p = null;
                        if (p != null) {
                            if (abmVar.f9924b == null) {
                                abmVar.f9924b = new ArrayList();
                            }
                            abmVar.f9924b.add(p);
                        }
                    }
                }
                p = p(optJSONObject2);
                if (p != null) {
                }
            }
        }
        return abmVar;
    }
}
