package g;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class ebl {

    /* renamed from: d, reason: collision with root package name */
    public final dnb f15244d;

    /* renamed from: b, reason: collision with root package name */
    public static final AtomicReference f15242b = new AtomicReference();

    /* renamed from: c, reason: collision with root package name */
    public static final AtomicReference f15243c = new AtomicReference();

    /* renamed from: a, reason: collision with root package name */
    public static final AtomicReference f15241a = new AtomicReference();

    public ebl(dnb dnbVar) {
        this.f15244d = dnbVar;
    }

    public static final String e(String str, String[] strArr, String[] strArr2, AtomicReference atomicReference) {
        String str2;
        ckd.k(atomicReference);
        ckd.u(strArr.length == strArr2.length);
        for (int i = 0; i < strArr.length; i++) {
            Object obj = strArr[i];
            if (str == obj || str.equals(obj)) {
                synchronized (atomicReference) {
                    try {
                        String[] strArr3 = (String[]) atomicReference.get();
                        if (strArr3 == null) {
                            strArr3 = new String[strArr2.length];
                            atomicReference.set(strArr3);
                        }
                        str2 = strArr3[i];
                        if (str2 == null) {
                            str2 = strArr2[i] + "(" + strArr[i] + ")";
                            strArr3[i] = str2;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return str2;
            }
        }
        return str;
    }

    public final String f(String str) {
        if (str == null) {
            return null;
        }
        return !this.f15244d.c() ? str : e(str, dyd.q, dyd.i, f15242b);
    }

    public final String g(String str) {
        if (str == null) {
            return null;
        }
        return !this.f15244d.c() ? str : e(str, egh.f15483g, egh.f15482f, f15243c);
    }

    public final String h(Object[] objArr) {
        if (objArr == null) {
            return "[]";
        }
        StringBuilder o = awf.o("[");
        for (Object obj : objArr) {
            String j = obj instanceof Bundle ? j((Bundle) obj) : String.valueOf(obj);
            if (j != null) {
                if (o.length() != 1) {
                    o.append(", ");
                }
                o.append(j);
            }
        }
        o.append("]");
        return o.toString();
    }

    public final String i(String str) {
        if (str == null) {
            return null;
        }
        return !this.f15244d.c() ? str : str.startsWith("_exp_") ? tn.ad("experiment_id(", str, ")") : e(str, byh.f12442a, byh.l, f15241a);
    }

    public final String j(Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        if (!this.f15244d.c()) {
            return bundle.toString();
        }
        StringBuilder o = awf.o("Bundle[{");
        for (String str : bundle.keySet()) {
            if (o.length() != 8) {
                o.append(", ");
            }
            o.append(g(str));
            o.append("=");
            Object obj = bundle.get(str);
            o.append(obj instanceof Bundle ? h(new Object[]{obj}) : obj instanceof Object[] ? h((Object[]) obj) : obj instanceof ArrayList ? h(((ArrayList) obj).toArray()) : String.valueOf(obj));
        }
        o.append("}]");
        return o.toString();
    }

    public final String k(ctf ctfVar) {
        dnb dnbVar = this.f15244d;
        if (!dnbVar.c()) {
            return ctfVar.toString();
        }
        StringBuilder sb = new StringBuilder("origin=");
        sb.append(ctfVar.zzc);
        sb.append(",name=");
        sb.append(f(ctfVar.zza));
        sb.append(",params=");
        cde cdeVar = ctfVar.zzb;
        sb.append(cdeVar == null ? null : !dnbVar.c() ? cdeVar.toString() : j(cdeVar.zzc()));
        return sb.toString();
    }
}
