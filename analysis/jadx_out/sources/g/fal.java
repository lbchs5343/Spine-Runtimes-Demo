package g;

import android.content.Context;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.service.quicksettings.TileService;
import android.text.TextUtils;
import android.webkit.WebSettings;
import com.android.billingclient.api.Purchase;
import com.google.android.gms.internal.ads.zzbcn;
import com.google.android.gms.internal.ads.zzbec;
import com.google.android.gms.internal.ads.zzbwa;
import com.google.android.gms.internal.ads.zzbwb;
import com.google.android.gms.internal.ads.zzbwe;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.List;
import java.util.WeakHashMap;
import java.util.concurrent.Callable;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class fal implements Callable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f16471a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f16472b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f16473c;

    public /* synthetic */ fal(int i, Object obj, Object obj2, boolean z) {
        this.f16471a = i;
        this.f16472b = obj;
        this.f16473c = obj2;
    }

    public fal(tq tqVar, fdy fdyVar) {
        this.f16471a = 1;
        this.f16472b = fdyVar;
        Objects.requireNonNull(tqVar);
        this.f16473c = tqVar;
    }

    public /* synthetic */ fal(Object obj, int i, Object obj2) {
        this.f16471a = i;
        this.f16473c = obj;
        this.f16472b = obj2;
    }

    /* JADX WARN: Removed duplicated region for block: B:69:0x028c  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0356  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0362  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0286 A[SYNTHETIC] */
    @Override // java.util.concurrent.Callable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object call() {
        Exception exc;
        gtb ak;
        List list;
        agh aghVar;
        ejd h;
        hm hmVar;
        hm hmVar2;
        zzbwb zza;
        SharedPreferences sharedPreferences;
        Exception exc2 = null;
        boolean z = true;
        switch (this.f16471a) {
            case 0:
                Cursor ag = ((gg) this.f16473c).h.ag((fcg) this.f16472b);
                try {
                    Boolean valueOf = ag.moveToFirst() ? Boolean.valueOf(ag.getInt(0) != 0) : Boolean.FALSE;
                    ag.close();
                    return valueOf;
                } catch (Throwable th) {
                    ag.close();
                    throw th;
                }
            case 1:
                tq tqVar = (tq) this.f16473c;
                if (!tqVar.aj()) {
                    hm hmVar3 = hm.SERVICE_CONNECTION_NOT_READY;
                    ejd ejdVar = edc.n;
                    tqVar.ag(hmVar3, 9, ejdVar);
                    fdy fdyVar = (fdy) this.f16472b;
                    duz duzVar = fkz.f16953g;
                    fdyVar.i(ejdVar, fun.f17435a);
                } else {
                    if (!TextUtils.isEmpty("inapp")) {
                        gbs.i("BillingClient", "Querying owned items, item type: ".concat("inapp"));
                        ArrayList arrayList = new ArrayList();
                        boolean z2 = tqVar.f20060f;
                        tqVar.z.getClass();
                        tqVar.z.getClass();
                        long longValue = tqVar.w.longValue();
                        Bundle bundle = new Bundle();
                        gbs.g(longValue, bundle, tqVar.y, tqVar.f20061g);
                        if (z2) {
                            bundle.putBoolean("enablePendingPurchases", true);
                        }
                        String str = null;
                        while (true) {
                            try {
                                synchronized (tqVar.k) {
                                    try {
                                        aghVar = tqVar.s;
                                    } catch (Throwable th2) {
                                        th = th2;
                                        exc = exc2;
                                        while (true) {
                                            try {
                                                try {
                                                    throw th;
                                                } catch (DeadObjectException e2) {
                                                    e = e2;
                                                    ak = tqVar.ak(edc.n, hm.GET_PURCHASE_SERVICE_CALL_EXCEPTION, e);
                                                    list = (List) ak.f18714d;
                                                    if (list != null) {
                                                    }
                                                } catch (Exception e3) {
                                                    e = e3;
                                                    ak = tqVar.ak(edc.f15337a, hm.GET_PURCHASE_SERVICE_CALL_EXCEPTION, e);
                                                    list = (List) ak.f18714d;
                                                    if (list != null) {
                                                    }
                                                }
                                            } catch (Throwable th3) {
                                                th = th3;
                                            }
                                        }
                                    }
                                }
                                if (aghVar == null) {
                                    ak = tqVar.ak(edc.n, hm.SERVICE_RESET_TO_NULL, exc2);
                                } else {
                                    Bundle l = tqVar.f20060f ? ((eaw) aghVar).l(tqVar.n ? 26 : tqVar.m ? 24 : tqVar.p ? 19 : 9, tqVar.aa.getPackageName(), str, bundle) : ((eaw) aghVar).m(tqVar.aa.getPackageName(), str);
                                    ejd ejdVar2 = edc.f15337a;
                                    if (l == null) {
                                        int i = gbs.f17875a;
                                        hmVar = hm.NULL_OWNED_ITEMS_LIST;
                                    } else {
                                        int e4 = gbs.e(l, "BillingClient");
                                        String f2 = gbs.f(l, "BillingClient");
                                        gvg d2 = ejd.d();
                                        d2.f18813e = e4;
                                        d2.f18811c = f2;
                                        h = d2.h();
                                        if (e4 != 0) {
                                            hmVar2 = hm.BILLING_RESULT_RECEIVED_FROM_PHONESKY;
                                        } else if (l.containsKey("INAPP_PURCHASE_ITEM_LIST") && l.containsKey("INAPP_PURCHASE_DATA_LIST") && l.containsKey("INAPP_DATA_SIGNATURE_LIST")) {
                                            ArrayList<String> stringArrayList = l.getStringArrayList("INAPP_PURCHASE_ITEM_LIST");
                                            ArrayList<String> stringArrayList2 = l.getStringArrayList("INAPP_PURCHASE_DATA_LIST");
                                            ArrayList<String> stringArrayList3 = l.getStringArrayList("INAPP_DATA_SIGNATURE_LIST");
                                            if (stringArrayList == null) {
                                                hmVar = hm.NULL_SKUS_LIST;
                                            } else if (stringArrayList2 == null) {
                                                hmVar = hm.NULL_PURCHASES_LIST;
                                            } else if (stringArrayList3 == null) {
                                                hmVar = hm.NULL_SIGNATURES_LIST;
                                            } else {
                                                h = edc.l;
                                                hmVar2 = hm.REASON_UNSPECIFIED;
                                            }
                                        } else {
                                            hmVar = hm.MISSING_REQUIRED_PURCHASE_KEY;
                                        }
                                        if (h == edc.l) {
                                            ak = tqVar.ak(h, hmVar2, exc2);
                                        } else {
                                            ArrayList<String> stringArrayList4 = l.getStringArrayList("INAPP_PURCHASE_ITEM_LIST");
                                            ArrayList<String> stringArrayList5 = l.getStringArrayList("INAPP_PURCHASE_DATA_LIST");
                                            ArrayList<String> stringArrayList6 = l.getStringArrayList("INAPP_DATA_SIGNATURE_LIST");
                                            exc = exc2;
                                            boolean z3 = false;
                                            for (int i2 = 0; i2 < stringArrayList5.size(); i2++) {
                                                String str2 = stringArrayList5.get(i2);
                                                String str3 = stringArrayList6.get(i2);
                                                gbs.i("BillingClient", "Sku is owned: ".concat(String.valueOf(stringArrayList4.get(i2))));
                                                try {
                                                    Purchase purchase = new Purchase(str2, str3);
                                                    JSONObject jSONObject = purchase.f411c;
                                                    if (TextUtils.isEmpty(jSONObject.optString(TileService.EXTRA_TOKEN, jSONObject.optString("purchaseToken")))) {
                                                        z3 = true;
                                                    }
                                                    arrayList.add(purchase);
                                                } catch (JSONException e5) {
                                                    ak = tqVar.ak(edc.f15337a, hm.ERROR_DECODING_PURCHASE_DATA, e5);
                                                }
                                            }
                                            if (z3) {
                                                tqVar.ag(hm.EMPTY_PURCHASE_TOKEN, 9, ejdVar2);
                                            }
                                            str = l.getString("INAPP_CONTINUATION_TOKEN");
                                            gbs.i("BillingClient", "Continuation token: ".concat(String.valueOf(str)));
                                            if (TextUtils.isEmpty(str)) {
                                                ak = new gtb(19, edc.l, arrayList, false);
                                            } else {
                                                exc2 = exc;
                                            }
                                        }
                                    }
                                    hmVar2 = hmVar;
                                    h = ejdVar2;
                                    if (h == edc.l) {
                                    }
                                }
                            } catch (DeadObjectException e6) {
                                e = e6;
                                exc = exc2;
                            } catch (Exception e7) {
                                e = e7;
                                exc = exc2;
                            }
                        }
                        exc = exc2;
                        list = (List) ak.f18714d;
                        if (list != null) {
                            ((fdy) this.f16472b).i((ejd) ak.f18712b, list);
                            return exc;
                        }
                        fdy fdyVar2 = (fdy) this.f16472b;
                        ejd ejdVar3 = (ejd) ak.f18712b;
                        duz duzVar2 = fkz.f16953g;
                        fdyVar2.i(ejdVar3, fun.f17435a);
                        return exc;
                    }
                    int i3 = gbs.f17875a;
                    hm hmVar4 = hm.EMPTY_PRODUCT_TYPE;
                    ejd ejdVar4 = edc.f15343g;
                    tqVar.ag(hmVar4, 9, ejdVar4);
                    fdy fdyVar3 = (fdy) this.f16472b;
                    duz duzVar3 = fkz.f16953g;
                    fdyVar3.i(ejdVar4, fun.f17435a);
                }
                return null;
            case 2:
                return ((ad) this.f16472b).getClickSignals((String) this.f16473c);
            case 3:
                WeakHashMap weakHashMap = ((zzbwe) this.f16473c).f5029a;
                Context context = (Context) this.f16472b;
                dwx dwxVar = (dwx) weakHashMap.get(context);
                if (dwxVar != null) {
                    long longValue2 = dwxVar.f14986a + ((Long) zzbec.zzd.zze()).longValue();
                    ti.f20033a.v.getClass();
                    if (longValue2 >= System.currentTimeMillis()) {
                        zza = new zzbwa(context, dwxVar.f14987b).zza();
                        weakHashMap.put(context, new dwx(zza));
                        return zza;
                    }
                }
                zza = new zzbwa(context).zza();
                weakHashMap.put(context, new dwx(zza));
                return zza;
            case 4:
                Context context2 = (Context) this.f16472b;
                Context context3 = (Context) this.f16473c;
                if (context2 != null) {
                    agd.e("Attempting to read user agent from Google Play Services.");
                    sharedPreferences = context2.getSharedPreferences("admob_user_agent", 0);
                    z = false;
                } else {
                    agd.e("Attempting to read user agent from local cache.");
                    sharedPreferences = context3.getSharedPreferences("admob_user_agent", 0);
                }
                String string = sharedPreferences.getString("user_agent", "");
                if (TextUtils.isEmpty(string)) {
                    agd.e("Reading user agent from WebSettings");
                    string = WebSettings.getDefaultUserAgent(context3);
                    if (z) {
                        sharedPreferences.edit().putString("user_agent", string).apply();
                        agd.e("Persisting user agent.");
                    }
                }
                return string;
            case 5:
                bsz bszVar = ((zs) this.f16473c).f20414b;
                bszVar.ay();
                ggz ggzVar = bszVar.l;
                bsz.ag(ggzVar);
                return ggzVar.bf((String) this.f16472b);
            case 6:
                return ((gvq) this.f16472b).r((Context) this.f16473c);
            case 7:
                gfx gfxVar = esy.f16117a;
                String absolutePath = ((Context) this.f16473c).getDatabasePath("com.google.android.gms.ads.db").getAbsolutePath();
                WebSettings webSettings = (WebSettings) this.f16472b;
                webSettings.setDatabasePath(absolutePath);
                webSettings.setDatabaseEnabled(true);
                webSettings.setDomStorageEnabled(true);
                webSettings.setDisplayZoomControls(false);
                webSettings.setBuiltInZoomControls(true);
                webSettings.setSupportZoom(true);
                if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzaS)).booleanValue()) {
                    webSettings.setTextZoom(100);
                }
                webSettings.setAllowContentAccess(false);
                return Boolean.TRUE;
            default:
                bsz bszVar2 = (bsz) this.f16473c;
                afh afhVar = (afh) this.f16472b;
                String str4 = afhVar.zza;
                ckd.k(str4);
                rs as = bszVar2.as(str4);
                gxx gxxVar = gxx.ANALYTICS_STORAGE;
                if (as.g(gxxVar) && rs.d(afhVar.zzv).g(gxxVar)) {
                    return bszVar2.bp(afhVar).al();
                }
                bszVar2.zzay().f11519c.h("Analytics storage consent denied. Returning null app instance id");
                return null;
        }
    }

    public void finalize() {
        switch (this.f16471a) {
            case 0:
                ((fcg) this.f16472b).p();
                break;
            default:
                super.finalize();
                break;
        }
    }
}
