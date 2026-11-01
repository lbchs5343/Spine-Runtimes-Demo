package g;

import android.net.Uri;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.text.TextUtils;
import android.view.View;
import com.google.android.gms.internal.ads.zzavc;
import com.google.android.gms.internal.ads.zzavd;
import com.google.android.gms.internal.ads.zzbcn;
import com.google.android.gms.internal.ads.zzbzl;
import com.google.android.gms.internal.ads.zzffs;
import com.google.android.gms.internal.ads.zzfxd;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final /* synthetic */ class cao implements Callable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Object f12558a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f12559b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f12560c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f12561d;

    public /* synthetic */ cao(Object obj, Object obj2, Object obj3, int i) {
        this.f12559b = i;
        this.f12560c = obj;
        this.f12561d = obj2;
        this.f12558a = obj3;
    }

    private final Object e() {
        agh aghVar;
        tq tqVar = (tq) this.f12560c;
        dzt dztVar = (dzt) this.f12561d;
        czw czwVar = (czw) this.f12558a;
        try {
            if (!tqVar.aj()) {
                hm hmVar = hm.SERVICE_CONNECTION_NOT_READY;
                ejd ejdVar = edc.n;
                tqVar.ag(hmVar, 3, ejdVar);
                dztVar.q(ejdVar);
                return null;
            }
            if (TextUtils.isEmpty(czwVar.f13826a)) {
                int i = gbs.f17875a;
                hm hmVar2 = hm.EMPTY_PURCHASE_TOKEN;
                ejd ejdVar2 = edc.q;
                tqVar.ag(hmVar2, 3, ejdVar2);
                dztVar.q(ejdVar2);
                return null;
            }
            if (!tqVar.f20060f) {
                hm hmVar3 = hm.API_VERSION_NOT_V9;
                ejd ejdVar3 = edc.h;
                tqVar.ag(hmVar3, 3, ejdVar3);
                dztVar.q(ejdVar3);
                return null;
            }
            synchronized (tqVar.k) {
                aghVar = tqVar.s;
            }
            if (aghVar == null) {
                ejd ejdVar4 = edc.n;
                hm hmVar4 = hm.SERVICE_RESET_TO_NULL;
                int i2 = gbs.f17875a;
                tqVar.an(hmVar4, 3, ejdVar4, cgl.b(null));
                dztVar.q(ejdVar4);
                return null;
            }
            String packageName = tqVar.aa.getPackageName();
            String str = czwVar.f13826a;
            String str2 = tqVar.y;
            String str3 = tqVar.f20061g;
            long longValue = tqVar.w.longValue();
            int i3 = gbs.f17875a;
            Bundle bundle = new Bundle();
            gbs.g(longValue, bundle, str2, str3);
            Bundle n = ((eaw) aghVar).n(packageName, str, bundle);
            dztVar.q(edc.s(gbs.e(n, "BillingClient"), gbs.f(n, "BillingClient")));
            return null;
        } catch (DeadObjectException e2) {
            ejd ejdVar5 = edc.n;
            hm hmVar5 = hm.ACKNOWLEDGE_PURCHASE_SERVICE_CALL_EXCEPTION;
            int i4 = gbs.f17875a;
            tqVar.an(hmVar5, 3, ejdVar5, cgl.b(e2));
            dztVar.q(ejdVar5);
            return null;
        } catch (Exception e3) {
            ejd ejdVar6 = edc.f15337a;
            hm hmVar6 = hm.ACKNOWLEDGE_PURCHASE_SERVICE_CALL_EXCEPTION;
            int i5 = gbs.f17875a;
            tqVar.an(hmVar6, 3, ejdVar6, cgl.b(e3));
            dztVar.q(ejdVar6);
            return null;
        }
    }

    private final Object f() {
        dsg dsgVar;
        agh aghVar;
        tq tqVar = (tq) this.f12560c;
        emr emrVar = (emr) this.f12561d;
        aoy aoyVar = (aoy) this.f12558a;
        Exception exc = null;
        if (!tqVar.aj()) {
            hm hmVar = hm.SERVICE_CONNECTION_NOT_READY;
            ejd ejdVar = edc.n;
            tqVar.ag(hmVar, 7, ejdVar);
            duz duzVar = fkz.f16953g;
            fun funVar = fun.f17435a;
            gkr gkrVar = (gkr) emrVar.n;
            if (ejdVar == null || ejdVar.f15636a != 0) {
                gkrVar.o(ejdVar != null ? cdy.j(ejdVar.f15636a) : 1322);
                return null;
            }
            if (!acw.u(funVar)) {
                duz listIterator = funVar.listIterator(0);
                while (listIterator.hasNext()) {
                    x xVar = (x) listIterator.next();
                    if ("a".equals(xVar.h)) {
                        gkrVar.i(xVar);
                        return null;
                    }
                }
            }
            gkrVar.o(1992);
            return null;
        }
        if (!tqVar.f20055ab) {
            int i = gbs.f17875a;
            hm hmVar2 = hm.PRODUCT_DETAILS_NOT_SUPPORTED;
            ejd ejdVar2 = edc.f15339c;
            tqVar.ag(hmVar2, 7, ejdVar2);
            duz duzVar2 = fkz.f16953g;
            fun funVar2 = fun.f17435a;
            gkr gkrVar2 = (gkr) emrVar.n;
            if (ejdVar2 == null || ejdVar2.f15636a != 0) {
                gkrVar2.o(ejdVar2 != null ? cdy.j(ejdVar2.f15636a) : 1322);
                return null;
            }
            if (!acw.u(funVar2)) {
                duz listIterator2 = funVar2.listIterator(0);
                while (listIterator2.hasNext()) {
                    x xVar2 = (x) listIterator2.next();
                    if ("a".equals(xVar2.h)) {
                        gkrVar2.i(xVar2);
                        return null;
                    }
                }
            }
            gkrVar2.o(1992);
            return null;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ((bjy) ((fkz) aoyVar.h).get(0)).getClass();
        fkz fkzVar = (fkz) aoyVar.h;
        int size = fkzVar.size();
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                dsgVar = new dsg(0, "", arrayList, arrayList2);
                break;
            }
            int i3 = i2 + 20;
            ArrayList arrayList3 = new ArrayList(fkzVar.subList(i2, i3 > size ? size : i3));
            ArrayList<String> arrayList4 = new ArrayList<>();
            int size2 = arrayList3.size();
            for (int i4 = 0; i4 < size2; i4++) {
                ((bjy) arrayList3.get(i4)).getClass();
                arrayList4.add("a");
            }
            Bundle bundle = new Bundle();
            bundle.putStringArrayList("ITEM_ID_LIST", arrayList4);
            String str = tqVar.y;
            bundle.putString("playBillingLibraryVersion", str);
            try {
                synchronized (tqVar.k) {
                    aghVar = tqVar.s;
                }
                if (aghVar == null) {
                    dsgVar = tqVar.be(edc.n, hm.SERVICE_RESET_TO_NULL, exc);
                    break;
                }
                if (tqVar.p) {
                    tqVar.z.getClass();
                }
                tqVar.av();
                tqVar.av();
                tqVar.av();
                tqVar.av();
                Bundle p = ((eaw) aghVar).p(true != tqVar.x ? 17 : 20, tqVar.aa.getPackageName(), "inapp", bundle, gbs.c(str, tqVar.f20061g, arrayList3, new cuf(16), tqVar.w.longValue()));
                if (p == null) {
                    dsgVar = tqVar.be(edc.j, hm.NULL_BUNDLE_FROM_GET_SKU_DETAILS_SERVICE_CALL, null);
                    break;
                }
                if (p.containsKey("DETAILS_LIST")) {
                    ArrayList<String> stringArrayList = p.getStringArrayList("DETAILS_LIST");
                    if (stringArrayList == null) {
                        dsgVar = tqVar.be(edc.j, hm.NULL_DETAILS_LIST_IN_GET_SKU_DETAILS_RESPONSE, null);
                        break;
                    }
                    ArrayList arrayList5 = new ArrayList();
                    int size3 = stringArrayList.size();
                    int i5 = 0;
                    while (i5 < size3) {
                        try {
                            x xVar3 = new x(stringArrayList.get(i5));
                            gbs.i("BillingClient", "Got product details: ".concat(xVar3.toString()));
                            arrayList5.add(xVar3);
                            i5++;
                            fkzVar = fkzVar;
                        } catch (JSONException e2) {
                            dsgVar = tqVar.be(edc.s(6, "Error trying to decode SkuDetails."), hm.ERROR_DECODING_SKU_DETAILS, e2);
                        }
                    }
                    fkz fkzVar2 = fkzVar;
                    ArrayList<String> stringArrayList2 = p.getStringArrayList("UNFETCHED_PRODUCT_LIST");
                    new ArrayList();
                    try {
                        ArrayList arrayList6 = new ArrayList();
                        if (stringArrayList2 == null) {
                            Iterator it = arrayList3.iterator();
                            while (it.hasNext()) {
                                bjy bjyVar = (bjy) it.next();
                                Iterator it2 = arrayList5.iterator();
                                while (true) {
                                    if (!it2.hasNext()) {
                                        JSONObject jSONObject = new JSONObject();
                                        bjyVar.getClass();
                                        arrayList6.add(new va(jSONObject.put("productId", "a").put("type", "inapp").put("statusCode", 0).toString()));
                                        break;
                                    }
                                    x xVar4 = (x) it2.next();
                                    bjyVar.getClass();
                                    if (!"a".equals(xVar4.h) || !"inapp".equals(xVar4.f20260b)) {
                                    }
                                }
                            }
                        } else {
                            Iterator<String> it3 = stringArrayList2.iterator();
                            while (it3.hasNext()) {
                                va vaVar = new va(it3.next());
                                gbs.i("BillingClient", "Got unfetchedProduct: ".concat(vaVar.toString()));
                                arrayList6.add(vaVar);
                            }
                        }
                        arrayList.addAll(arrayList5);
                        arrayList2.addAll(arrayList6);
                        i2 = i3;
                        fkzVar = fkzVar2;
                        exc = null;
                    } catch (JSONException e3) {
                        dsgVar = tqVar.be(edc.s(6, "Error trying to decode SkuDetails."), hm.ERROR_DECODING_SKU_DETAILS, e3);
                    }
                } else {
                    int e4 = gbs.e(p, "BillingClient");
                    String f2 = gbs.f(p, "BillingClient");
                    dsgVar = e4 != 0 ? tqVar.be(edc.s(e4, f2), hm.BILLING_RESULT_RECEIVED_FROM_PHONESKY, null) : tqVar.be(edc.s(6, f2), hm.MISSING_DETAILS_LIST_IN_GET_SKU_DETAILS_RESPONSE, null);
                }
            } catch (DeadObjectException e5) {
                dsgVar = tqVar.be(edc.n, hm.GET_SKU_DETAILS_SERVICE_CALL_EXCEPTION, e5);
            } catch (Exception e6) {
                dsgVar = tqVar.be(edc.f15337a, hm.GET_SKU_DETAILS_SERVICE_CALL_EXCEPTION, e6);
            }
        }
        ejd s = edc.s(dsgVar.f14707d, (String) dsgVar.f14705b);
        ArrayList arrayList7 = (ArrayList) dsgVar.f14704a;
        gkr gkrVar3 = (gkr) emrVar.n;
        int i6 = s.f15636a;
        if (i6 != 0) {
            gkrVar3.o(cdy.j(i6));
            return null;
        }
        if (!acw.u(arrayList7)) {
            Iterator it4 = arrayList7.iterator();
            while (it4.hasNext()) {
                x xVar5 = (x) it4.next();
                if ("a".equals(xVar5.h)) {
                    gkrVar3.i(xVar5);
                    return null;
                }
            }
        }
        gkrVar3.o(1992);
        return null;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        zzffs zzffsVar;
        Bundle h;
        agh aghVar;
        switch (this.f12559b) {
            case 0:
                return e();
            case 1:
                der derVar = (der) this.f12560c;
                Uri uri = (Uri) this.f12561d;
                bjq bjqVar = (bjq) this.f12558a;
                derVar.getClass();
                try {
                    uri = (!((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzlI)).booleanValue() || (zzffsVar = derVar.v) == null) ? derVar.p.zza(uri, derVar.ae, (View) bpp.b(bjqVar), null) : zzffsVar.zza(uri, derVar.ae, (View) bpp.b(bjqVar), null);
                } catch (zzavd unused) {
                    zzfxd zzfxdVar = agd.f10175a;
                }
                if (uri.getQueryParameter("ms") != null) {
                    return uri;
                }
                throw new Exception("Failed to append spam signals to click url.");
            case 2:
                der derVar2 = (der) this.f12560c;
                zzbzl zzbzlVar = (zzbzl) this.f12561d;
                return derVar2.aq(derVar2.ae, zzbzlVar.zza, zzbzlVar.zzb, zzbzlVar.zzc, zzbzlVar.zzd, (Bundle) this.f12558a);
            case 3:
                der derVar3 = (der) this.f12560c;
                List<Uri> list = (List) this.f12561d;
                bjq bjqVar2 = (bjq) this.f12558a;
                zzavc zzavcVar = derVar3.p;
                String zzh = zzavcVar.zzc() != null ? zzavcVar.zzc().zzh(derVar3.ae, (View) bpp.b(bjqVar2), null) : "";
                if (TextUtils.isEmpty(zzh)) {
                    throw new Exception("Failed to get view signals.");
                }
                ArrayList arrayList = new ArrayList();
                for (Uri uri2 : list) {
                    if (der.ao(uri2, derVar3.i, derVar3.aa)) {
                        arrayList.add(der.am(uri2, "ms", zzh));
                    } else {
                        agd.b("Not a Google URL: ".concat(String.valueOf(uri2)));
                        arrayList.add(uri2);
                    }
                }
                if (arrayList.isEmpty()) {
                    throw new Exception("Empty impression URLs result.");
                }
                return arrayList;
            case 4:
                return f();
            case 5:
                emr.t(((sq) this.f12560c).f20003e, bme.BANNER, (awn) this.f12561d, (ii) this.f12558a);
                return Boolean.TRUE;
            default:
                tq tqVar = (tq) this.f12560c;
                String str = (String) this.f12561d;
                String str2 = (String) this.f12558a;
                try {
                    synchronized (tqVar.k) {
                        aghVar = tqVar.s;
                    }
                    return aghVar == null ? gbs.h(edc.n, hm.SERVICE_RESET_TO_NULL) : ((eaw) aghVar).b(tqVar.aa.getPackageName(), str, str2);
                } catch (DeadObjectException e2) {
                    ejd ejdVar = edc.n;
                    hm hmVar = hm.LAUNCH_BILLING_FLOW_EXCEPTION;
                    String b2 = cgl.b(e2);
                    h = gbs.h(ejdVar, hmVar);
                    if (b2 != null) {
                        h.putString("ADDITIONAL_LOG_DETAILS", b2);
                    }
                    return h;
                } catch (Exception e3) {
                    ejd ejdVar2 = edc.f15337a;
                    hm hmVar2 = hm.LAUNCH_BILLING_FLOW_EXCEPTION;
                    String b3 = cgl.b(e3);
                    h = gbs.h(ejdVar2, hmVar2);
                    if (b3 != null) {
                        h.putString("ADDITIONAL_LOG_DETAILS", b3);
                    }
                    return h;
                }
        }
    }
}
