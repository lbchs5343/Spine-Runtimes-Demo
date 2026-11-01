package g;

import android.os.RemoteException;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.utils.AVErrorInfo;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.google.android.gms.internal.ads.zzcdr;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class fup implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f17445a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f17446b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f17447c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f17448d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f17449e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f17450f;

    public fup(dbb dbbVar, AtomicReference atomicReference, String str, String str2, afh afhVar) {
        this.f17448d = 1;
        this.f17450f = dbbVar;
        this.f17446b = atomicReference;
        this.f17449e = str;
        this.f17445a = str2;
        this.f17447c = afhVar;
    }

    public /* synthetic */ fup(Object obj, String str, String str2, Object obj2, Object obj3, int i) {
        this.f17448d = i;
        this.f17449e = str;
        this.f17445a = str2;
        this.f17446b = obj2;
        this.f17447c = obj3;
        this.f17450f = obj;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // java.lang.Runnable
    public final void run() {
        char c2;
        AtomicReference atomicReference;
        dbb dbbVar;
        ake akeVar;
        switch (this.f17448d) {
            case 0:
                String str = (String) this.f17447c;
                String str2 = "internal";
                String str3 = (String) this.f17446b;
                HashMap p = tn.p("event", "precacheCanceled");
                p.put("src", this.f17449e);
                String str4 = this.f17445a;
                if (!TextUtils.isEmpty(str4)) {
                    p.put("cachedSrc", str4);
                }
                switch (str3.hashCode()) {
                    case -1947652542:
                        if (str3.equals("interrupted")) {
                            c2 = 3;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case -1396664534:
                        if (str3.equals("badUrl")) {
                            c2 = '\b';
                            break;
                        }
                        c2 = 65535;
                        break;
                    case -1347010958:
                        if (str3.equals("inProgress")) {
                            c2 = 2;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case -918817863:
                        if (str3.equals("downloadTimeout")) {
                            c2 = '\t';
                            break;
                        }
                        c2 = 65535;
                        break;
                    case -659376217:
                        if (str3.equals("contentLengthMissing")) {
                            c2 = 0;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case -642208130:
                        if (str3.equals("playerFailed")) {
                            c2 = 5;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case -354048396:
                        if (str3.equals("sizeExceeded")) {
                            c2 = 11;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case -32082395:
                        if (str3.equals("externalAbort")) {
                            c2 = '\n';
                            break;
                        }
                        c2 = 65535;
                        break;
                    case 3387234:
                        if (str3.equals("noop")) {
                            c2 = 4;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case 96784904:
                        if (str3.equals(AVErrorInfo.ERROR)) {
                            c2 = 1;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case 580119100:
                        if (str3.equals("expireFailed")) {
                            c2 = 6;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case 725497484:
                        if (str3.equals("noCacheDir")) {
                            c2 = 7;
                            break;
                        }
                        c2 = 65535;
                        break;
                    default:
                        c2 = 65535;
                        break;
                }
                switch (c2) {
                    case 6:
                    case 7:
                        str2 = "io";
                        break;
                    case '\b':
                    case '\t':
                        str2 = "network";
                        break;
                    case '\n':
                    case 11:
                        str2 = "policy";
                        break;
                }
                p.put("type", str2);
                p.put(MediationConstant.KEY_REASON, str3);
                if (!TextUtils.isEmpty(str)) {
                    p.put("message", str);
                }
                zzcdr.d((zzcdr) this.f17450f, p);
                return;
            case 1:
                synchronized (((AtomicReference) this.f17446b)) {
                    try {
                        try {
                            dbbVar = (dbb) this.f17450f;
                            akeVar = dbbVar.l;
                        } catch (RemoteException e2) {
                            bgm bgmVar = ((cyg) ((dbb) this.f17450f).z).z;
                            cyg.ak(bgmVar);
                            bgmVar.f11518b.f("(legacy) Failed to get conditional properties; remote exception", null, this.f17449e, e2);
                            ((AtomicReference) this.f17446b).set(Collections.EMPTY_LIST);
                            atomicReference = (AtomicReference) this.f17446b;
                        }
                        if (akeVar == null) {
                            bgm bgmVar2 = ((cyg) dbbVar.z).z;
                            cyg.ak(bgmVar2);
                            bgmVar2.f11518b.f("(legacy) Failed to get conditional properties; not connected to service", null, this.f17449e, this.f17445a);
                            ((AtomicReference) this.f17446b).set(Collections.EMPTY_LIST);
                            return;
                        }
                        if (TextUtils.isEmpty(null)) {
                            ((AtomicReference) this.f17446b).set(akeVar.e(this.f17449e, this.f17445a, (afh) this.f17447c));
                        } else {
                            ((AtomicReference) this.f17446b).set(akeVar.f(null, this.f17449e, this.f17445a));
                        }
                        ((dbb) this.f17450f).x();
                        atomicReference = (AtomicReference) this.f17446b;
                        atomicReference.notify();
                        return;
                    } finally {
                        ((AtomicReference) this.f17446b).notify();
                    }
                }
            default:
                afh afhVar = (afh) this.f17446b;
                String str5 = this.f17445a;
                String str6 = this.f17449e;
                brv brvVar = (brv) this.f17447c;
                dbb dbbVar2 = (dbb) this.f17450f;
                cyg cygVar = (cyg) dbbVar2.z;
                ArrayList arrayList = new ArrayList();
                try {
                    try {
                        ake akeVar2 = dbbVar2.l;
                        if (akeVar2 == null) {
                            bgm bgmVar3 = cygVar.z;
                            cyg.ak(bgmVar3);
                            bgmVar3.f11518b.e(str6, "Failed to get conditional properties; not connected to service", str5);
                        } else {
                            arrayList = dkq.k(akeVar2.e(str6, str5, afhVar));
                            dbbVar2.x();
                        }
                    } finally {
                        dkq dkqVar = cygVar.m;
                        cyg.ai(dkqVar);
                        dkqVar.bz(brvVar, arrayList);
                    }
                } catch (RemoteException e3) {
                    bgm bgmVar4 = cygVar.z;
                    cyg.ak(bgmVar4);
                    bgmVar4.f11518b.f("Failed to get conditional properties; remote exception", str6, str5, e3);
                }
                return;
        }
    }
}
