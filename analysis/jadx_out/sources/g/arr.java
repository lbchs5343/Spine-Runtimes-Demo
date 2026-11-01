package g;

import android.text.TextUtils;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

/* loaded from: classes3.dex */
public final class arr extends ctw {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ dqu f10728a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public arr(dqu dquVar) {
        super(20);
        this.f10728a = dquVar;
    }

    @Override // g.ctw
    public final Object b(Object obj) {
        clv clvVar;
        String str = (String) obj;
        ckd.bf(str);
        dqu dquVar = this.f10728a;
        dquVar.n();
        ckd.bf(str);
        if (TextUtils.isEmpty(str) || (clvVar = (clv) dquVar.q.get(str)) == null || clvVar.j() == 0) {
            return null;
        }
        if (!dquVar.q.containsKey(str) || dquVar.q.get(str) == null) {
            dquVar.ao(str);
        } else {
            dquVar.as(str, (clv) dquVar.q.get(str));
        }
        arr arrVar = dquVar.o;
        arrVar.getClass();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        synchronized (((cuf) arrVar.i)) {
            Set<Map.Entry> entrySet = ((LinkedHashMap) ((aoy) arrVar.f13504f).h).entrySet();
            bff.e(entrySet, "map.entries");
            for (Map.Entry entry : entrySet) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        return (eqg) linkedHashMap.get(str);
    }
}
