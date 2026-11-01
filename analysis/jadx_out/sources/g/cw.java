package g;

import android.graphics.Canvas;
import android.os.Build;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.UUID;
import org.json.JSONObject;

/* loaded from: classes.dex */
public abstract class cw {

    /* renamed from: a, reason: collision with root package name */
    public Object f13613a;

    /* renamed from: b, reason: collision with root package name */
    public Object f13614b;

    /* renamed from: c, reason: collision with root package name */
    public final Serializable f13615c;

    public cw(dlv dlvVar, JSONObject jSONObject) {
        this.f13613a = jSONObject;
        this.f13614b = dlvVar;
        this.f13615c = jSONObject.optString("type");
        i();
    }

    public cw(Class cls) {
        UUID randomUUID = UUID.randomUUID();
        bff.e(randomUUID, "randomUUID()");
        this.f13613a = randomUUID;
        String uuid = ((UUID) this.f13613a).toString();
        bff.e(uuid, "id.toString()");
        this.f13614b = new fkj(uuid, (gys) null, cls.getName(), (String) null, (dwa) null, (dwa) null, 0L, 0L, 0L, (bho) null, 0, (ay) null, 0L, 0L, 0L, 0L, false, (ahc) null, 0, 0L, 0, 0, (String) null, 16777210);
        String[] strArr = {cls.getName()};
        LinkedHashSet linkedHashSet = new LinkedHashSet(fhj.av(1));
        linkedHashSet.add(strArr[0]);
        this.f13615c = linkedHashSet;
    }

    public abstract void d(int i, int i2);

    public abstract void e(Canvas canvas);

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v3, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r7v4, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r7v6, types: [java.util.ArrayList] */
    public dze f() {
        ?? bj;
        dze h = h();
        bho bhoVar = ((fkj) this.f13614b).r;
        int i = Build.VERSION.SDK_INT;
        boolean z = (i >= 24 && bhoVar.l()) || bhoVar.f11594d || bhoVar.i || (i >= 23 && bhoVar.f11593c);
        fkj fkjVar = (fkj) this.f13614b;
        if (fkjVar.s) {
            if (z) {
                throw new IllegalArgumentException("Expedited jobs only support network and storage constraints");
            }
            if (fkjVar.w > 0) {
                throw new IllegalArgumentException("Expedited jobs cannot be delayed");
            }
        }
        if (fkjVar.v == null) {
            String str = fkjVar.u;
            String[] strArr = {"."};
            bff.p(str, "<this>");
            String str2 = strArr[0];
            if (str2.length() == 0) {
                fgr fgrVar = new fgr(new jl(str, new cnl(1, fuv.bf(strArr))));
                bj = new ArrayList(bkk.a(fgrVar));
                Iterator it = fgrVar.iterator();
                while (true) {
                    fdz fdzVar = (fdz) it;
                    if (!fdzVar.hasNext()) {
                        break;
                    }
                    gex gexVar = (gex) fdzVar.next();
                    bff.p(gexVar, "range");
                    bj.add(str.subSequence(gexVar.f17256b, gexVar.f17257c + 1).toString());
                }
            } else {
                bj = dcv.bj(str, str2);
            }
            String str3 = bj.size() == 1 ? (String) bj.get(0) : (String) gsv.bg(bj);
            if (str3.length() > 127) {
                str3 = dcv.bu(TTDownloadField.CALL_DOWNLOAD_MODEL_SET_EXTRA_VALUE, str3);
            }
            fkjVar.v = str3;
        }
        UUID randomUUID = UUID.randomUUID();
        bff.e(randomUUID, "randomUUID()");
        this.f13613a = randomUUID;
        String uuid = randomUUID.toString();
        bff.e(uuid, "id.toString()");
        fkj fkjVar2 = (fkj) this.f13614b;
        bff.p(fkjVar2, "other");
        this.f13614b = new fkj(uuid, fkjVar2.q, fkjVar2.u, fkjVar2.f16930e, new dwa(fkjVar2.f16932g), new dwa(fkjVar2.l), fkjVar2.w, fkjVar2.f16926a, fkjVar2.p, new bho(fkjVar2.r), fkjVar2.f16927b, fkjVar2.f16931f, fkjVar2.o, fkjVar2.f16929d, fkjVar2.f16928c, fkjVar2.n, fkjVar2.s, fkjVar2.x, fkjVar2.m, fkjVar2.i, fkjVar2.j, fkjVar2.k, fkjVar2.v, 524288);
        return h;
    }

    public abstract ArrayList g();

    public abstract dze h();

    public abstract void i();
}
