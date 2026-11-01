package ms.bz.bd.c.Pgl;

import java.util.ArrayList;
import java.util.List;
import ms.bz.bd.c.Pgl.pblb;
import org.json.JSONArray;

/* loaded from: classes.dex */
final class e extends pblb.pgla {
    @Override // ms.bz.bd.c.Pgl.pblb.pgla
    public final Object a(Object obj, String str) {
        o0 g2 = o0.g(pgla.f21199a.f21200b);
        synchronized (g2) {
            try {
                StringBuilder sb = new StringBuilder();
                int size = g2.f21180c.size();
                if (size <= 0) {
                    return null;
                }
                try {
                    ArrayList arrayList = g2.f21180c;
                    int i = size - 50;
                    if (i <= 0) {
                        i = 0;
                    }
                    List<JSONArray> subList = arrayList.subList(i, size);
                    if (subList.size() > 0) {
                        for (JSONArray jSONArray : subList) {
                            if (jSONArray != null) {
                                sb.append(jSONArray.get(0).toString());
                                sb.append((String) pblk.a(16777217, 0, 0L, "637284", new byte[]{107}));
                                sb.append(jSONArray.get(1).toString());
                                sb.append((String) pblk.a(16777217, 0, 0L, "26fe22", new byte[]{111}));
                                sb.append(jSONArray.get(2).toString());
                                sb.append((String) pblk.a(16777217, 0, 0L, "5fc132", new byte[]{56}));
                            }
                        }
                    }
                    if (sb.length() > 0) {
                        sb.delete(sb.length() - 1, sb.length());
                    }
                } catch (Throwable unused) {
                }
                return sb.toString();
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
