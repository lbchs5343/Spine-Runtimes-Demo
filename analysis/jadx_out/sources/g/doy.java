package g;

import android.text.TextUtils;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class doy implements faq {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f14558a;

    /* renamed from: b, reason: collision with root package name */
    public final String f14559b;

    public /* synthetic */ doy(String str, int i) {
        this.f14558a = i;
        this.f14559b = str;
    }

    public static Object c(String[] strArr, int i, JSONObject jSONObject) {
        Object opt;
        if (strArr != null && strArr.length > 0 && i < strArr.length && jSONObject != null) {
            String str = strArr[i];
            int indexOf = str.indexOf("[");
            int indexOf2 = str.indexOf("]");
            if (indexOf < 0 || indexOf2 < 0 || indexOf > indexOf2) {
                opt = jSONObject.opt(str);
            } else {
                String substring = str.substring(0, indexOf);
                try {
                    int parseInt = Integer.parseInt(str.substring(indexOf + 1, indexOf2));
                    Object opt2 = jSONObject.opt(substring);
                    opt = opt2 instanceof JSONArray ? ((JSONArray) opt2).opt(parseInt) : null;
                } catch (NumberFormatException e2) {
                    e2.printStackTrace();
                    return null;
                }
            }
            if (i == strArr.length - 1) {
                return opt;
            }
            if (opt instanceof String) {
                try {
                    return c(strArr, i + 1, new JSONObject((String) opt));
                } catch (JSONException e3) {
                    e3.printStackTrace();
                    return opt;
                }
            }
            if (opt instanceof JSONObject) {
                return c(strArr, i + 1, (JSONObject) opt);
            }
        }
        return null;
    }

    @Override // g.faq
    public final String d() {
        switch (this.f14558a) {
            case 0:
                return this.f14559b;
            default:
                return awf.ad(new StringBuilder("'"), this.f14559b, "'");
        }
    }

    @Override // g.faq
    public final axb dq() {
        switch (this.f14558a) {
            case 0:
                return gt.ox;
            default:
                return gt.iw;
        }
    }

    @Override // g.faq
    public final Object dq(Map map) {
        switch (this.f14558a) {
            case 0:
                if (map == null || map.size() <= 0) {
                    return null;
                }
                JSONObject jSONObject = (JSONObject) map.get("default_key");
                String str = this.f14559b;
                Object c2 = TextUtils.isEmpty(str) ? null : c(str.split("\\."), 0, jSONObject);
                if (c2 == JSONObject.NULL) {
                    return null;
                }
                return c2;
            default:
                return this.f14559b;
        }
    }

    public final String toString() {
        switch (this.f14558a) {
            case 0:
                return awf.ad(new StringBuilder("VariableNode [literals="), this.f14559b, "]");
            default:
                return d();
        }
    }
}
