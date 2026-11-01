package g;

import com.google.android.gms.internal.ads.zzbce;
import com.google.android.gms.internal.ads.zzbcn;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class dnt {

    /* renamed from: a, reason: collision with root package name */
    public final int f14491a;

    /* renamed from: b, reason: collision with root package name */
    public final String f14492b;

    /* renamed from: c, reason: collision with root package name */
    public final String f14493c;

    /* renamed from: d, reason: collision with root package name */
    public final int f14494d;

    /* renamed from: e, reason: collision with root package name */
    public final String f14495e;

    /* renamed from: f, reason: collision with root package name */
    public final String f14496f;

    /* renamed from: g, reason: collision with root package name */
    public final boolean f14497g;

    public dnt(String str, String str2, String str3, int i, String str4, int i2, boolean z) {
        this.f14493c = str;
        this.f14495e = str2;
        this.f14496f = str3;
        this.f14491a = i;
        this.f14492b = str4;
        this.f14494d = i2;
        this.f14497g = z;
    }

    public final JSONObject h() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("adapterClassName", this.f14493c);
        jSONObject.put("version", this.f14496f);
        zzbce zzbceVar = zzbcn.zziV;
        edt edtVar = edt.f15376a;
        if (((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue()) {
            jSONObject.put("sdkVersion", this.f14495e);
        }
        jSONObject.put("status", this.f14491a);
        jSONObject.put("description", this.f14492b);
        jSONObject.put("initializationLatencyMillis", this.f14494d);
        if (((Boolean) edtVar.f15379d.zza(zzbcn.zziW)).booleanValue()) {
            jSONObject.put("supportsInitialization", this.f14497g);
        }
        return jSONObject;
    }
}
