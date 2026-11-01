package g;

import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.LiveConfigKey;
import com.google.android.gms.measurement.internal.AppMeasurementDynamiteService;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class gf implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f18011a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f18012b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f18013c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f18014d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ boolean f18015e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f18016f;

    public gf(eoa eoaVar, boolean z, Uri uri, String str, String str2) {
        this.f18014d = 1;
        this.f18016f = eoaVar;
        this.f18015e = z;
        this.f18013c = uri;
        this.f18011a = str;
        this.f18012b = str2;
    }

    public /* synthetic */ gf(Object obj, Object obj2, String str, String str2, boolean z, int i) {
        this.f18014d = i;
        this.f18016f = obj;
        this.f18013c = obj2;
        this.f18011a = str;
        this.f18012b = str2;
        this.f18015e = z;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x00c5 A[Catch: RuntimeException -> 0x00a3, TRY_ENTER, TryCatch #0 {RuntimeException -> 0x00a3, blocks: (B:8:0x004b, B:14:0x00c5, B:16:0x00d0, B:19:0x00dd, B:21:0x00e3, B:22:0x00fd, B:23:0x0106, B:27:0x010e, B:30:0x0127, B:31:0x013a, B:33:0x012e, B:34:0x014e, B:36:0x0154, B:38:0x015a, B:40:0x0160, B:42:0x0166, B:44:0x016e, B:46:0x0176, B:48:0x017c, B:51:0x018e, B:55:0x0064, B:57:0x006a, B:59:0x0070, B:61:0x0076, B:63:0x007c, B:65:0x0084, B:67:0x008c, B:69:0x0094, B:70:0x00a6, B:72:0x00b6), top: B:7:0x004b }] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x010c  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x010e A[Catch: RuntimeException -> 0x00a3, TryCatch #0 {RuntimeException -> 0x00a3, blocks: (B:8:0x004b, B:14:0x00c5, B:16:0x00d0, B:19:0x00dd, B:21:0x00e3, B:22:0x00fd, B:23:0x0106, B:27:0x010e, B:30:0x0127, B:31:0x013a, B:33:0x012e, B:34:0x014e, B:36:0x0154, B:38:0x015a, B:40:0x0160, B:42:0x0166, B:44:0x016e, B:46:0x0176, B:48:0x017c, B:51:0x018e, B:55:0x0064, B:57:0x006a, B:59:0x0070, B:61:0x0076, B:63:0x007c, B:65:0x0084, B:67:0x008c, B:69:0x0094, B:70:0x00a6, B:72:0x00b6), top: B:7:0x004b }] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void run() {
        Bundle aq;
        boolean z;
        String str;
        switch (this.f18014d) {
            case 0:
                dbb ao = ((cyg) ((csp) this.f18016f).z).ao();
                AtomicReference atomicReference = (AtomicReference) this.f18013c;
                ao._e();
                ao.zza();
                ao.s(new egw(ao, atomicReference, this.f18011a, this.f18012b, ao.q(false), this.f18015e));
                break;
            case 1:
                eoa eoaVar = (eoa) this.f18016f;
                Uri uri = (Uri) this.f18013c;
                String str2 = this.f18012b;
                csp cspVar = (csp) eoaVar.f15883b;
                bzv bzvVar = cspVar.k;
                cyg cygVar = (cyg) cspVar.z;
                cspVar._e();
                try {
                    dkq dkqVar = cygVar.m;
                    cyg.ai(dkqVar);
                    if (!TextUtils.isEmpty(str2)) {
                        if (str2.contains("gclid") || str2.contains("utm_campaign") || str2.contains("utm_source") || str2.contains("utm_medium") || str2.contains("utm_id") || str2.contains("dclid") || str2.contains("srsltid")) {
                            aq = dkqVar.aq(Uri.parse("https://google.com/search?".concat(str2)));
                            if (aq != null) {
                                aq.putString("_cis", "referrer");
                            }
                            z = this.f18015e;
                            String str3 = this.f18011a;
                            if (z) {
                                dkq dkqVar2 = cygVar.m;
                                cyg.ai(dkqVar2);
                                Bundle aq2 = dkqVar2.aq(uri);
                                if (aq2 != null) {
                                    aq2.putString("_cis", "intent");
                                    if (aq2.containsKey("gclid") || aq == null || !aq.containsKey("gclid")) {
                                        str = "Activity created with data 'referrer' without required params";
                                    } else {
                                        str = "Activity created with data 'referrer' without required params";
                                        aq2.putString("_cer", "gclid=" + aq.getString("gclid"));
                                    }
                                    cspVar.au(str3, "_cmp", aq2);
                                    bzvVar.f(str3, aq2);
                                    if (!TextUtils.isEmpty(str2)) {
                                        bgm bgmVar = cygVar.z;
                                        cyg.ak(bgmVar);
                                        bgmVar.o.i(str2, "Activity created with referrer");
                                        if (!cygVar.f13747e.g(null, gad.bw)) {
                                            if (!str2.contains("gclid") || (!str2.contains("utm_campaign") && !str2.contains("utm_source") && !str2.contains("utm_medium") && !str2.contains("utm_term") && !str2.contains("utm_content"))) {
                                                bgm bgmVar2 = cygVar.z;
                                                cyg.ak(bgmVar2);
                                                bgmVar2.o.h(str);
                                                break;
                                            } else if (!TextUtils.isEmpty(str2)) {
                                                cygVar.f13743ab.getClass();
                                                cspVar.az(LiveConfigKey.AUTO, "_ldl", str2, true, System.currentTimeMillis());
                                                break;
                                            }
                                        } else {
                                            if (aq != null) {
                                                cspVar.au(str3, "_cmp", aq);
                                                bzvVar.f(str3, aq);
                                            } else {
                                                bgm bgmVar3 = cygVar.z;
                                                cyg.ak(bgmVar3);
                                                bgmVar3.o.i(str2, "Referrer does not contain valid parameters");
                                            }
                                            cygVar.f13743ab.getClass();
                                            cspVar.az(LiveConfigKey.AUTO, "_ldl", null, true, System.currentTimeMillis());
                                            break;
                                        }
                                    } else {
                                        break;
                                    }
                                }
                            }
                            str = "Activity created with data 'referrer' without required params";
                            if (!TextUtils.isEmpty(str2)) {
                            }
                        } else {
                            bgm bgmVar4 = ((cyg) dkqVar.z).z;
                            cyg.ak(bgmVar4);
                            bgmVar4.o.h("Activity created with data 'referrer' without required params");
                        }
                    }
                    aq = null;
                    z = this.f18015e;
                    String str32 = this.f18011a;
                    if (z) {
                    }
                    str = "Activity created with data 'referrer' without required params";
                    if (!TextUtils.isEmpty(str2)) {
                    }
                } catch (RuntimeException e2) {
                    bgm bgmVar5 = cygVar.z;
                    cyg.ak(bgmVar5);
                    bgmVar5.f11518b.i(e2, "Throwable caught in handleReferrerForOnActivityCreated");
                    return;
                }
                break;
            default:
                dbb ao2 = ((AppMeasurementDynamiteService) this.f18016f).f8992a.ao();
                brv brvVar = (brv) this.f18013c;
                ao2._e();
                ao2.zza();
                ao2.s(new egw(ao2, this.f18011a, this.f18012b, ao2.q(false), this.f18015e, brvVar));
                break;
        }
    }
}
