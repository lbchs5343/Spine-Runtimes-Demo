package g;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.internal.ads.zzbce;
import com.google.android.gms.internal.ads.zzbcn;
import com.google.android.gms.internal.ads.zzfxd;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final /* synthetic */ class fyu implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f17670a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ gfk f17671b;

    public /* synthetic */ fyu(gfk gfkVar, int i) {
        this.f17670a = i;
        this.f17671b = gfkVar;
    }

    private final void c() {
        gfk gfkVar = this.f17671b;
        ti tiVar = ti.f20033a;
        bkm bkmVar = tiVar.f20040g;
        Context context = gfkVar.f18037f;
        String str = gfkVar.f18034c;
        String str2 = gfkVar.f18036e;
        bkmVar.getClass();
        zzbce zzbceVar = zzbcn.zzeK;
        edt edtVar = edt.f15376a;
        String i = bkm.i(context, bkmVar.k(context, (String) edtVar.f15379d.zza(zzbceVar), str, str2).toString(), str2);
        if (TextUtils.isEmpty(i)) {
            agd.c("Not linked for in app preview.");
        } else {
            try {
                JSONObject jSONObject = new JSONObject(i.trim());
                String optString = jSONObject.optString("gct");
                bkmVar.f11740d = jSONObject.optString("status");
                if (((Boolean) edtVar.f15379d.zza(zzbcn.zziO)).booleanValue()) {
                    boolean z = "0".equals(bkmVar.f11740d) || "2".equals(bkmVar.f11740d);
                    bkmVar.l(z);
                    ((cmo) tiVar.f20034ab.zzi()).bc(!z ? "" : str);
                }
                synchronized (bkmVar.f11739c) {
                    bkmVar.f11742f = optString;
                }
                if ("2".equals(bkmVar.f11740d)) {
                    agd.c("Creative is not pushed for this device.");
                    bkm.h(context, "There was no creative pushed from DFP to the device.", false, false);
                    return;
                } else if ("1".equals(bkmVar.f11740d)) {
                    agd.c("The app is not linked for creative preview.");
                    bkmVar.p(context, str, str2);
                    return;
                } else {
                    if ("0".equals(bkmVar.f11740d)) {
                        agd.c("Device is linked for in app preview.");
                        bkm.h(context, "The device is successfully linked for creative preview.", false, true);
                        return;
                    }
                    return;
                }
            } catch (JSONException unused) {
                zzfxd zzfxdVar = agd.f10175a;
            }
        }
        bkm.h(context, "In-app preview failed to load because of a system error. Please try again later.", true, true);
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f17670a) {
            case 0:
                gfk gfkVar = this.f17671b;
                gfkVar.q(gfkVar.f18037f);
                return;
            case 1:
                gfk gfkVar2 = this.f17671b;
                bkm bkmVar = ti.f20033a.f20040g;
                String str = gfkVar2.f18034c;
                String str2 = gfkVar2.f18036e;
                String str3 = gfkVar2.f18038g;
                boolean j = bkmVar.j();
                Context context = gfkVar2.f18037f;
                boolean n = bkmVar.n(context, str, str2);
                synchronized (bkmVar.f11739c) {
                    bkmVar.f11737a = n;
                }
                if (!bkmVar.j()) {
                    bkmVar.p(context, str, str2);
                    return;
                }
                if (!j && !TextUtils.isEmpty(str3)) {
                    bkmVar.q(context, str2, str3, str);
                }
                agd.c("Device is linked for debug signals.");
                bkm.h(context, "The device is successfully linked for troubleshooting.", false, true);
                return;
            case 2:
                gfk gfkVar3 = this.f17671b;
                gfkVar3.l = 4;
                gfkVar3.p();
                return;
            case 3:
                c();
                return;
            case 4:
                gfk gfkVar4 = this.f17671b;
                gfkVar4.getClass();
                ti.f20033a.f20040g.m(gfkVar4.f18037f);
                return;
            case 5:
                gfk gfkVar5 = this.f17671b;
                gfkVar5.q(gfkVar5.f18037f);
                return;
            default:
                gfk gfkVar6 = this.f17671b;
                gfkVar6.getClass();
                ti.f20033a.f20040g.m(gfkVar6.f18037f);
                return;
        }
    }
}
