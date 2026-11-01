package g;

import android.content.Context;
import java.nio.charset.Charset;
import java.util.Collections;
import java.util.Set;

/* loaded from: classes3.dex */
public final class crh {

    /* renamed from: a, reason: collision with root package name */
    public static volatile ab f13373a;

    /* renamed from: b, reason: collision with root package name */
    public final dwp f13374b;

    /* renamed from: c, reason: collision with root package name */
    public final cqi f13375c;

    /* renamed from: d, reason: collision with root package name */
    public final cqi f13376d;

    /* renamed from: e, reason: collision with root package name */
    public final ekr f13377e;

    public crh(cqi cqiVar, cqi cqiVar2, ekr ekrVar, dwp dwpVar, efs efsVar) {
        this.f13375c = cqiVar;
        this.f13376d = cqiVar2;
        this.f13377e = ekrVar;
        this.f13374b = dwpVar;
        efsVar.f15458b.execute(new arp(1, efsVar));
    }

    public static void f(Context context) {
        if (f13373a == null) {
            synchronized (crh.class) {
                try {
                    if (f13373a == null) {
                        cva cvaVar = new cva();
                        context.getClass();
                        cvaVar.f13569a = context;
                        f13373a = cvaVar.b();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public final fpd g(bpj bpjVar) {
        Set singleton;
        byte[] bytes;
        if (bpjVar != null) {
            ((dzj) bpjVar).getClass();
            singleton = Collections.unmodifiableSet(dzj.f15123a);
        } else {
            singleton = Collections.singleton(new cep("proto"));
        }
        fpd d2 = ku.d();
        bpjVar.getClass();
        d2.f17190f = "cct";
        dzj dzjVar = (dzj) bpjVar;
        String str = dzjVar.f15126d;
        String str2 = dzjVar.f15127e;
        if (str2 == null && str == null) {
            bytes = null;
        } else {
            if (str2 == null) {
                str2 = "";
            }
            bytes = awf.t("1$", str, "\\", str2).getBytes(Charset.forName("UTF-8"));
        }
        d2.f17187c = bytes;
        return new fpd((Object) singleton, (Object) d2.w(), (Object) this, 12, false);
    }
}
