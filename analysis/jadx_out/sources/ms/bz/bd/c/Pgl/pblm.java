package ms.bz.bd.c.Pgl;

import ms.bz.bd.c.Pgl.pblb;
import org.json.JSONObject;

/* loaded from: classes.dex */
public abstract class pblm extends pblb.pgla {

    /* renamed from: g, reason: collision with root package name */
    public static pblm f21188g;

    public static class pgla {

        /* renamed from: a, reason: collision with root package name */
        public long f21189a;

        /* renamed from: b, reason: collision with root package name */
        public String f21190b;

        public final void c(String str, int i) {
            pblm pblmVar;
            synchronized (pblm.class) {
                pblmVar = pblm.f21188g;
            }
            if (pblmVar == null) {
                return;
            }
            long currentTimeMillis = System.currentTimeMillis();
            long j = this.f21189a;
            pblmVar.f(currentTimeMillis - j, j, this.f21190b, str, i);
        }

        public final void d(String str, int i) {
            pblm pblmVar;
            synchronized (pblm.class) {
                pblmVar = pblm.f21188g;
            }
            if (pblmVar == null) {
                return;
            }
            long currentTimeMillis = System.currentTimeMillis();
            long j = this.f21189a;
            pblmVar.c(currentTimeMillis - j, j, this.f21190b, str, i);
        }
    }

    @Override // ms.bz.bd.c.Pgl.pblb.pgla
    public final Object b(int i, int i2, long j, String str, Object obj) {
        if (i == 131073) {
            if (str != null && e(str)) {
                return (String) pblk.a(16777217, 0, 0L, "27b714", new byte[]{12, 30});
            }
        } else if (i == 131074) {
            String[] strArr = (String[]) obj;
            if (str != null && strArr != null && strArr.length != 0) {
                d(str, new JSONObject(strArr[0]), new JSONObject(strArr[1]), new JSONObject(strArr[2]));
            }
        }
        return null;
    }

    public abstract void c(long j, long j2, String str, String str2, int i);

    public abstract void d(String str, JSONObject jSONObject, JSONObject jSONObject2, JSONObject jSONObject3);

    public abstract boolean e(String str);

    public abstract void f(long j, long j2, String str, String str2, int i);
}
