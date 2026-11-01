package g;

import android.service.quicksettings.TileService;
import android.text.TextUtils;
import com.android.billingclient.api.Purchase;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class efc implements eoy {

    /* renamed from: a, reason: collision with root package name */
    public static final HashSet f15420a = new HashSet();

    /* renamed from: b, reason: collision with root package name */
    public fpd f15421b;

    /* renamed from: c, reason: collision with root package name */
    public cdy f15422c;

    /* renamed from: d, reason: collision with root package name */
    public tq f15423d;

    /* renamed from: e, reason: collision with root package name */
    public String f15424e;

    public final void f(ejd ejdVar, List list, String str, btp btpVar) {
        int i;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        boolean z = false;
        if (ejdVar != null && (((i = ejdVar.f15636a) == 0 || i == 7) && list != null)) {
            Iterator it = list.iterator();
            boolean z2 = false;
            while (it.hasNext()) {
                Purchase purchase = (Purchase) it.next();
                if (purchase != null) {
                    JSONObject jSONObject = purchase.f411c;
                    if (jSONObject.optInt("purchaseState", 1) != 4) {
                        ArrayList arrayList = new ArrayList();
                        if (jSONObject.has("productIds")) {
                            JSONArray optJSONArray = jSONObject.optJSONArray("productIds");
                            if (optJSONArray != null) {
                                for (int i2 = 0; i2 < optJSONArray.length(); i2++) {
                                    arrayList.add(optJSONArray.optString(i2));
                                }
                            }
                        } else if (jSONObject.has("productId")) {
                            arrayList.add(jSONObject.optString("productId"));
                        }
                        if (arrayList.contains(str)) {
                            f15420a.add(str);
                            cro.af(this.f15422c, "p" + str, true);
                            if (btpVar != null) {
                                btpVar.i(null);
                            }
                            if (!jSONObject.optBoolean("acknowledged", true)) {
                                tq tqVar = this.f15423d;
                                String optString = jSONObject.optString(TileService.EXTRA_TOKEN, jSONObject.optString("purchaseToken"));
                                if (optString == null) {
                                    throw new IllegalArgumentException("Purchase token must be set");
                                }
                                czw czwVar = new czw();
                                czwVar.f13826a = optString;
                                tqVar.aq(czwVar, new ffr(5, this, purchase, false));
                            }
                            z2 = true;
                        } else {
                            continue;
                        }
                    } else {
                        continue;
                    }
                }
            }
            z = z2;
        }
        if (z) {
            return;
        }
        int j = ejdVar == null ? 1240 : cdy.j(ejdVar.f15636a);
        if (btpVar != null) {
            btpVar.o(j);
        }
    }
}
