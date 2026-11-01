package g;

import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class ezz {

    /* renamed from: c, reason: collision with root package name */
    public final ezz f16446c;

    /* renamed from: d, reason: collision with root package name */
    public final int f16447d;

    /* renamed from: e, reason: collision with root package name */
    public final String f16448e;

    /* renamed from: f, reason: collision with root package name */
    public final String f16449f;

    public ezz(int i, String str, String str2, ezz ezzVar) {
        this.f16447d = i;
        this.f16448e = str;
        this.f16449f = str2;
        this.f16446c = ezzVar;
    }

    public JSONObject b() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("Code", this.f16447d);
        jSONObject.put("Message", this.f16448e);
        jSONObject.put("Domain", this.f16449f);
        ezz ezzVar = this.f16446c;
        if (ezzVar == null) {
            jSONObject.put("Cause", "null");
            return jSONObject;
        }
        jSONObject.put("Cause", ezzVar.b());
        return jSONObject;
    }

    public int g() {
        return this.f16447d;
    }

    public final abz h() {
        abz abzVar;
        ezz ezzVar = this.f16446c;
        if (ezzVar == null) {
            abzVar = null;
        } else {
            abzVar = new abz(ezzVar.f16447d, ezzVar.f16448e, ezzVar.f16449f, null, null);
        }
        return new abz(this.f16447d, this.f16448e, this.f16449f, abzVar, null);
    }

    public String toString() {
        try {
            return b().toString(2);
        } catch (JSONException unused) {
            return "Error forming toString output.";
        }
    }
}
