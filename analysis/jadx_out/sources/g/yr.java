package g;

import java.util.UUID;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class yr implements Comparable, Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final coi f20363a = coi.NORMAL;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f20364b;

    public yr(String str) {
        this.f20364b = str;
        UUID.randomUUID().toString();
        String.valueOf(System.nanoTime());
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        yr yrVar = (yr) obj;
        coi coiVar = this.f20363a;
        if (coiVar.b() < yrVar.f20363a.b()) {
            return 1;
        }
        return coiVar.b() > yrVar.f20363a.b() ? -1 : 0;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            dcq dcqVar = new dcq(22);
            dcqVar.j("data", this.f20364b);
            dcqVar.j("userdefine", 1);
            if (duw.f14862a == null) {
                throw new IllegalArgumentException("CrashContextAssembly not init");
            }
            dcq t = duw.f14862a.t(azu.CUSTOM_JAVA, dcqVar);
            bnc c2 = bnc.c();
            JSONObject jSONObject = (JSONObject) t.f13976f;
            c2.getClass();
            if (jSONObject != null && jSONObject.length() != 0) {
                new com.bytedance.sdk.component.o.p.ox(new dyn(11, jSONObject), "hreadExecutor").start();
            }
        } catch (Throwable unused) {
        }
    }
}
