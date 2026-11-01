package g;

import android.text.TextUtils;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class va {

    /* renamed from: a, reason: collision with root package name */
    public final int f20134a;

    /* renamed from: b, reason: collision with root package name */
    public final String f20135b;

    /* renamed from: c, reason: collision with root package name */
    public final String f20136c;

    /* renamed from: d, reason: collision with root package name */
    public final String f20137d;

    public va(String str) {
        this.f20135b = str;
        JSONObject jSONObject = new JSONObject(str);
        this.f20136c = jSONObject.optString("productId");
        String optString = jSONObject.optString("type");
        this.f20137d = optString;
        this.f20134a = jSONObject.has("statusCode") ? jSONObject.optInt("statusCode") : 0;
        if (TextUtils.isEmpty(optString)) {
            throw new IllegalArgumentException("Product type cannot be empty.");
        }
        jSONObject.optString("serializedDocid");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof va) {
            return TextUtils.equals(this.f20135b, ((va) obj).f20135b);
        }
        return false;
    }

    public final int hashCode() {
        return this.f20135b.hashCode();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("UnfetchedProduct{productId='");
        sb.append(this.f20136c);
        sb.append("', productType='");
        sb.append(this.f20137d);
        sb.append("', statusCode=");
        return awf.x(sb, this.f20134a, "}");
    }
}
