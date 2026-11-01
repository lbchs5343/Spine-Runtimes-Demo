package g;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.android.billingclient.api.Purchase;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.ArrayList;
import org.json.JSONException;

/* loaded from: classes3.dex */
public abstract class gbs {

    /* renamed from: a, reason: collision with root package name */
    public static final int f17875a = Runtime.getRuntime().availableProcessors();

    public static Purchase b(String str, String str2) {
        if (str == null || str2 == null) {
            i("BillingHelper", "Received a null purchase data.");
            return null;
        }
        try {
            return new Purchase(str, str2);
        } catch (JSONException e2) {
            "Got JSONException while parsing purchase data: ".concat(e2.toString());
            return null;
        }
    }

    public static Bundle c(String str, String str2, ArrayList arrayList, cuf cufVar, long j) {
        Bundle bundle = new Bundle();
        g(j, bundle, str, str2);
        bundle.putBoolean("enablePendingPurchases", true);
        bundle.putString("SKU_DETAILS_RESPONSE_FORMAT", "PRODUCT_DETAILS");
        duz duzVar = fkz.f16953g;
        Object[] objArr = {"subs", "inapp"};
        bff.ai(2, objArr);
        bundle.putStringArrayList("PRODUCT_TYPES_TO_RETURN_MULTIPLE_OFFERS", new ArrayList<>(fkz.m(2, objArr)));
        Object[] objArr2 = {"inapp"};
        bff.ai(1, objArr2);
        bundle.putStringArrayList("PRODUCT_TYPES_TO_RETURN_RENT_OFFERS", new ArrayList<>(fkz.m(1, objArr2)));
        bundle.putBoolean("SHOULD_RETURN_UNFETCHED_PRODUCTS", true);
        ArrayList<String> arrayList2 = new ArrayList<>();
        ArrayList<String> arrayList3 = new ArrayList<>();
        ArrayList<String> arrayList4 = new ArrayList<>();
        int size = arrayList.size();
        boolean z = false;
        boolean z2 = false;
        for (int i = 0; i < size; i++) {
            bjy bjyVar = (bjy) arrayList.get(i);
            arrayList2.add(null);
            z |= !TextUtils.isEmpty(null);
            arrayList4.add(null);
            z2 |= !TextUtils.isEmpty(null);
            bjyVar.getClass();
        }
        if (z) {
            bundle.putStringArrayList("SKU_OFFER_ID_TOKEN_LIST", arrayList2);
        }
        if (!arrayList3.isEmpty()) {
            bundle.putStringArrayList("SKU_SERIALIZED_DOCID_LIST", arrayList3);
        }
        if (!TextUtils.isEmpty(null)) {
            bundle.putString("accountName", null);
        }
        if (z2) {
            bundle.putStringArrayList("SKU_DYNAMIC_PRODUCT_TOKEN_LIST", arrayList4);
        }
        return bundle;
    }

    public static ejd d(Intent intent, String str) {
        if (intent == null) {
            gvg d2 = ejd.d();
            d2.f18813e = 6;
            d2.f18811c = "An internal error occurred.";
            return d2.h();
        }
        gvg d3 = ejd.d();
        d3.f18813e = e(intent.getExtras(), str);
        d3.f18811c = f(intent.getExtras(), str);
        return d3.h();
    }

    public static int e(Bundle bundle, String str) {
        if (bundle == null) {
            return 6;
        }
        Object obj = bundle.get("RESPONSE_CODE");
        if (obj == null) {
            i(str, "getResponseCodeFromBundle() got null response code, assuming OK");
            return 0;
        }
        if (obj instanceof Integer) {
            return ((Integer) obj).intValue();
        }
        "Unexpected type for bundle response code: ".concat(obj.getClass().getName());
        return 6;
    }

    public static String f(Bundle bundle, String str) {
        if (bundle == null) {
            return "";
        }
        Object obj = bundle.get("DEBUG_MESSAGE");
        if (obj == null) {
            i(str, "getDebugMessageFromBundle() got null response code, assuming OK");
            return "";
        }
        if (obj instanceof String) {
            return (String) obj;
        }
        "Unexpected type for debug message: ".concat(obj.getClass().getName());
        return "";
    }

    public static void g(long j, Bundle bundle, String str, String str2) {
        bundle.putString("playBillingLibraryVersion", str);
        if (str2 != null) {
            bundle.putString("playBillingLibraryWrapperVersion", str2);
        }
        bundle.putLong("billingClientSessionId", j);
    }

    public static Bundle h(ejd ejdVar, hm hmVar) {
        Bundle bundle = new Bundle();
        bundle.putInt("RESPONSE_CODE", ejdVar.f15636a);
        bundle.putString("DEBUG_MESSAGE", ejdVar.f15638c);
        bundle.putInt("LOG_REASON", hmVar.zza());
        return bundle;
    }

    public static void i(String str, String str2) {
        if (!Log.isLoggable(str, 2) || str2.isEmpty()) {
            return;
        }
        int i = 40000;
        while (!str2.isEmpty() && i > 0) {
            int min = Math.min(str2.length(), Math.min(TTAdConstant.INIT_LOCAL_FAIL_CODE, i));
            str2.substring(0, min);
            str2 = str2.substring(min);
            i -= min;
        }
    }
}
