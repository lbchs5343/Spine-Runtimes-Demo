package g;

import android.text.TextUtils;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class x {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f20259a;

    /* renamed from: b, reason: collision with root package name */
    public final String f20260b;

    /* renamed from: c, reason: collision with root package name */
    public final String f20261c;

    /* renamed from: d, reason: collision with root package name */
    public final String f20262d;

    /* renamed from: e, reason: collision with root package name */
    public final String f20263e;

    /* renamed from: f, reason: collision with root package name */
    public final ArrayList f20264f;

    /* renamed from: g, reason: collision with root package name */
    public final JSONObject f20265g;
    public final String h;
    public final String i;

    public x(String str) {
        this.f20262d = str;
        JSONObject jSONObject = new JSONObject(str);
        this.f20265g = jSONObject;
        String optString = jSONObject.optString("productId");
        this.h = optString;
        String optString2 = jSONObject.optString("type");
        this.f20260b = optString2;
        if (TextUtils.isEmpty(optString)) {
            throw new IllegalArgumentException("Product id cannot be empty.");
        }
        if (TextUtils.isEmpty(optString2)) {
            throw new IllegalArgumentException("Product type cannot be empty.");
        }
        this.f20261c = jSONObject.optString(abn.EXTRA_TITLE);
        jSONObject.optString(abn.EXTRA_UA_APP_NAME);
        jSONObject.optString("description");
        jSONObject.optString("packageDisplayName");
        jSONObject.optString("iconUrl");
        this.f20263e = jSONObject.optString("skuDetailsToken");
        this.i = jSONObject.optString("serializedDocid");
        JSONArray optJSONArray = jSONObject.optJSONArray("subscriptionOfferDetails");
        if (optJSONArray != null) {
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < optJSONArray.length(); i++) {
                JSONObject jSONObject2 = optJSONArray.getJSONObject(i);
                gpu gpuVar = new gpu(9);
                jSONObject2.optString("basePlanId");
                jSONObject2.optString("offerId").getClass();
                jSONObject2.getString("offerIdToken");
                JSONArray jSONArray = jSONObject2.getJSONArray("pricingPhases");
                ArrayList arrayList2 = new ArrayList();
                if (jSONArray != null) {
                    for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                        JSONObject optJSONObject = jSONArray.optJSONObject(i2);
                        if (optJSONObject != null) {
                            arrayList2.add(new fbc(optJSONObject));
                        }
                    }
                }
                JSONObject optJSONObject2 = jSONObject2.optJSONObject("installmentPlanDetails");
                if (optJSONObject2 != null) {
                    optJSONObject2.getInt("commitmentPaymentsCount");
                    optJSONObject2.optInt("subsequentCommitmentPaymentsCount");
                }
                JSONObject optJSONObject3 = jSONObject2.optJSONObject("transitionPlanDetails");
                if (optJSONObject3 != null) {
                    optJSONObject3.getString("productId");
                    optJSONObject3.optString(abn.EXTRA_TITLE);
                    optJSONObject3.optString(abn.EXTRA_UA_APP_NAME);
                    optJSONObject3.optString("description");
                    optJSONObject3.optString("basePlanId");
                    JSONObject optJSONObject4 = optJSONObject3.optJSONObject("pricingPhase");
                    if (optJSONObject4 != null) {
                        optJSONObject4.optString("billingPeriod");
                        optJSONObject4.optString("priceCurrencyCode");
                        optJSONObject4.optString("formattedPrice");
                        optJSONObject4.optLong("priceAmountMicros");
                        optJSONObject4.optInt("recurrenceMode");
                        optJSONObject4.optInt("billingCycleCount");
                    }
                }
                ArrayList arrayList3 = new ArrayList();
                JSONArray optJSONArray2 = jSONObject2.optJSONArray("offerTags");
                if (optJSONArray2 != null) {
                    for (int i3 = 0; i3 < optJSONArray2.length(); i3++) {
                        arrayList3.add(optJSONArray2.getString(i3));
                    }
                }
                arrayList.add(gpuVar);
            }
            this.f20259a = arrayList;
        } else {
            this.f20259a = (optString2.equals("subs") || optString2.equals("play_pass_subs")) ? new ArrayList() : null;
        }
        JSONObject optJSONObject5 = this.f20265g.optJSONObject("oneTimePurchaseOfferDetails");
        JSONArray optJSONArray3 = this.f20265g.optJSONArray("oneTimePurchaseOfferDetailsList");
        ArrayList arrayList4 = new ArrayList();
        if (optJSONArray3 != null) {
            for (int i4 = 0; i4 < optJSONArray3.length(); i4++) {
                arrayList4.add(new dzn(optJSONArray3.getJSONObject(i4)));
            }
            this.f20264f = arrayList4;
            return;
        }
        if (optJSONObject5 == null) {
            this.f20264f = null;
        } else {
            arrayList4.add(new dzn(optJSONObject5));
            this.f20264f = arrayList4;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof x) {
            return TextUtils.equals(this.f20262d, ((x) obj).f20262d);
        }
        return false;
    }

    public final int hashCode() {
        return this.f20262d.hashCode();
    }

    public final dzn j() {
        ArrayList arrayList = this.f20264f;
        if (arrayList == null || arrayList.isEmpty()) {
            return null;
        }
        return (dzn) arrayList.get(0);
    }

    public final String toString() {
        String obj = this.f20265g.toString();
        String valueOf = String.valueOf(this.f20259a);
        StringBuilder sb = new StringBuilder("ProductDetails{jsonString='");
        awf.y(sb, this.f20262d, "', parsedJson=", obj, ", productId='");
        sb.append(this.h);
        sb.append("', productType='");
        sb.append(this.f20260b);
        sb.append("', title='");
        sb.append(this.f20261c);
        sb.append("', productDetailsToken='");
        return awf.r(sb, this.f20263e, "', subscriptionOfferDetails=", valueOf, "}");
    }
}
