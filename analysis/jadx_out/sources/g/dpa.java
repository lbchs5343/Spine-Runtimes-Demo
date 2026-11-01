package g;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.internal.ads.zzbce;
import com.google.android.gms.internal.ads.zzbcl;
import com.google.android.gms.internal.ads.zzbcn;
import com.google.android.gms.internal.ads.zzbdo;
import com.google.android.gms.internal.ads.zzbkd;
import com.google.android.gms.internal.ads.zzbmm;
import com.google.android.gms.internal.ads.zzcfk;
import com.google.android.gms.internal.ads.zzcgu;
import com.google.android.gms.internal.ads.zzcvt;
import com.google.android.gms.internal.ads.zzedp;
import com.google.android.gms.internal.ads.zzfet;
import com.google.android.gms.internal.ads.zzfew;
import com.google.android.gms.internal.ads.zzfhc;
import com.google.android.gms.internal.ads.zzgee;
import com.google.android.gms.internal.ads.zzwr;
import j$.util.Objects;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.Type;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TimeZone;
import java.util.TreeMap;
import java.util.concurrent.Executor;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class dpa implements dad, zzgee {

    /* renamed from: a, reason: collision with root package name */
    public static final Object f14563a = new Object();

    /* renamed from: b, reason: collision with root package name */
    public static dpa f14564b;

    /* renamed from: c, reason: collision with root package name */
    public Object f14565c;

    /* renamed from: d, reason: collision with root package name */
    public Object f14566d;

    /* renamed from: e, reason: collision with root package name */
    public Object f14567e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f14568f;

    /* renamed from: g, reason: collision with root package name */
    public Object f14569g;

    public dpa(int i) {
        this.f14568f = i;
        switch (i) {
            case 5:
                this.f14569g = new tl(0);
                this.f14566d = new SparseArray();
                this.f14567e = new asv();
                this.f14565c = new tl(0);
                break;
            default:
                this.f14567e = new ArrayList();
                this.f14565c = new ArrayList();
                break;
        }
    }

    public dpa(Context context) {
        this.f14568f = 0;
        StringBuilder sb = null;
        this.f14566d = null;
        this.f14569g = fgj.d(context);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(acw.af((Context) this.f14569g));
        String str = File.separator;
        try {
            sb = buj.av(awf.r(sb2, str, "config", str, "adas"));
        } catch (IOException unused) {
        }
        String sb3 = sb == null ? "" : sb.toString();
        if (!TextUtils.isEmpty(sb3)) {
            fsv fsvVar = new fsv(3);
            TimeZone timeZone = ex.f16310d;
            this.f14565c = (Map) ex.h(sb3, (Type) fsvVar.z, mh.f19642a, ex.f16307a, new cbj[0]);
        }
        if (((Map) this.f14565c) == null) {
            this.f14565c = new TreeMap();
        }
        StringBuilder sb4 = new StringBuilder();
        sb4.append(acw.af((Context) this.f14569g));
        String str2 = File.separator;
        String r = awf.r(sb4, str2, "config", str2, "adRegexList.txt");
        try {
            this.f14567e = buj.w(r);
        } catch (Exception unused2) {
        }
        if (acw.u((ArrayList) this.f14567e)) {
            ArrayList arrayList = new ArrayList();
            this.f14567e = arrayList;
            arrayList.add("跳过广告\\s*\\(*\\s*\\d*\\S*\\s*\\)*");
            ((ArrayList) this.f14567e).add("跳过广告\\s*>");
            ((ArrayList) this.f14567e).add("跳过\\s*\\(*\\s*\\d*\\S*\\s*\\)*");
            ((ArrayList) this.f14567e).add("\\(*\\s*\\d*\\S*\\s*\\)*\\s*跳过");
            ((ArrayList) this.f14567e).add("跳过\\s*>");
            ((ArrayList) this.f14567e).add("广告\\s*\\(*\\s*\\d*\\S*\\s*\\)*");
            ((ArrayList) this.f14567e).add("广告\\s*>");
            try {
                buj.al((ArrayList) this.f14567e, r);
            } catch (Exception unused3) {
            }
        }
    }

    public dpa(Drawable.Callback callback, String str, fsj fsjVar, HashMap hashMap) {
        this.f14568f = 1;
        if (TextUtils.isEmpty(str) || str.charAt(str.length() - 1) == '/') {
            this.f14566d = str;
        } else {
            this.f14566d = str.concat("/");
        }
        this.f14565c = hashMap;
        this.f14567e = fsjVar;
        if (callback instanceof View) {
            this.f14569g = ((View) callback).getContext().getApplicationContext();
        } else {
            this.f14569g = null;
        }
    }

    public dpa(zzbkd zzbkdVar, Map map, evo evoVar, String str) {
        this.f14568f = 7;
        this.f14565c = map;
        this.f14569g = evoVar;
        this.f14566d = str;
        this.f14567e = zzbkdVar;
    }

    public dpa(zzfhc zzfhcVar, zzcvt zzcvtVar, Executor executor) {
        this.f14568f = 9;
        this.f14569g = zzfhcVar;
        this.f14566d = zzcvtVar;
        this.f14567e = executor;
    }

    public dpa(zzwr zzwrVar, boolean[] zArr) {
        this.f14568f = 11;
        this.f14569g = zzwrVar;
        this.f14566d = zArr;
        int i = zzwrVar.zzb;
        this.f14567e = new boolean[i];
        this.f14565c = new boolean[i];
    }

    public dpa(dpa dpaVar, ffr ffrVar) {
        this.f14568f = 10;
        this.f14567e = new HashMap();
        this.f14565c = new HashMap();
        this.f14569g = dpaVar;
        this.f14566d = ffrVar;
    }

    public dpa(gmr gmrVar) {
        this.f14568f = 8;
        this.f14565c = gmrVar;
        ckd.bf("default_event_parameters");
        this.f14569g = "default_event_parameters";
        this.f14566d = new Bundle();
    }

    public /* synthetic */ dpa(Object obj, Object obj2, Object obj3, Object obj4, int i) {
        this.f14568f = i;
        this.f14569g = obj;
        this.f14566d = obj2;
        this.f14567e = obj3;
        this.f14565c = obj4;
    }

    public dpa(String str, String str2, String str3) {
        this.f14568f = 3;
        this.f14569g = str;
        this.f14566d = str2;
        this.f14567e = str3;
        this.f14565c = str;
    }

    public static dpa h(Context context) {
        if (f14564b == null) {
            synchronized (dpa.class) {
                try {
                    if (f14564b == null) {
                        f14564b = new dpa(context);
                    }
                } finally {
                }
            }
        }
        return f14564b;
    }

    public static void i(Bitmap bitmap) {
        synchronized (f14563a) {
        }
    }

    public gey j(gey geyVar) {
        return ((ffr) this.f14566d).aj(this, geyVar);
    }

    public gey k(String str) {
        HashMap hashMap = (HashMap) this.f14567e;
        if (hashMap.containsKey(str)) {
            return (gey) hashMap.get(str);
        }
        dpa dpaVar = (dpa) this.f14569g;
        if (dpaVar != null) {
            return dpaVar.k(str);
        }
        throw new IllegalArgumentException(awf.c(str, " is not defined"));
    }

    public boolean l(String str) {
        if (((HashMap) this.f14567e).containsKey(str)) {
            return true;
        }
        dpa dpaVar = (dpa) this.f14569g;
        if (dpaVar != null) {
            return dpaVar.l(str);
        }
        return false;
    }

    public void m(String str, gey geyVar) {
        HashMap hashMap = (HashMap) this.f14567e;
        if (((HashMap) this.f14565c).containsKey(str)) {
            return;
        }
        if (geyVar == null) {
            hashMap.remove(str);
        } else {
            hashMap.put(str, geyVar);
        }
    }

    public boolean n() {
        Boolean bool = (Boolean) this.f14566d;
        if (bool != null) {
            return bool.booleanValue();
        }
        boolean an = cro.an((Context) this.f14569g, "ad_auto_skip", false);
        this.f14566d = Boolean.valueOf(an);
        return an;
    }

    public void o(String str) {
        Objects.requireNonNull(str, "baseUrl == null");
        ke keVar = new ke(1);
        keVar.m(null, str);
        eyn n = keVar.n();
        if ("".equals(n.f16376f.get(r0.size() - 1))) {
            this.f14566d = n;
        } else {
            throw new IllegalArgumentException("baseUrl must end in /: " + n);
        }
    }

    @Override // g.dad
    public void onCancel() {
        View view = (View) this.f14569g;
        view.clearAnimation();
        ((ViewGroup) this.f14566d).endViewTransition(view);
        ((androidx.fragment.app.i) this.f14567e).g();
        if (androidx.fragment.app.v.ao(2)) {
            Objects.toString((androidx.fragment.app.a) this.f14565c);
        }
    }

    public Bundle p() {
        char c2;
        gmr gmrVar = (gmr) this.f14565c;
        if (((Bundle) this.f14567e) == null) {
            String string = gmrVar.ar().getString((String) this.f14569g, null);
            if (string != null) {
                try {
                    Bundle bundle = new Bundle();
                    JSONArray jSONArray = new JSONArray(string);
                    for (int i = 0; i < jSONArray.length(); i++) {
                        try {
                            JSONObject jSONObject = jSONArray.getJSONObject(i);
                            String string2 = jSONObject.getString("n");
                            String string3 = jSONObject.getString("t");
                            int hashCode = string3.hashCode();
                            if (hashCode == 100) {
                                if (string3.equals(ada.COLUMN_DOMAIN)) {
                                    c2 = 1;
                                }
                                c2 = 65535;
                            } else if (hashCode != 108) {
                                if (hashCode == 115 && string3.equals("s")) {
                                    c2 = 0;
                                }
                                c2 = 65535;
                            } else {
                                if (string3.equals("l")) {
                                    c2 = 2;
                                }
                                c2 = 65535;
                            }
                            if (c2 == 0) {
                                bundle.putString(string2, jSONObject.getString(ada.COLUMN_VALUE));
                            } else if (c2 == 1) {
                                bundle.putDouble(string2, Double.parseDouble(jSONObject.getString(ada.COLUMN_VALUE)));
                            } else if (c2 != 2) {
                                bgm bgmVar = ((cyg) gmrVar.z).z;
                                cyg.ak(bgmVar);
                                bgmVar.f11518b.i(string3, "Unrecognized persisted bundle type. Type");
                            } else {
                                bundle.putLong(string2, Long.parseLong(jSONObject.getString(ada.COLUMN_VALUE)));
                            }
                        } catch (NumberFormatException | JSONException unused) {
                            bgm bgmVar2 = ((cyg) gmrVar.z).z;
                            cyg.ak(bgmVar2);
                            bgmVar2.f11518b.h("Error reading value from SharedPreferences. Value dropped");
                        }
                    }
                    this.f14567e = bundle;
                } catch (JSONException unused2) {
                    bgm bgmVar3 = ((cyg) gmrVar.z).z;
                    cyg.ak(bgmVar3);
                    bgmVar3.f11518b.h("Error loading bundle from SharedPreferences. Values will be lost");
                }
            }
            if (((Bundle) this.f14567e) == null) {
                this.f14567e = (Bundle) this.f14566d;
            }
        }
        return (Bundle) this.f14567e;
    }

    public void q(String str, gey geyVar) {
        dpa dpaVar = (dpa) this.f14569g;
        HashMap hashMap = (HashMap) this.f14567e;
        if (!hashMap.containsKey(str) && dpaVar != null && dpaVar.l(str)) {
            dpaVar.q(str, geyVar);
        } else {
            if (((HashMap) this.f14565c).containsKey(str)) {
                return;
            }
            if (geyVar == null) {
                hashMap.remove(str);
            } else {
                hashMap.put(str, geyVar);
            }
        }
    }

    public void r(Bundle bundle) {
        String str = (String) this.f14569g;
        gmr gmrVar = (gmr) this.f14565c;
        if (bundle == null) {
            bundle = new Bundle();
        }
        SharedPreferences.Editor edit = gmrVar.ar().edit();
        if (bundle.size() == 0) {
            edit.remove(str);
        } else {
            JSONArray jSONArray = new JSONArray();
            for (String str2 : bundle.keySet()) {
                Object obj = bundle.get(str2);
                if (obj != null) {
                    try {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("n", str2);
                        jSONObject.put(ada.COLUMN_VALUE, obj.toString());
                        if (obj instanceof String) {
                            jSONObject.put("t", "s");
                        } else if (obj instanceof Long) {
                            jSONObject.put("t", "l");
                        } else if (obj instanceof Double) {
                            jSONObject.put("t", ada.COLUMN_DOMAIN);
                        } else {
                            bgm bgmVar = ((cyg) gmrVar.z).z;
                            cyg.ak(bgmVar);
                            bgmVar.f11518b.i(obj.getClass(), "Cannot serialize bundle value to SharedPreferences. Type");
                        }
                        jSONArray.put(jSONObject);
                    } catch (JSONException e2) {
                        bgm bgmVar2 = ((cyg) gmrVar.z).z;
                        cyg.ak(bgmVar2);
                        bgmVar2.f11518b.i(e2, "Cannot serialize bundle value to SharedPreferences");
                    }
                }
            }
            edit.putString(str, jSONArray.toString());
        }
        edit.apply();
        this.f14567e = bundle;
    }

    public daw s() {
        ArrayList arrayList = (ArrayList) this.f14567e;
        if (((eyn) this.f14566d) == null) {
            throw new IllegalStateException("Base URL required.");
        }
        fys fysVar = (fys) this.f14569g;
        if (fysVar == null) {
            fysVar = new fys(new gjb());
        }
        fys fysVar2 = fysVar;
        dbi dbiVar = bfh.f11444a;
        ao aoVar = bfh.f11446c;
        ArrayList arrayList2 = new ArrayList((ArrayList) this.f14565c);
        List am = aoVar.am(dbiVar);
        arrayList2.addAll(am);
        List aj = aoVar.aj();
        ArrayList arrayList3 = new ArrayList(arrayList.size() + 1 + aj.size());
        arrayList3.add(new dvi(0));
        arrayList3.addAll(arrayList);
        arrayList3.addAll(aj);
        eyn eynVar = (eyn) this.f14566d;
        List unmodifiableList = Collections.unmodifiableList(arrayList3);
        List unmodifiableList2 = Collections.unmodifiableList(arrayList2);
        am.size();
        return new daw(fysVar2, eynVar, unmodifiableList, unmodifiableList2, dbiVar);
    }

    public gey t(gwa gwaVar) {
        gey geyVar = gey.o;
        Iterator t = gwaVar.t();
        while (t.hasNext()) {
            geyVar = ((ffr) this.f14566d).aj(this, gwaVar.g(((Integer) t.next()).intValue()));
            if (geyVar instanceof enl) {
                break;
            }
        }
        return geyVar;
    }

    public String toString() {
        switch (this.f14568f) {
            case 3:
                return ((String) this.f14569g) + ": " + ((String) this.f14566d) + " - '" + ((String) this.f14567e) + '\'';
            default:
                return super.toString();
        }
    }

    public dpa u() {
        return new dpa(this, (ffr) this.f14566d);
    }

    @Override // com.google.android.gms.internal.ads.zzgee
    public void zza(Throwable th) {
        ti.f20033a.f20034ab.zzw(th, "OpenGmsgHandler.attributionReportingManager");
    }

    @Override // com.google.android.gms.internal.ads.zzgee
    public void zzb(Object obj) {
        boolean z;
        String str;
        boolean z2;
        boolean z3;
        Map map = (Map) this.f14565c;
        String str2 = (String) obj;
        zzbce zzbceVar = zzbcn.zzjJ;
        edt edtVar = edt.f15376a;
        if (((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue()) {
            map.put("u", str2);
        }
        zzbkd zzbkdVar = (zzbkd) this.f14567e;
        evo evoVar = (evo) this.f14569g;
        String str3 = (String) this.f14566d;
        zzedp zzedpVar = zzbkdVar.f4848c;
        zzcfk zzcfkVar = (zzcfk) evoVar;
        zzfet zzD = zzcfkVar.zzD();
        zzfew zzR = zzcfkVar.zzR();
        boolean z4 = false;
        String str4 = "";
        if (zzD == null || zzR == null) {
            z = false;
        } else {
            str4 = zzR.zzb;
            z = zzD.zzai;
        }
        zzbce zzbceVar2 = zzbcn.zzkr;
        zzbcl zzbclVar = edtVar.f15379d;
        boolean z5 = (((Boolean) zzbclVar.zza(zzbceVar2)).booleanValue() && map.containsKey("sc") && ((String) map.get("sc")).equals("0")) ? false : true;
        if (((Boolean) zzbclVar.zza(zzbcn.zzmt)).booleanValue() && map.containsKey("ig_cl") && ((String) map.get("ig_cl")).equals("true")) {
            str = str2;
            z2 = true;
        } else {
            str = str2;
            z2 = false;
        }
        if ("expand".equalsIgnoreCase(str3)) {
            if (zzcfkVar.zzaF()) {
                agd.b("Cannot expand WebView that is already expanded.");
                return;
            } else {
                zzbkdVar.l(false);
                ((zzcgu) evoVar).zzaL(zzbkd.zzf(map), zzbkd.zzb(map), z5);
                return;
            }
        }
        if ("webapp".equalsIgnoreCase(str3)) {
            zzbkdVar.l(false);
            boolean z6 = ((Boolean) zzbclVar.zza(zzbcn.zzlD)).booleanValue() && Objects.equals(map.get("is_allowed_for_lock_screen"), "1");
            if (str != null) {
                ((zzcgu) evoVar).zzaN(zzbkd.zzf(map), zzbkd.zzb(map), str, z5, z6);
                return;
            } else {
                ((zzcgu) evoVar).zzaM(zzbkd.zzf(map), zzbkd.zzb(map), (String) map.get("html"), (String) map.get("baseurl"), z5);
                return;
            }
        }
        boolean z7 = z5;
        if ("chrome_custom_tab".equalsIgnoreCase(str3)) {
            Context context = zzcfkVar.getContext();
            if (((Boolean) zzbclVar.zza(zzbcn.zzeH)).booleanValue()) {
                agd.e("User opt out chrome custom tab.");
                zzbkdVar.o(10);
            } else {
                if (!((Boolean) zzbclVar.zza(zzbcn.zzeF)).booleanValue()) {
                    z4 = zzbdo.zzg(context);
                } else if (eab.c(context) != null) {
                    z4 = true;
                }
                if (z4) {
                    boolean z8 = z;
                    String str5 = str4;
                    zzbkdVar.l(true);
                    if (TextUtils.isEmpty(str)) {
                        agd.b("Cannot open browser with null or empty url");
                        zzbkdVar.o(7);
                        return;
                    }
                    Uri j = zzbkd.j(zzbkd.i(zzcfkVar.getContext(), zzcfkVar.zzI(), Uri.parse(str), zzcfkVar.zzF(), zzcfkVar.zzi(), zzcfkVar.zzS()));
                    if (z8 && zzedpVar != null && zzbkdVar.m(evoVar, zzcfkVar.getContext(), j.toString(), str5)) {
                        return;
                    }
                    zzbkdVar.h = new egs(zzbkdVar);
                    ((zzcgu) evoVar).zzaJ(new etg(null, j.toString(), null, null, null, null, null, null, new bpp(zzbkdVar.h), true), z7, z2);
                    return;
                }
                zzbkdVar.o(4);
            }
            map.put("use_first_package", "true");
            map.put("use_running_process", "true");
            zzbkdVar.k(evoVar, map, z, str4, z7, z2);
            return;
        }
        boolean z9 = z;
        String str6 = str4;
        if ("app".equalsIgnoreCase(str3) && "true".equalsIgnoreCase((String) map.get("system_browser"))) {
            zzbkdVar.k(evoVar, map, z9, str6, z7, z2);
            return;
        }
        if ("open_app".equalsIgnoreCase(str3)) {
            if (((Boolean) zzbclVar.zza(zzbcn.zzhS)).booleanValue()) {
                zzbkdVar.l(true);
                String str7 = (String) map.get("p");
                if (str7 == null) {
                    agd.b("Package name missing from open app action.");
                    return;
                }
                if (z9 && zzedpVar != null && zzbkdVar.m(evoVar, zzcfkVar.getContext(), str7, str6)) {
                    return;
                }
                PackageManager packageManager = zzcfkVar.getContext().getPackageManager();
                if (packageManager == null) {
                    agd.b("Cannot get package manager from open app action.");
                    return;
                }
                Intent launchIntentForPackage = packageManager.getLaunchIntentForPackage(str7);
                if (launchIntentForPackage != null) {
                    ((zzcgu) evoVar).zzaJ(new etg(launchIntentForPackage, zzbkdVar.h), z7, z2);
                    return;
                }
                return;
            }
            return;
        }
        zzbkdVar.l(true);
        String str8 = (String) map.get("intent_url");
        Intent intent = null;
        if (!TextUtils.isEmpty(str8)) {
            try {
                intent = Intent.parseUri(str8, 0);
            } catch (URISyntaxException e2) {
                agd.f("Error parsing the url: ".concat(String.valueOf(str8)), e2);
            }
        }
        Intent intent2 = intent;
        if (intent2 != null && intent2.getData() != null) {
            Uri data = intent2.getData();
            if (!Uri.EMPTY.equals(data)) {
                Uri j2 = zzbkd.j(zzbkd.i(zzcfkVar.getContext(), zzcfkVar.zzI(), data, zzcfkVar.zzF(), zzcfkVar.zzi(), zzcfkVar.zzS()));
                if (!TextUtils.isEmpty(intent2.getType())) {
                    if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzhT)).booleanValue()) {
                        intent2.setDataAndType(j2, intent2.getType());
                    }
                }
                intent2.setData(j2);
            }
        }
        boolean z10 = ((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzil)).booleanValue() && "intent_async".equalsIgnoreCase(str3) && map.containsKey("event_id");
        HashMap hashMap = new HashMap();
        if (z10) {
            zzbkdVar.h = new cri(z7, evoVar, hashMap, map);
            z3 = false;
        } else {
            z3 = z7;
        }
        if (intent2 != null) {
            if (!z9 || zzedpVar == null || !zzbkdVar.m(evoVar, zzcfkVar.getContext(), intent2.getData().toString(), str6)) {
                ((zzcgu) evoVar).zzaJ(new etg(intent2, zzbkdVar.h), z3, z2);
                return;
            } else {
                if (z10) {
                    hashMap.put((String) map.get("event_id"), Boolean.TRUE);
                    ((zzbmm) evoVar).zzd("openIntentAsync", hashMap);
                    return;
                }
                return;
            }
        }
        String uri = !TextUtils.isEmpty(str) ? zzbkd.j(zzbkd.i(zzcfkVar.getContext(), zzcfkVar.zzI(), Uri.parse(str), zzcfkVar.zzF(), zzcfkVar.zzi(), zzcfkVar.zzS())).toString() : str;
        if (!z9 || zzedpVar == null || !zzbkdVar.m(evoVar, zzcfkVar.getContext(), uri, str6)) {
            ((zzcgu) evoVar).zzaJ(new etg((String) map.get("i"), uri, (String) map.get("m"), (String) map.get("p"), (String) map.get("c"), (String) map.get("f"), (String) map.get("e"), zzbkdVar.h), z3, z2);
        } else if (z10) {
            hashMap.put((String) map.get("event_id"), Boolean.TRUE);
            ((zzbmm) evoVar).zzd("openIntentAsync", hashMap);
        }
    }
}
