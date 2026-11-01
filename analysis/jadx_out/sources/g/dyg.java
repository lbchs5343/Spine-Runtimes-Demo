package g;

import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class dyg {

    /* renamed from: a, reason: collision with root package name */
    public final uf f15085a;

    /* renamed from: b, reason: collision with root package name */
    public final ezz f15086b;

    public dyg(uf ufVar) {
        this.f15085a = ufVar;
        abz abzVar = ufVar.zzc;
        this.f15086b = abzVar == null ? null : abzVar.zza();
    }

    public final JSONObject c() {
        JSONObject jSONObject = new JSONObject();
        uf ufVar = this.f15085a;
        jSONObject.put("Adapter", ufVar.zza);
        jSONObject.put("Latency", ufVar.zzb);
        String str = ufVar.zze;
        if (str == null) {
            jSONObject.put("Ad Source Name", "null");
        } else {
            jSONObject.put("Ad Source Name", str);
        }
        String str2 = ufVar.zzf;
        if (str2 == null) {
            jSONObject.put("Ad Source ID", "null");
        } else {
            jSONObject.put("Ad Source ID", str2);
        }
        String str3 = ufVar.zzg;
        if (str3 == null) {
            jSONObject.put("Ad Source Instance Name", "null");
        } else {
            jSONObject.put("Ad Source Instance Name", str3);
        }
        String str4 = ufVar.zzh;
        if (str4 == null) {
            jSONObject.put("Ad Source Instance ID", "null");
        } else {
            jSONObject.put("Ad Source Instance ID", str4);
        }
        JSONObject jSONObject2 = new JSONObject();
        for (String str5 : ufVar.zzd.keySet()) {
            jSONObject2.put(str5, ufVar.zzd.get(str5));
        }
        jSONObject.put("Credentials", jSONObject2);
        ezz ezzVar = this.f15086b;
        if (ezzVar == null) {
            jSONObject.put("Ad Error", "null");
            return jSONObject;
        }
        jSONObject.put("Ad Error", ezzVar.b());
        return jSONObject;
    }

    public final String toString() {
        try {
            return c().toString(2);
        } catch (JSONException unused) {
            return "Error forming toString output.";
        }
    }
}
