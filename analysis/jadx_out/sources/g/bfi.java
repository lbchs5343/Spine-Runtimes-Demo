package g;

import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class bfi extends ezz {

    /* renamed from: a, reason: collision with root package name */
    public final bof f11447a;

    public bfi(int i, String str, String str2, ezz ezzVar, bof bofVar) {
        super(i, str, str2, ezzVar);
        this.f11447a = bofVar;
    }

    @Override // g.ezz
    public final JSONObject b() {
        JSONObject b2 = super.b();
        bof bofVar = this.f11447a;
        if (bofVar == null) {
            b2.put("Response Info", "null");
            return b2;
        }
        b2.put("Response Info", bofVar.d());
        return b2;
    }

    @Override // g.ezz
    public final String toString() {
        try {
            return b().toString(2);
        } catch (JSONException unused) {
            return "Error forming toString output.";
        }
    }
}
